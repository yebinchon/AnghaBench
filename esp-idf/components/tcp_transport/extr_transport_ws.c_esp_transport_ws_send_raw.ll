; ModuleID = '/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ws.c_esp_transport_ws_send_raw.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ws.c_esp_transport_ws_send_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Transport must be a valid ws handle\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Sending raw ws message with opcode %d\00", align 1
@WS_FIN = common dso_local global i32 0, align 4
@WS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_transport_ws_send_raw(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @ws_get_bin_opcode(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i32, i32* @TAG, align 4
  %19 = call i32 @ESP_LOGE(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %20, i32* %6, align 4
  br label %34

21:                                               ; preds = %5
  %22 = load i32, i32* @TAG, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @ESP_LOGD(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @WS_FIN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @WS_MASK, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @_ws_write(i32* %25, i32 %28, i32 %29, i8* %30, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %21, %17
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @ws_get_bin_opcode(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @_ws_write(i32*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
