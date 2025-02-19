; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_websocket_client/extr_esp_websocket_client.c_esp_websocket_client_dispatch_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_websocket_client/extr_esp_websocket_client.c_esp_websocket_client_dispatch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32 }

@WEBSOCKET_EVENTS = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i8*, i32)* @esp_websocket_client_dispatch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_websocket_client_dispatch_event(%struct.TYPE_6__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WEBSOCKET_EVENTS, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @portMAX_DELAY, align 4
  %26 = call i32 @esp_event_post_to(i32 %22, i32 %23, i32 %24, %struct.TYPE_5__* %11, i32 16, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @ESP_OK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %36

31:                                               ; preds = %4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @esp_event_loop_run(i32 %34, i32 0)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %29
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @esp_event_post_to(i32, i32, i32, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @esp_event_loop_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
