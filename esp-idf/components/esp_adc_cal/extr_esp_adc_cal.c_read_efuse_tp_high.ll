; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_read_efuse_tp_high.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_read_efuse_tp_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADC_UNIT_1 = common dso_local global i64 0, align 8
@TP_HIGH1_OFFSET = common dso_local global i32 0, align 4
@TP_REG = common dso_local global i32 0, align 4
@EFUSE_RD_ADC1_TP_HIGH = common dso_local global i32 0, align 4
@TP_HIGH2_OFFSET = common dso_local global i32 0, align 4
@EFUSE_RD_ADC2_TP_HIGH = common dso_local global i32 0, align 4
@TP_HIGH_MASK = common dso_local global i32 0, align 4
@TP_STEP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @read_efuse_tp_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_efuse_tp_high(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @ADC_UNIT_1, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @TP_HIGH1_OFFSET, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @TP_REG, align 4
  %11 = load i32, i32* @EFUSE_RD_ADC1_TP_HIGH, align 4
  %12 = call i32 @REG_GET_FIELD(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @TP_HIGH2_OFFSET, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @TP_REG, align 4
  %16 = load i32, i32* @EFUSE_RD_ADC2_TP_HIGH, align 4
  %17 = call i32 @REG_GET_FIELD(i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TP_HIGH_MASK, align 4
  %21 = call i32 @decode_bits(i32 %19, i32 %20, i32 1)
  %22 = load i32, i32* @TP_STEP_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @decode_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
