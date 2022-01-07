; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_mknod.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_mknod_args = type { i32*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfsmount = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@va_type = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_vnop_mknod(%struct.vnop_mknod_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_mknod_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfsmount*, align 8
  %6 = alloca i32, align 4
  store %struct.vnop_mknod_args* %0, %struct.vnop_mknod_args** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %8 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nfsmount* @VTONMP(i32 %9)
  store %struct.nfsmount* %10, %struct.nfsmount** %5, align 8
  %11 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %12 = call i64 @nfs_mount_gone(%struct.nfsmount* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %68

16:                                               ; preds = %1
  %17 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %18 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* @va_type, align 4
  %21 = call i32 @VATTR_IS_ACTIVE(%struct.TYPE_3__* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %2, align 4
  br label %68

25:                                               ; preds = %16
  %26 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %27 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %32 [
    i32 131, label %31
    i32 130, label %31
    i32 129, label %31
    i32 128, label %31
  ]

31:                                               ; preds = %25, %25, %25, %25
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOTSUP, align 4
  store i32 %33, i32* %2, align 4
  br label %68

34:                                               ; preds = %31
  %35 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %36 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %39 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @VTONFS(i32 %40)
  %42 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %43 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %46 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %49 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %54 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @vtonfs_type(i32 %52, i32 %55)
  %57 = call i32 @nfs4_create_rpc(i32 %37, i32 %41, i32 %44, %struct.TYPE_3__* %47, i32 %56, i32* null, i32** %4)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %34
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @NFSTOV(i32* %61)
  %63 = load %struct.vnop_mknod_args*, %struct.vnop_mknod_args** %3, align 8
  %64 = getelementptr inbounds %struct.vnop_mknod_args, %struct.vnop_mknod_args* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %34
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %32, %23, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @VATTR_IS_ACTIVE(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @nfs4_create_rpc(i32, i32, i32, %struct.TYPE_3__*, i32, i32*, i32**) #1

declare dso_local i32 @VTONFS(i32) #1

declare dso_local i32 @vtonfs_type(i32, i32) #1

declare dso_local i32 @NFSTOV(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
