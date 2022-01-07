; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_esp_modem.c_esp_handle_uart_pattern.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_esp_modem.c_esp_handle_uart_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@ESP_MODEM_LINE_BUFFER_SIZE = common dso_local global i32 0, align 4
@MODEM_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ESP Modem Line buffer too small\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"uart read bytes failed\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Pattern Queue Size too small\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @esp_handle_uart_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_handle_uart_pattern(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @uart_pattern_pop_pos(i32 %7)
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %49

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ESP_MODEM_LINE_BUFFER_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %11
  %20 = load i32, i32* @MODEM_TAG, align 4
  %21 = call i32 @ESP_LOGW(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ESP_MODEM_LINE_BUFFER_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pdMS_TO_TICKS(i32 100)
  %33 = call i32 @uart_read_bytes(i32 %27, i8* %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = call i32 @esp_dte_handle_line(%struct.TYPE_4__* %43)
  br label %48

45:                                               ; preds = %24
  %46 = load i32, i32* @MODEM_TAG, align 4
  %47 = call i32 @ESP_LOGE(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %36
  br label %56

49:                                               ; preds = %1
  %50 = load i32, i32* @MODEM_TAG, align 4
  %51 = call i32 @ESP_LOGW(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @uart_flush(i32 %54)
  br label %56

56:                                               ; preds = %49, %48
  ret void
}

declare dso_local i32 @uart_pattern_pop_pos(i32) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @uart_read_bytes(i32, i8*, i32, i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @esp_dte_handle_line(%struct.TYPE_4__*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @uart_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
