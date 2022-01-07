; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/openssl_client/main/extr_openssl_client_example_main.c_openssl_example_client_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/openssl_client/main/extr_openssl_client_example_main.c_openssl_example_client_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@openssl_example_task = common dso_local global i32 0, align 4
@OPENSSL_EXAMPLE_TASK_NAME = common dso_local global i32 0, align 4
@OPENSSL_EXAMPLE_TASK_STACK_WORDS = common dso_local global i32 0, align 4
@OPENSSL_EXAMPLE_TASK_PRIORITY = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"create thread %s failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @openssl_example_client_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openssl_example_client_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @openssl_example_task, align 4
  %4 = load i32, i32* @OPENSSL_EXAMPLE_TASK_NAME, align 4
  %5 = load i32, i32* @OPENSSL_EXAMPLE_TASK_STACK_WORDS, align 4
  %6 = load i32, i32* @OPENSSL_EXAMPLE_TASK_PRIORITY, align 4
  %7 = call i32 @xTaskCreate(i32 %3, i32 %4, i32 %5, i32* null, i32 %6, i32* %2)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @pdPASS, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i32, i32* @TAG, align 4
  %13 = load i32, i32* @OPENSSL_EXAMPLE_TASK_NAME, align 4
  %14 = call i32 @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %0
  ret void
}

declare dso_local i32 @xTaskCreate(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
