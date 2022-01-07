; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_tracepoint_cleanup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_tracepoint_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }

@PROC_NULL = common dso_local global i32* null, align 8
@fasttrap_retired_mtx = common dso_local global i32 0, align 4
@fasttrap_cur_retired = common dso_local global i64 0, align 8
@fasttrap_retired_spec = common dso_local global %struct.TYPE_11__* null, align 8
@fasttrap_tpoints = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fasttrap_tracepoint_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fasttrap_tracepoint_cleanup() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i64 0, i64* %2, align 8
  %7 = load i32*, i32** @PROC_NULL, align 8
  store i32* %7, i32** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  %8 = call i32 @lck_mtx_lock(i32* @fasttrap_retired_mtx)
  store i64 0, i64* %1, align 8
  br label %9

9:                                                ; preds = %104, %0
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @fasttrap_cur_retired, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %107

13:                                               ; preds = %9
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fasttrap_retired_spec, align 8
  %15 = load i64, i64* %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %3, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fasttrap_retired_spec, align 8
  %20 = load i64, i64* %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %2, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %13
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fasttrap_retired_spec, align 8
  %28 = load i64, i64* %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %2, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** @PROC_NULL, align 8
  %34 = icmp ne i32* %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @sprunlock(i32* %36)
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i64, i64* %2, align 8
  %40 = call i32* @sprlock(i64 %39)
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** @PROC_NULL, align 8
  %42 = icmp eq i32* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i64 0, i64* %2, align 8
  br label %104

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %13
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %47 = load i64, i64* %2, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @FASTTRAP_TPOINTS_INDEX(i64 %47, i64 %48)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %49
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %6, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = call i32 @lck_mtx_lock(i32* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %5, align 8
  br label %57

57:                                               ; preds = %81, %45
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %60, label %85

60:                                               ; preds = %57
  %61 = load i64, i64* %2, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load i64, i64* %3, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %85

80:                                               ; preds = %72, %66, %60
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %5, align 8
  br label %57

85:                                               ; preds = %79, %57
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = icmp eq %struct.TYPE_8__* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88, %85
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = call i32 @lck_mtx_unlock(i32* %95)
  br label %104

97:                                               ; preds = %88
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = call i32 @fasttrap_tracepoint_remove(i32* %98, %struct.TYPE_8__* %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = call i32 @lck_mtx_unlock(i32* %102)
  br label %104

104:                                              ; preds = %97, %93, %43
  %105 = load i64, i64* %1, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %1, align 8
  br label %9

107:                                              ; preds = %9
  %108 = load i32*, i32** %4, align 8
  %109 = load i32*, i32** @PROC_NULL, align 8
  %110 = icmp ne i32* %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @sprunlock(i32* %112)
  br label %114

114:                                              ; preds = %111, %107
  store i64 0, i64* @fasttrap_cur_retired, align 8
  %115 = call i32 @lck_mtx_unlock(i32* @fasttrap_retired_mtx)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @sprunlock(i32*) #1

declare dso_local i32* @sprlock(i64) #1

declare dso_local i64 @FASTTRAP_TPOINTS_INDEX(i64, i64) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @fasttrap_tracepoint_remove(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
