; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_choose_processor_for_realtime_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_choose_processor_for_realtime_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@processor_array = common dso_local global %struct.TYPE_7__** null, align 8
@PROCESSOR_IDLE = common dso_local global i64 0, align 8
@PROCESSOR_RUNNING = common dso_local global i64 0, align 8
@PROCESSOR_DISPATCHING = common dso_local global i64 0, align 8
@BASEPRI_RTQUEUES = common dso_local global i64 0, align 8
@sched_allow_rt_smt = common dso_local global i32 0, align 4
@PROCESSOR_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_8__*)* @choose_processor_for_realtime_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @choose_processor_for_realtime_thread(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %11, %14
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @lsb_first(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %68, %1
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @processor_array, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = icmp ne %struct.TYPE_7__* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %68

38:                                               ; preds = %26
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PROCESSOR_IDLE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %2, align 8
  br label %131

46:                                               ; preds = %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PROCESSOR_RUNNING, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PROCESSOR_DISPATCHING, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %68

59:                                               ; preds = %52, %46
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BASEPRI_RTQUEUES, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %68

66:                                               ; preds = %59
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %2, align 8
  br label %131

68:                                               ; preds = %65, %58, %37
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @lsb_next(i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %23

72:                                               ; preds = %23
  %73 = load i32, i32* @sched_allow_rt_smt, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PROCESSOR_NULL, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %2, align 8
  br label %131

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @lsb_first(i32 %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %125, %77
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %129

83:                                               ; preds = %80
  %84 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @processor_array, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %84, i64 %86
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %8, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = icmp eq %struct.TYPE_7__* %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %125

95:                                               ; preds = %83
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PROCESSOR_IDLE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %2, align 8
  br label %131

103:                                              ; preds = %95
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PROCESSOR_RUNNING, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PROCESSOR_DISPATCHING, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %125

116:                                              ; preds = %109, %103
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @BASEPRI_RTQUEUES, align 8
  %121 = icmp sge i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %125

123:                                              ; preds = %116
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %2, align 8
  br label %131

125:                                              ; preds = %122, %115, %94
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @lsb_next(i32 %126, i32 %127)
  store i32 %128, i32* %7, align 4
  br label %80

129:                                              ; preds = %80
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PROCESSOR_NULL, align 8
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** %2, align 8
  br label %131

131:                                              ; preds = %129, %123, %101, %75, %66, %44
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %132
}

declare dso_local i32 @lsb_first(i32) #1

declare dso_local i32 @lsb_next(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
