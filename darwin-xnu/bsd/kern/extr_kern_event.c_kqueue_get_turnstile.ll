; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_get_turnstile.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_get_turnstile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.turnstile* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_8__* }

@KQ_WORKLOOP = common dso_local global i32 0, align 4
@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@relaxed = common dso_local global i32 0, align 4
@KQR_ALLOCATED_TURNSTILE = common dso_local global i32 0, align 4
@TURNSTILE_WORKLOOPS = common dso_local global i32 0, align 4
@release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.turnstile* (%struct.TYPE_11__*, %struct.TYPE_8__*, i32)* @kqueue_get_turnstile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.turnstile* @kqueue_get_turnstile(%struct.TYPE_11__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.turnstile*, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.turnstile*, align 8
  %9 = alloca %struct.turnstile*, align 8
  %10 = bitcast %struct.TYPE_10__* %5 to { %struct.TYPE_11__*, %struct.TYPE_8__* }*
  %11 = getelementptr inbounds { %struct.TYPE_11__*, %struct.TYPE_8__* }, { %struct.TYPE_11__*, %struct.TYPE_8__* }* %10, i32 0, i32 0
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %11, align 8
  %12 = getelementptr inbounds { %struct.TYPE_11__*, %struct.TYPE_8__* }, { %struct.TYPE_11__*, %struct.TYPE_8__* }* %10, i32 0, i32 1
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %12, align 8
  store i32 %2, i32* %6, align 4
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @KQ_WORKLOOP, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %21, %struct.turnstile** %4, align 8
  br label %117

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* @relaxed, align 4
  %28 = call i32 @os_atomic_load(i32* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @KQR_ALLOCATED_TURNSTILE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.turnstile* @os_atomic_load_with_dependency_on(%struct.turnstile** %36, i32 %37)
  store %struct.turnstile* %38, %struct.turnstile** %4, align 8
  br label %117

39:                                               ; preds = %22
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %43, %struct.turnstile** %4, align 8
  br label %117

44:                                               ; preds = %39
  %45 = call %struct.turnstile* (...) @turnstile_alloc()
  store %struct.turnstile* %45, %struct.turnstile** %8, align 8
  %46 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %46, %struct.turnstile** %9, align 8
  %47 = bitcast %struct.TYPE_10__* %5 to { %struct.TYPE_11__*, %struct.TYPE_8__* }*
  %48 = getelementptr inbounds { %struct.TYPE_11__*, %struct.TYPE_8__* }, { %struct.TYPE_11__*, %struct.TYPE_8__* }* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds { %struct.TYPE_11__*, %struct.TYPE_8__* }, { %struct.TYPE_11__*, %struct.TYPE_8__* }* %47, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i32 @kq_req_lock(%struct.TYPE_11__* %49, %struct.TYPE_8__* %51)
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = call i64 @filt_wlturnstile_interlock_is_workq(%struct.TYPE_11__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @workq_kern_threadreq_lock(i32 %61)
  br label %63

63:                                               ; preds = %57, %44
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @KQR_ALLOCATED_TURNSTILE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  store %struct.turnstile* %73, %struct.turnstile** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load %struct.turnstile*, %struct.turnstile** %76, align 8
  store %struct.turnstile* %77, %struct.turnstile** %8, align 8
  br label %95

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = ptrtoint %struct.TYPE_11__* %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %86 = load i32, i32* @TURNSTILE_WORKLOOPS, align 4
  %87 = call %struct.turnstile* @turnstile_prepare(i64 %81, %struct.turnstile** %84, %struct.turnstile* %85, i32 %86)
  store %struct.turnstile* %87, %struct.turnstile** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* @KQR_ALLOCATED_TURNSTILE, align 4
  %93 = load i32, i32* @release, align 4
  %94 = call i32 @os_atomic_or(i32* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %78, %72
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = call i64 @filt_wlturnstile_interlock_is_workq(%struct.TYPE_11__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @workq_kern_threadreq_unlock(i32 %104)
  br label %106

106:                                              ; preds = %100, %95
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = call i32 @kq_req_unlock(%struct.TYPE_11__* %108)
  %110 = load %struct.turnstile*, %struct.turnstile** %9, align 8
  %111 = icmp ne %struct.turnstile* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.turnstile*, %struct.turnstile** %9, align 8
  %114 = call i32 @turnstile_deallocate(%struct.turnstile* %113)
  br label %115

115:                                              ; preds = %112, %106
  %116 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  store %struct.turnstile* %116, %struct.turnstile** %4, align 8
  br label %117

117:                                              ; preds = %115, %42, %33, %20
  %118 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  ret %struct.turnstile* %118
}

declare dso_local i32 @os_atomic_load(i32*, i32) #1

declare dso_local %struct.turnstile* @os_atomic_load_with_dependency_on(%struct.turnstile**, i32) #1

declare dso_local %struct.turnstile* @turnstile_alloc(...) #1

declare dso_local i32 @kq_req_lock(%struct.TYPE_11__*, %struct.TYPE_8__*) #1

declare dso_local i64 @filt_wlturnstile_interlock_is_workq(%struct.TYPE_11__*) #1

declare dso_local i32 @workq_kern_threadreq_lock(i32) #1

declare dso_local %struct.turnstile* @turnstile_prepare(i64, %struct.turnstile**, %struct.turnstile*, i32) #1

declare dso_local i32 @os_atomic_or(i32*, i32, i32) #1

declare dso_local i32 @workq_kern_threadreq_unlock(i32) #1

declare dso_local i32 @kq_req_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @turnstile_deallocate(%struct.turnstile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
