; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_check_efuse_tp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_check_efuse_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHECK_BLK3_FLAG = common dso_local global i64 0, align 8
@BLK3_RESERVED_REG = common dso_local global i32 0, align 4
@EFUSE_RD_BLK3_PART_RESERVE = common dso_local global i32 0, align 4
@TP_REG = common dso_local global i32 0, align 4
@EFUSE_RD_ADC1_TP_LOW = common dso_local global i32 0, align 4
@EFUSE_RD_ADC2_TP_LOW = common dso_local global i32 0, align 4
@EFUSE_RD_ADC1_TP_HIGH = common dso_local global i32 0, align 4
@EFUSE_RD_ADC2_TP_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_efuse_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_efuse_tp() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @CHECK_BLK3_FLAG, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* @BLK3_RESERVED_REG, align 4
  %6 = load i32, i32* @EFUSE_RD_BLK3_PART_RESERVE, align 4
  %7 = call i64 @REG_GET_FIELD(i32 %5, i32 %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i32 0, i32* %1, align 4
  br label %32

10:                                               ; preds = %4, %0
  %11 = load i32, i32* @TP_REG, align 4
  %12 = load i32, i32* @EFUSE_RD_ADC1_TP_LOW, align 4
  %13 = call i64 @REG_GET_FIELD(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load i32, i32* @TP_REG, align 4
  %17 = load i32, i32* @EFUSE_RD_ADC2_TP_LOW, align 4
  %18 = call i64 @REG_GET_FIELD(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i32, i32* @TP_REG, align 4
  %22 = load i32, i32* @EFUSE_RD_ADC1_TP_HIGH, align 4
  %23 = call i64 @REG_GET_FIELD(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @TP_REG, align 4
  %27 = load i32, i32* @EFUSE_RD_ADC2_TP_HIGH, align 4
  %28 = call i64 @REG_GET_FIELD(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %1, align 4
  br label %32

31:                                               ; preds = %25, %20, %15, %10
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %31, %30, %9
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i64 @REG_GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
