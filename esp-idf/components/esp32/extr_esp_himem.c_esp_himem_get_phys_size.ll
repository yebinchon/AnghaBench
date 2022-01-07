; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_esp_himem.c_esp_himem_get_phys_size.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_esp_himem.c_esp_himem_get_phys_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CACHE_BLOCKSIZE = common dso_local global i32 0, align 4
@SPIRAM_BANKSWITCH_RESERVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_himem_get_phys_size() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CACHE_BLOCKSIZE, align 4
  %3 = load i32, i32* @SPIRAM_BANKSWITCH_RESERVE, align 4
  %4 = mul nsw i32 %2, %3
  %5 = sub nsw i32 4194304, %4
  store i32 %5, i32* %1, align 4
  %6 = call i64 (...) @esp_spiram_get_size()
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = sub i64 %6, %8
  ret i64 %9
}

declare dso_local i64 @esp_spiram_get_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
