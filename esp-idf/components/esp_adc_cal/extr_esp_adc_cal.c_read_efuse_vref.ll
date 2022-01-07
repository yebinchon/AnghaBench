; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_read_efuse_vref.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_read_efuse_vref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VREF_OFFSET = common dso_local global i32 0, align 4
@VREF_REG = common dso_local global i32 0, align 4
@EFUSE_ADC_VREF = common dso_local global i32 0, align 4
@VREF_MASK = common dso_local global i32 0, align 4
@VREF_FORMAT = common dso_local global i32 0, align 4
@VREF_STEP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_efuse_vref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_efuse_vref() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @VREF_OFFSET, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @VREF_REG, align 4
  %5 = load i32, i32* @EFUSE_ADC_VREF, align 4
  %6 = call i32 @REG_GET_FIELD(i32 %4, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @VREF_MASK, align 4
  %9 = load i32, i32* @VREF_FORMAT, align 4
  %10 = call i32 @decode_bits(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @VREF_STEP_SIZE, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @decode_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
