; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_scli.c_scli_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_scli.c_scli_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scli_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"scli_cli\00", align 1
@cli_task = common dso_local global i32* null, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@cli_handle = common dso_local global i32* null, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scli_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @ble_register_cli()
  %3 = load i32, i32* @scli_task, align 4
  %4 = call i32 @xTaskCreate(i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4096, i8* null, i32 3, i32** @cli_task)
  %5 = load i32*, i32** @cli_task, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @ESP_FAIL, align 4
  store i32 %8, i32* %1, align 4
  br label %17

9:                                                ; preds = %0
  %10 = call i32* @xQueueCreate(i32 1, i32 4)
  store i32* %10, i32** @cli_handle, align 8
  %11 = load i32*, i32** @cli_handle, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @ESP_FAIL, align 4
  store i32 %14, i32* %1, align 4
  br label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @ESP_OK, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %13, %7
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @ble_register_cli(...) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i8*, i32, i32**) #1

declare dso_local i32* @xQueueCreate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
