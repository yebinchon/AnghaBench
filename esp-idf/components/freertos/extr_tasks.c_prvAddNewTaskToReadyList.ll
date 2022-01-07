; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_prvAddNewTaskToReadyList.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_prvAddNewTaskToReadyList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }

@tskNO_AFFINITY = common dso_local global i32 0, align 4
@portNUM_PROCESSORS = common dso_local global i32 0, align 4
@xTaskQueueMutex = common dso_local global i32 0, align 4
@uxCurrentNumberOfTasks = common dso_local global i64 0, align 8
@pxCurrentTCB = common dso_local global %struct.TYPE_7__** null, align 8
@xSchedulerRunning = common dso_local global i64 0, align 8
@pdFALSE = common dso_local global i64 0, align 8
@uxTaskNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @prvAddNewTaskToReadyList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvAddNewTaskToReadyList(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @tskNO_AFFINITY, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @portNUM_PROCESSORS, align 4
  %16 = icmp slt i32 %14, %15
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ true, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @configASSERT(i32 %19)
  %21 = call i32 @taskENTER_CRITICAL(i32* @xTaskQueueMutex)
  %22 = load i64, i64* @uxCurrentNumberOfTasks, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @uxCurrentNumberOfTasks, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @tskNO_AFFINITY, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %17
  %28 = load i32, i32* @portNUM_PROCESSORS, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %77

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @pxCurrentTCB, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %8, align 8
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @pxCurrentTCB, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %35, i64 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %9, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = icmp eq %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %76

41:                                               ; preds = %31
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = icmp eq %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  br label %75

45:                                               ; preds = %41
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %74

62:                                               ; preds = %53, %45
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %73

71:                                               ; preds = %62
  %72 = call i32 (...) @xPortGetCoreID()
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %70
  br label %74

74:                                               ; preds = %73, %61
  br label %75

75:                                               ; preds = %74, %44
  br label %76

76:                                               ; preds = %75, %40
  br label %77

77:                                               ; preds = %76, %30
  br label %78

78:                                               ; preds = %77, %17
  %79 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @pxCurrentTCB, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %79, i64 %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = icmp eq %struct.TYPE_7__* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @pxCurrentTCB, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %87, i64 %89
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %90, align 8
  %91 = load i64, i64* @uxCurrentNumberOfTasks, align 8
  %92 = icmp eq i64 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = call i32 (...) @prvInitialiseTaskLists()
  br label %97

95:                                               ; preds = %85
  %96 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %97

97:                                               ; preds = %95, %93
  br label %131

98:                                               ; preds = %78
  %99 = load i64, i64* @xSchedulerRunning, align 8
  %100 = load i64, i64* @pdFALSE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %98
  %103 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @pxCurrentTCB, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %103, i64 %105
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = icmp eq %struct.TYPE_7__* %107, null
  br i1 %108, label %121, label %109

109:                                              ; preds = %102
  %110 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @pxCurrentTCB, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %110, i64 %112
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sle i64 %116, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %109, %102
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @pxCurrentTCB, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %123, i64 %125
  store %struct.TYPE_7__* %122, %struct.TYPE_7__** %126, align 8
  br label %127

127:                                              ; preds = %121, %109
  br label %130

128:                                              ; preds = %98
  %129 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %130

130:                                              ; preds = %128, %127
  br label %131

131:                                              ; preds = %130, %97
  %132 = load i64, i64* @uxTaskNumber, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* @uxTaskNumber, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = call i32 @traceTASK_CREATE(%struct.TYPE_7__* %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = call i32 @prvAddTaskToReadyList(%struct.TYPE_7__* %136)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = call i32 @portSETUP_TCB(%struct.TYPE_7__* %138)
  %140 = call i32 @taskEXIT_CRITICAL(i32* @xTaskQueueMutex)
  %141 = load i64, i64* @xSchedulerRunning, align 8
  %142 = load i64, i64* @pdFALSE, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %178

144:                                              ; preds = %131
  %145 = call i32 @taskENTER_CRITICAL(i32* @xTaskQueueMutex)
  %146 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @pxCurrentTCB, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %146, i64 %148
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  store %struct.TYPE_7__* %150, %struct.TYPE_7__** %7, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %152 = icmp eq %struct.TYPE_7__* %151, null
  br i1 %152, label %161, label %153

153:                                              ; preds = %144
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp slt i64 %156, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %153, %144
  %162 = load i32, i32* %6, align 4
  %163 = call i32 (...) @xPortGetCoreID()
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = call i32 (...) @taskYIELD_IF_USING_PREEMPTION()
  br label %173

167:                                              ; preds = %161
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @taskYIELD_OTHER_CORE(i32 %168, i64 %171)
  br label %173

173:                                              ; preds = %167, %165
  br label %176

174:                                              ; preds = %153
  %175 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %176

176:                                              ; preds = %174, %173
  %177 = call i32 @taskEXIT_CRITICAL(i32* @xTaskQueueMutex)
  br label %180

178:                                              ; preds = %131
  %179 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %180

180:                                              ; preds = %178, %176
  ret void
}

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @taskENTER_CRITICAL(i32*) #1

declare dso_local i32 @xPortGetCoreID(...) #1

declare dso_local i32 @prvInitialiseTaskLists(...) #1

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

declare dso_local i32 @traceTASK_CREATE(%struct.TYPE_7__*) #1

declare dso_local i32 @prvAddTaskToReadyList(%struct.TYPE_7__*) #1

declare dso_local i32 @portSETUP_TCB(%struct.TYPE_7__*) #1

declare dso_local i32 @taskEXIT_CRITICAL(i32*) #1

declare dso_local i32 @taskYIELD_IF_USING_PREEMPTION(...) #1

declare dso_local i32 @taskYIELD_OTHER_CORE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
