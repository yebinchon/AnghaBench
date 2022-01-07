; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_sha.c_esp_sha_unlock_engine.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_sha.c_esp_sha_unlock_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engines_in_use_lock = common dso_local global i32 0, align 4
@engines_in_use = common dso_local global i64 0, align 8
@PERIPH_SHA_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_sha_unlock_engine(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32* @sha_get_engine_state(i32 %4)
  store i32* %5, i32** %3, align 8
  %6 = call i32 @portENTER_CRITICAL(i32* @engines_in_use_lock)
  %7 = load i64, i64* @engines_in_use, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* @engines_in_use, align 8
  %9 = load i64, i64* @engines_in_use, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @PERIPH_SHA_MODULE, align 4
  %13 = call i32 @periph_module_disable(i32 %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = call i32 @portEXIT_CRITICAL(i32* @engines_in_use_lock)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @xSemaphoreGive(i32* %16)
  ret void
}

declare dso_local i32* @sha_get_engine_state(i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @periph_module_disable(i32) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

declare dso_local i32 @xSemaphoreGive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
