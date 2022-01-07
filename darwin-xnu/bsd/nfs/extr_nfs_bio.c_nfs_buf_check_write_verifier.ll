; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_check_write_verifier.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_check_write_verifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.nfsbuf = type { i64, i32 }
%struct.nfsmount = type { i64 }

@NB_NEEDCOMMIT = common dso_local global i32 0, align 4
@NB_STALEWVERF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_buf_check_write_verifier(%struct.TYPE_7__* %0, %struct.nfsbuf* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.nfsbuf*, align 8
  %5 = alloca %struct.nfsmount*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.nfsbuf* %1, %struct.nfsbuf** %4, align 8
  %6 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %7 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @NB_NEEDCOMMIT, align 4
  %10 = call i32 @ISSET(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_7__* %14)
  store %struct.nfsmount* %15, %struct.nfsmount** %5, align 8
  %16 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %17 = call i64 @nfs_mount_gone(%struct.nfsmount* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %56

20:                                               ; preds = %13
  %21 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %22 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NB_STALEWVERF, align 4
  %25 = call i32 @ISSET(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %29 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %32 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %56

36:                                               ; preds = %27, %20
  %37 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %38 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NB_NEEDCOMMIT, align 4
  %41 = load i32, i32* @NB_STALEWVERF, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @CLR(i32 %39, i32 %42)
  %44 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %45 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = call i32 @nfs_node_lock_force(%struct.TYPE_7__* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = call i32 @CHECK_NEEDCOMMITCNT(%struct.TYPE_7__* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = call i32 @nfs_node_unlock(%struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %36, %35, %19, %12
  ret void
}

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_7__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_7__*) #1

declare dso_local i32 @CHECK_NEEDCOMMITCNT(%struct.TYPE_7__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
