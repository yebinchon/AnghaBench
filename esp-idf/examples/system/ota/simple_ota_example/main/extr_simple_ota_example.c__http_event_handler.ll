; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/ota/simple_ota_example/main/extr_simple_ota_example.c__http_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/ota/simple_ota_example/main/extr_simple_ota_example.c__http_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"HTTP_EVENT_ERROR\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"HTTP_EVENT_ON_CONNECTED\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"HTTP_EVENT_HEADER_SENT\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"HTTP_EVENT_ON_HEADER, key=%s, value=%s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"HTTP_EVENT_ON_DATA, len=%d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"HTTP_EVENT_ON_FINISH\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"HTTP_EVENT_DISCONNECTED\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_http_event_handler(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %36 [
    i32 133, label %6
    i32 131, label %9
    i32 132, label %12
    i32 128, label %15
    i32 130, label %24
    i32 129, label %30
    i32 134, label %33
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @TAG, align 4
  %8 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %36

9:                                                ; preds = %1
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %36

12:                                               ; preds = %1
  %13 = load i32, i32* @TAG, align 4
  %14 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %36

15:                                               ; preds = %1
  %16 = load i32, i32* @TAG, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 %22)
  br label %36

24:                                               ; preds = %1
  %25 = load i32, i32* @TAG, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  br label %36

30:                                               ; preds = %1
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @TAG, align 4
  %35 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %36

36:                                               ; preds = %1, %33, %30, %24, %15, %12, %9, %6
  %37 = load i32, i32* @ESP_OK, align 4
  ret i32 %37
}

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
