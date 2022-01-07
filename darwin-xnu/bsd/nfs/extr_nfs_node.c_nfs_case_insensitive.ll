; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_node.c_nfs_case_insensitive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_node.c_nfs_case_insensitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NFS_VER2 = common dso_local global i64 0, align 8
@NFS_VER3 = common dso_local global i64 0, align 8
@NFSSTA_GOTPATHCONF = common dso_local global i32 0, align 4
@NFS_FSFLAG_HOMOGENEOUS = common dso_local global i32 0, align 4
@NFS_FSFLAG_CASE_INSENSITIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_case_insensitive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsmount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.nfsmount* @VFSTONFS(i32 %7)
  store %struct.nfsmount* %8, %struct.nfsmount** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %10 = call i64 @nfs_mount_gone(%struct.nfsmount* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %15 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NFS_VER2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %65

20:                                               ; preds = %13
  %21 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %22 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %21, i32 0, i32 2
  %23 = call i32 @lck_mtx_lock(i32* %22)
  %24 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %25 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NFS_VER3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %31 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NFSSTA_GOTPATHCONF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %29
  br label %48

38:                                               ; preds = %20
  %39 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %40 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NFS_FSFLAG_HOMOGENEOUS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %38
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %53 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @NFS_FSFLAG_CASE_INSENSITIVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %51, %48
  %61 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %62 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %61, i32 0, i32 2
  %63 = call i32 @lck_mtx_unlock(i32* %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %19, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
