; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/apps/ping/extr_ping_sock.c_esp_ping_thread.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/apps/ping/extr_ping_sock.c_esp_ping_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i64, %struct.TYPE_5__*, i32, i32 (i32, i32)*, i32, i32 (i32, i32)*, i32 (i32, i32)*, i64, i64, i64, i64 }
%struct.timeval = type { i32 }

@pdTRUE = common dso_local global i32 0, align 4
@PING_CHECK_START_TIMEOUT_MS = common dso_local global i32 0, align 4
@PING_FLAGS_START = common dso_local global i32 0, align 4
@PING_FLAGS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @esp_ping_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_ping_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %3, align 8
  br label %10

10:                                               ; preds = %1, %140
  %11 = load i32, i32* @pdTRUE, align 4
  %12 = load i32, i32* @PING_CHECK_START_TIMEOUT_MS, align 4
  %13 = call i32 @pdMS_TO_TICKS(i32 %12)
  %14 = call i64 @ulTaskNotifyTake(i32 %11, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %131

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 13
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 12
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 11
  store i64 0, i64* %26, align 8
  %27 = call i32 (...) @xTaskGetTickCount()
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %109, %16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PING_FLAGS_START, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br label %50

50:                                               ; preds = %40, %35
  %51 = phi i1 [ true, %35 ], [ %49, %40 ]
  br label %52

52:                                               ; preds = %50, %28
  %53 = phi i1 [ false, %28 ], [ %51, %50 ]
  br i1 %53, label %54, label %115

54:                                               ; preds = %52
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = call i32 @esp_ping_send(%struct.TYPE_5__* %55)
  %57 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = call i32 @esp_ping_receive(%struct.TYPE_5__* %58)
  store i32 %59, i32* %7, align 4
  %60 = call i32 @gettimeofday(%struct.timeval* %6, i32* null)
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @PING_TIME_DIFF_MS(i32 %62, i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 10
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 10
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 11
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* %7, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %54
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 9
  %80 = load i32 (i32, i32)*, i32 (i32, i32)** %79, align 8
  %81 = icmp ne i32 (i32, i32)* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 9
  %85 = load i32 (i32, i32)*, i32 (i32, i32)** %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = ptrtoint %struct.TYPE_5__* %86 to i32
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 %85(i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %82, %77
  br label %109

93:                                               ; preds = %54
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 8
  %96 = load i32 (i32, i32)*, i32 (i32, i32)** %95, align 8
  %97 = icmp ne i32 (i32, i32)* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 8
  %101 = load i32 (i32, i32)*, i32 (i32, i32)** %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = ptrtoint %struct.TYPE_5__* %102 to i32
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 %101(i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %98, %93
  br label %109

109:                                              ; preds = %108, %92
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @pdMS_TO_TICKS(i32 %112)
  %114 = call i32 @vTaskDelayUntil(i32* %4, i32 %113)
  br label %28

115:                                              ; preds = %52
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 6
  %118 = load i32 (i32, i32)*, i32 (i32, i32)** %117, align 8
  %119 = icmp ne i32 (i32, i32)* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 6
  %123 = load i32 (i32, i32)*, i32 (i32, i32)** %122, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %125 = ptrtoint %struct.TYPE_5__* %124 to i32
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i32 %123(i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %120, %115
  br label %140

131:                                              ; preds = %10
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @PING_FLAGS_INIT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  br label %141

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %130
  br label %10

141:                                              ; preds = %138
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = icmp ne %struct.TYPE_5__* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = call i32 @free(%struct.TYPE_5__* %149)
  br label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @close(i64 %159)
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %163 = call i32 @free(%struct.TYPE_5__* %162)
  %164 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i64 @ulTaskNotifyTake(i32, i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @xTaskGetTickCount(...) #1

declare dso_local i32 @esp_ping_send(%struct.TYPE_5__*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @esp_ping_receive(%struct.TYPE_5__*) #1

declare dso_local i64 @PING_TIME_DIFF_MS(i32, i32) #1

declare dso_local i32 @vTaskDelayUntil(i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
