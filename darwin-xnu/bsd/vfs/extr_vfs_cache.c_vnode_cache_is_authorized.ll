; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_vnode_cache_is_authorized.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_vnode_cache_is_authorized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@bootarg_vnode_cache_defeat = common dso_local global i64 0, align 8
@MNTK_AUTH_OPAQUE = common dso_local global i32 0, align 4
@MNTK_AUTH_CACHE_TTL = common dso_local global i32 0, align 4
@KAUTH_VNODE_SEARCH = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@NULLVP = common dso_local global %struct.TYPE_8__* null, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vnode_cache_is_authorized(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i64, i64* @bootarg_vnode_cache_defeat, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %4, align 8
  br label %102

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MNTK_AUTH_OPAQUE, align 4
  %22 = load i32, i32* @MNTK_AUTH_CACHE_TTL, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %15
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %26
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MNTK_AUTH_CACHE_TTL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @KAUTH_VNODE_SEARCH, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VDIR, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %42
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NULLVP, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %5, align 8
  br label %54

54:                                               ; preds = %52, %46
  br label %55

55:                                               ; preds = %54, %33
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NULLVP, align 8
  %58 = icmp ne %struct.TYPE_8__* %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = call i64 @vnode_cache_is_stale(%struct.TYPE_8__* %60)
  %62 = load i64, i64* @TRUE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @vnode_uncache_authorized_action(%struct.TYPE_8__* %65, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NULLVP, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %5, align 8
  br label %71

71:                                               ; preds = %64, %59, %55
  br label %74

72:                                               ; preds = %26
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NULLVP, align 8
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %5, align 8
  br label %74

74:                                               ; preds = %72, %71
  br label %75

75:                                               ; preds = %74, %15
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NULLVP, align 8
  %78 = icmp ne %struct.TYPE_8__* %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @vfs_context_ucred(i32 %80)
  store i64 %81, i64* %8, align 8
  %82 = call i32 (...) @NAME_CACHE_LOCK_SHARED()
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %79
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i64, i64* @TRUE, align 8
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %96, %88, %79
  %99 = call i32 (...) @NAME_CACHE_UNLOCK()
  br label %100

100:                                              ; preds = %98, %75
  %101 = load i64, i64* %9, align 8
  store i64 %101, i64* %4, align 8
  br label %102

102:                                              ; preds = %100, %13
  %103 = load i64, i64* %4, align 8
  ret i64 %103
}

declare dso_local i64 @vnode_cache_is_stale(%struct.TYPE_8__*) #1

declare dso_local i32 @vnode_uncache_authorized_action(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @vfs_context_ucred(i32) #1

declare dso_local i32 @NAME_CACHE_LOCK_SHARED(...) #1

declare dso_local i32 @NAME_CACHE_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
