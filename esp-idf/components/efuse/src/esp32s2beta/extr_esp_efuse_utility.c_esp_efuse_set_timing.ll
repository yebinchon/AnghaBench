; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32s2beta/extr_esp_efuse_utility.c_esp_efuse_set_timing.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32s2beta/extr_esp_efuse_utility.c_esp_efuse_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Efuse does not support this %d Hz APB clock\00", align 1
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@EFUSE_DAC_CONF_REG = common dso_local global i32 0, align 4
@EFUSE_DAC_CLK_DIV = common dso_local global i32 0, align 4
@EFUSE_WR_TIM_CONF0_REG = common dso_local global i32 0, align 4
@EFUSE_TPGM = common dso_local global i32 0, align 4
@EFUSE_TPGM_INACTIVE = common dso_local global i32 0, align 4
@EFUSE_THP_A = common dso_local global i32 0, align 4
@EFUSE_WR_TIM_CONF1_REG = common dso_local global i32 0, align 4
@EFUSE_PWR_ON_NUM = common dso_local global i32 0, align 4
@EFUSE_TSUP_A = common dso_local global i32 0, align 4
@EFUSE_RD_TIM_CONF_REG = common dso_local global i32 0, align 4
@EFUSE_TSUR_A = common dso_local global i32 0, align 4
@EFUSE_TRD = common dso_local global i32 0, align 4
@EFUSE_THR_A = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @esp_efuse_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_efuse_set_timing() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = call i32 (...) @esp_clk_apb_freq()
  store i32 %12, i32* %2, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 20000000
  br i1 %14, label %21, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 5000000
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 10000000
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %0
  store i32 40, i32* %3, align 4
  store i32 10368, i32* %4, align 4
  store i32 200, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %11, align 4
  br label %37

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 40000000
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 80, i32* %3, align 4
  store i32 20736, i32* %4, align 4
  store i32 400, i32* %7, align 4
  store i32 2, i32* %8, align 4
  store i32 2, i32* %11, align 4
  br label %36

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, 80000000
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 160, i32* %3, align 4
  store i32 41472, i32* %4, align 4
  store i32 800, i32* %7, align 4
  store i32 3, i32* %8, align 4
  store i32 3, i32* %11, align 4
  br label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @TAG, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @ESP_LOGE(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  store i32 %34, i32* %1, align 4
  br label %75

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %25
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* @EFUSE_DAC_CONF_REG, align 4
  %39 = load i32, i32* @EFUSE_DAC_CLK_DIV, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @REG_SET_FIELD(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @EFUSE_WR_TIM_CONF0_REG, align 4
  %43 = load i32, i32* @EFUSE_TPGM, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @REG_SET_FIELD(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @EFUSE_WR_TIM_CONF0_REG, align 4
  %47 = load i32, i32* @EFUSE_TPGM_INACTIVE, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @REG_SET_FIELD(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @EFUSE_WR_TIM_CONF0_REG, align 4
  %51 = load i32, i32* @EFUSE_THP_A, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @REG_SET_FIELD(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @EFUSE_WR_TIM_CONF1_REG, align 4
  %55 = load i32, i32* @EFUSE_PWR_ON_NUM, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @REG_SET_FIELD(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* @EFUSE_WR_TIM_CONF1_REG, align 4
  %59 = load i32, i32* @EFUSE_TSUP_A, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @REG_SET_FIELD(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @EFUSE_RD_TIM_CONF_REG, align 4
  %63 = load i32, i32* @EFUSE_TSUR_A, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @REG_SET_FIELD(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @EFUSE_RD_TIM_CONF_REG, align 4
  %67 = load i32, i32* @EFUSE_TRD, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @REG_SET_FIELD(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @EFUSE_RD_TIM_CONF_REG, align 4
  %71 = load i32, i32* @EFUSE_THR_A, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @REG_SET_FIELD(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @ESP_OK, align 4
  store i32 %74, i32* %1, align 4
  br label %75

75:                                               ; preds = %37, %30
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local i32 @esp_clk_apb_freq(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
