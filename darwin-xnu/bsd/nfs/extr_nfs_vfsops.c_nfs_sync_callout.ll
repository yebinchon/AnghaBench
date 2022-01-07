; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs_sync_callout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs_sync_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_sync_cargs = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }

@NREVOKE = common dso_local global i32 0, align 4
@REVOKEALL = common dso_local global i32 0, align 4
@VNODE_RETURNED = common dso_local global i32 0, align 4
@NBFLUSHINPROG = common dso_local global i32 0, align 4
@NBINVALINPROG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_sync_callout(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfs_sync_cargs*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.nfs_sync_cargs*
  store %struct.nfs_sync_cargs* %10, %struct.nfs_sync_cargs** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_4__* @VTONFS(i32 %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NREVOKE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @REVOKEALL, align 4
  %22 = load %struct.nfs_sync_cargs*, %struct.nfs_sync_cargs** %6, align 8
  %23 = getelementptr inbounds %struct.nfs_sync_cargs, %struct.nfs_sync_cargs* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vn_revoke(i32 %20, i32 %21, i32 %24)
  %26 = load i32, i32* @VNODE_RETURNED, align 4
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = call i64 @LIST_EMPTY(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @VNODE_RETURNED, align 4
  store i32 %33, i32* %3, align 4
  br label %70

34:                                               ; preds = %27
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @VNODE_RETURNED, align 4
  store i32 %40, i32* %3, align 4
  br label %70

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NBFLUSHINPROG, align 4
  %46 = load i32, i32* @NBINVALINPROG, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @VNODE_RETURNED, align 4
  store i32 %51, i32* %3, align 4
  br label %70

52:                                               ; preds = %41
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = load %struct.nfs_sync_cargs*, %struct.nfs_sync_cargs** %6, align 8
  %55 = getelementptr inbounds %struct.nfs_sync_cargs, %struct.nfs_sync_cargs* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfs_sync_cargs*, %struct.nfs_sync_cargs** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_sync_cargs, %struct.nfs_sync_cargs* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @vfs_context_thread(i32 %59)
  %61 = call i32 @nfs_flush(%struct.TYPE_4__* %53, i32 %56, i32 %60, i32 0)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.nfs_sync_cargs*, %struct.nfs_sync_cargs** %6, align 8
  %67 = getelementptr inbounds %struct.nfs_sync_cargs, %struct.nfs_sync_cargs* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %52
  %69 = load i32, i32* @VNODE_RETURNED, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %50, %39, %32, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_4__* @VTONFS(i32) #1

declare dso_local i32 @vn_revoke(i32, i32, i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @nfs_flush(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
