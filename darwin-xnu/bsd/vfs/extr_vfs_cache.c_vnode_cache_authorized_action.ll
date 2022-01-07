; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_vnode_cache_authorized_action.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_vnode_cache_authorized_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.timeval = type { i32 }

@NOCRED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@MNTK_AUTH_OPAQUE = common dso_local global i32 0, align 4
@MNTK_AUTH_CACHE_TTL = common dso_local global i32 0, align 4
@KAUTH_VNODE_SEARCH = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnode_cache_authorized_action(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timeval, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* @NOCRED, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @vfs_context_ucred(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @IS_VALID_CRED(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  br label %111

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MNTK_AUTH_OPAQUE, align 4
  %29 = load i32, i32* @MNTK_AUTH_CACHE_TTL, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %22
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %111

41:                                               ; preds = %33
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MNTK_AUTH_CACHE_TTL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %41
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @KAUTH_VNODE_SEARCH, align 8
  %53 = xor i64 %52, -1
  %54 = and i64 %51, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VDIR, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %50
  br label %111

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %10, align 8
  %66 = call i32 @microuptime(%struct.timeval* %9)
  br label %67

67:                                               ; preds = %64, %22
  %68 = call i32 (...) @NAME_CACHE_LOCK()
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @kauth_cred_ref(i64 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %74, %67
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @TRUE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %94, %89, %85
  %100 = load i64, i64* %6, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = or i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = call i32 (...) @NAME_CACHE_UNLOCK()
  %106 = load i64, i64* %7, align 8
  %107 = call i64 @IS_VALID_CRED(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = call i32 @kauth_cred_unref(i64* %7)
  br label %111

111:                                              ; preds = %21, %40, %62, %109, %99
  ret void
}

declare dso_local i64 @vfs_context_ucred(i32) #1

declare dso_local i64 @IS_VALID_CRED(i64) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @NAME_CACHE_LOCK(...) #1

declare dso_local i32 @kauth_cred_ref(i64) #1

declare dso_local i32 @NAME_CACHE_UNLOCK(...) #1

declare dso_local i32 @kauth_cred_unref(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
