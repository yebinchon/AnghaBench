; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_removexattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_removexattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_removexattr_args = type { i32, i32, i32 }
%struct.nfsmount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_FSFLAG_NAMED_ATTR = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_vnop_removexattr(%struct.vnop_removexattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_removexattr_args*, align 8
  %4 = alloca %struct.nfsmount*, align 8
  %5 = alloca i32, align 4
  store %struct.vnop_removexattr_args* %0, %struct.vnop_removexattr_args** %3, align 8
  %6 = load %struct.vnop_removexattr_args*, %struct.vnop_removexattr_args** %3, align 8
  %7 = getelementptr inbounds %struct.vnop_removexattr_args, %struct.vnop_removexattr_args* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.nfsmount* @VTONMP(i32 %8)
  store %struct.nfsmount* %9, %struct.nfsmount** %4, align 8
  %10 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %11 = call i64 @nfs_mount_gone(%struct.nfsmount* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %17 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NFS_FSFLAG_NAMED_ATTR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOTSUP, align 4
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %15
  %26 = load %struct.vnop_removexattr_args*, %struct.vnop_removexattr_args** %3, align 8
  %27 = getelementptr inbounds %struct.vnop_removexattr_args, %struct.vnop_removexattr_args* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @VTONFS(i32 %28)
  %30 = load %struct.vnop_removexattr_args*, %struct.vnop_removexattr_args** %3, align 8
  %31 = getelementptr inbounds %struct.vnop_removexattr_args, %struct.vnop_removexattr_args* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vnop_removexattr_args*, %struct.vnop_removexattr_args** %3, align 8
  %34 = getelementptr inbounds %struct.vnop_removexattr_args, %struct.vnop_removexattr_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nfs4_named_attr_remove(i32 %29, i32* null, i32 %32, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* @ENOATTR, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %25
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %23, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs4_named_attr_remove(i32, i32*, i32, i32) #1

declare dso_local i32 @VTONFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
