; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_readdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i32, i32, i32 }
%struct.nfsmount = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i64 0, align 8
@NFSERR_DIRBUFDROPPED = common dso_local global i32 0, align 4
@NB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_buf_readdir(%struct.nfsbuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsmount*, align 8
  %8 = alloca i32, align 4
  store %struct.nfsbuf* %0, %struct.nfsbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %10 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.nfsmount* @NFSTONMP(i32 %12)
  store %struct.nfsmount* %13, %struct.nfsmount** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %15 = call i64 @nfs_mount_gone(%struct.nfsmount* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %21 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NFS_VER4, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @nfs3_readdir_rpc(i32 %26, %struct.nfsbuf* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %35

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @nfs4_readdir_rpc(i32 %31, %struct.nfsbuf* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @NFSERR_DIRBUFDROPPED, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %44 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NB_ERROR, align 4
  %47 = call i32 @SET(i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %50 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %42, %38, %35
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.nfsmount* @NFSTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs3_readdir_rpc(i32, %struct.nfsbuf*, i32) #1

declare dso_local i32 @nfs4_readdir_rpc(i32, %struct.nfsbuf*, i32) #1

declare dso_local i32 @SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
