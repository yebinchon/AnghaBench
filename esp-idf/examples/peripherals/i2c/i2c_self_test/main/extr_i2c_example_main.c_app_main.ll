; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_self_test/main/extr_i2c_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_self_test/main/extr_i2c_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_mux = common dso_local global i32 0, align 4
@i2c_test_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"i2c_test_task_0\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"i2c_test_task_1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = call i32 (...) @xSemaphoreCreateMutex()
  store i32 %1, i32* @print_mux, align 4
  %2 = call i32 (...) @i2c_slave_init()
  %3 = call i32 @ESP_ERROR_CHECK(i32 %2)
  %4 = call i32 (...) @i2c_master_init()
  %5 = call i32 @ESP_ERROR_CHECK(i32 %4)
  %6 = load i32, i32* @i2c_test_task, align 4
  %7 = call i32 @xTaskCreate(i32 %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 2048, i8* null, i32 10, i32* null)
  %8 = load i32, i32* @i2c_test_task, align 4
  %9 = call i32 @xTaskCreate(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 2048, i8* inttoptr (i64 1 to i8*), i32 10, i32* null)
  ret void
}

declare dso_local i32 @xSemaphoreCreateMutex(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @i2c_slave_init(...) #1

declare dso_local i32 @i2c_master_init(...) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
