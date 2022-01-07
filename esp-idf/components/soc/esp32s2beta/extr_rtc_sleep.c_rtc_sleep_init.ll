; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_sleep.c_rtc_sleep_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_sleep.c_rtc_sleep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@RTC_CNTL_PWC_REG = common dso_local global i32 0, align 4
@RTC_CNTL_MEM_FOLW_CPU = common dso_local global i32 0, align 4
@RTC_CNTL_FASTMEM_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_FASTMEM_FORCE_PU = common dso_local global i32 0, align 4
@RTC_CNTL_FASTMEM_FORCE_NOISO = common dso_local global i32 0, align 4
@RTC_CNTL_SLOWMEM_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_SLOWMEM_FORCE_PU = common dso_local global i32 0, align 4
@RTC_CNTL_SLOWMEM_FORCE_NOISO = common dso_local global i32 0, align 4
@RTC_CNTL_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_PWC_REG = common dso_local global i32 0, align 4
@RTC_CNTL_WIFI_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_BIAS_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DBG_ATTEN = common dso_local global i32 0, align 4
@RTC_CNTL_DBG_ATTEN_DEFAULT = common dso_local global i32 0, align 4
@RTC_CNTL_DG_WRAP_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_ANA_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_CKGEN_I2C_PU = common dso_local global i32 0, align 4
@RTC_CNTL_PLL_I2C_PU = common dso_local global i32 0, align 4
@RTC_CNTL_RFRX_PBUS_PU = common dso_local global i32 0, align 4
@RTC_CNTL_TXRF_I2C_PU = common dso_local global i32 0, align 4
@RTC_CNTL_SDIO_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SDIO_FORCE = common dso_local global i32 0, align 4
@RTC_CNTL_SDIO_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DBIAS_SLP = common dso_local global i32 0, align 4
@RTC_CNTL_DBIAS_WAK = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_DBIAS_WAK = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_DBIAS_SLP = common dso_local global i32 0, align 4
@RTC_CNTL_SLP_REJECT_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DEEP_SLP_REJECT_EN = common dso_local global i32 0, align 4
@RTC_CNTL_LIGHT_SLP_REJECT_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_sleep_init(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 13
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = call i32 @RTC_SLEEP_PD_CONFIG_ALL(i32 1)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @rtc_sleep_pd(i32 %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %16 = load i32, i32* @RTC_CNTL_MEM_FOLW_CPU, align 4
  %17 = call i32 @SET_PERI_REG_MASK(i32 %15, i32 %16)
  br label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %20 = load i32, i32* @RTC_CNTL_MEM_FOLW_CPU, align 4
  %21 = call i32 @CLEAR_PERI_REG_MASK(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %28 = load i32, i32* @RTC_CNTL_FASTMEM_PD_EN, align 4
  %29 = call i32 @SET_PERI_REG_MASK(i32 %27, i32 %28)
  %30 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %31 = load i32, i32* @RTC_CNTL_FASTMEM_FORCE_PU, align 4
  %32 = call i32 @CLEAR_PERI_REG_MASK(i32 %30, i32 %31)
  %33 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %34 = load i32, i32* @RTC_CNTL_FASTMEM_FORCE_NOISO, align 4
  %35 = call i32 @CLEAR_PERI_REG_MASK(i32 %33, i32 %34)
  br label %46

36:                                               ; preds = %22
  %37 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %38 = load i32, i32* @RTC_CNTL_FASTMEM_PD_EN, align 4
  %39 = call i32 @CLEAR_PERI_REG_MASK(i32 %37, i32 %38)
  %40 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %41 = load i32, i32* @RTC_CNTL_FASTMEM_FORCE_PU, align 4
  %42 = call i32 @SET_PERI_REG_MASK(i32 %40, i32 %41)
  %43 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %44 = load i32, i32* @RTC_CNTL_FASTMEM_FORCE_NOISO, align 4
  %45 = call i32 @SET_PERI_REG_MASK(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %26
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %52 = load i32, i32* @RTC_CNTL_SLOWMEM_PD_EN, align 4
  %53 = call i32 @SET_PERI_REG_MASK(i32 %51, i32 %52)
  %54 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %55 = load i32, i32* @RTC_CNTL_SLOWMEM_FORCE_PU, align 4
  %56 = call i32 @CLEAR_PERI_REG_MASK(i32 %54, i32 %55)
  %57 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %58 = load i32, i32* @RTC_CNTL_SLOWMEM_FORCE_NOISO, align 4
  %59 = call i32 @CLEAR_PERI_REG_MASK(i32 %57, i32 %58)
  br label %70

60:                                               ; preds = %46
  %61 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %62 = load i32, i32* @RTC_CNTL_SLOWMEM_PD_EN, align 4
  %63 = call i32 @CLEAR_PERI_REG_MASK(i32 %61, i32 %62)
  %64 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %65 = load i32, i32* @RTC_CNTL_SLOWMEM_FORCE_PU, align 4
  %66 = call i32 @SET_PERI_REG_MASK(i32 %64, i32 %65)
  %67 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %68 = load i32, i32* @RTC_CNTL_SLOWMEM_FORCE_NOISO, align 4
  %69 = call i32 @SET_PERI_REG_MASK(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %50
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %76 = load i32, i32* @RTC_CNTL_PD_EN, align 4
  %77 = call i32 @SET_PERI_REG_MASK(i32 %75, i32 %76)
  br label %82

78:                                               ; preds = %70
  %79 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %80 = load i32, i32* @RTC_CNTL_PD_EN, align 4
  %81 = call i32 @CLEAR_PERI_REG_MASK(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %88 = load i32, i32* @RTC_CNTL_WIFI_PD_EN, align 4
  %89 = call i32 @SET_PERI_REG_MASK(i32 %87, i32 %88)
  br label %94

90:                                               ; preds = %82
  %91 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %92 = load i32, i32* @RTC_CNTL_WIFI_PD_EN, align 4
  %93 = call i32 @CLEAR_PERI_REG_MASK(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %86
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load i32, i32* @RTC_CNTL_BIAS_CONF_REG, align 4
  %100 = load i32, i32* @RTC_CNTL_DBG_ATTEN, align 4
  %101 = load i32, i32* @RTC_CNTL_DBG_ATTEN_DEFAULT, align 4
  %102 = call i32 @REG_SET_FIELD(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %104 = load i32, i32* @RTC_CNTL_DG_WRAP_PD_EN, align 4
  %105 = call i32 @SET_PERI_REG_MASK(i32 %103, i32 %104)
  %106 = load i32, i32* @RTC_CNTL_ANA_CONF_REG, align 4
  %107 = load i32, i32* @RTC_CNTL_CKGEN_I2C_PU, align 4
  %108 = load i32, i32* @RTC_CNTL_PLL_I2C_PU, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @RTC_CNTL_RFRX_PBUS_PU, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @RTC_CNTL_TXRF_I2C_PU, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @CLEAR_PERI_REG_MASK(i32 %106, i32 %113)
  br label %122

115:                                              ; preds = %94
  %116 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %117 = load i32, i32* @RTC_CNTL_DG_WRAP_PD_EN, align 4
  %118 = call i32 @CLEAR_PERI_REG_MASK(i32 %116, i32 %117)
  %119 = load i32, i32* @RTC_CNTL_BIAS_CONF_REG, align 4
  %120 = load i32, i32* @RTC_CNTL_DBG_ATTEN, align 4
  %121 = call i32 @REG_SET_FIELD(i32 %119, i32 %120, i32 6)
  br label %122

122:                                              ; preds = %115, %98
  %123 = load i32, i32* @RTC_CNTL_SDIO_CONF_REG, align 4
  %124 = load i32, i32* @RTC_CNTL_SDIO_FORCE, align 4
  %125 = call i32 @REG_CLR_BIT(i32 %123, i32 %124)
  %126 = load i32, i32* @RTC_CNTL_SDIO_CONF_REG, align 4
  %127 = load i32, i32* @RTC_CNTL_SDIO_PD_EN, align 4
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @REG_SET_FIELD(i32 %126, i32 %127, i32 %129)
  %131 = load i32, i32* @RTC_CNTL_REG, align 4
  %132 = load i32, i32* @RTC_CNTL_DBIAS_SLP, align 4
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @REG_SET_FIELD(i32 %131, i32 %132, i32 %134)
  %136 = load i32, i32* @RTC_CNTL_REG, align 4
  %137 = load i32, i32* @RTC_CNTL_DBIAS_WAK, align 4
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @REG_SET_FIELD(i32 %136, i32 %137, i32 %139)
  %141 = load i32, i32* @RTC_CNTL_REG, align 4
  %142 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @REG_SET_FIELD(i32 %141, i32 %142, i32 %144)
  %146 = load i32, i32* @RTC_CNTL_REG, align 4
  %147 = load i32, i32* @RTC_CNTL_DIG_DBIAS_SLP, align 4
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @REG_SET_FIELD(i32 %146, i32 %147, i32 %149)
  %151 = load i32, i32* @RTC_CNTL_SLP_REJECT_CONF_REG, align 4
  %152 = load i32, i32* @RTC_CNTL_DEEP_SLP_REJECT_EN, align 4
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @REG_SET_FIELD(i32 %151, i32 %152, i32 %154)
  %156 = load i32, i32* @RTC_CNTL_SLP_REJECT_CONF_REG, align 4
  %157 = load i32, i32* @RTC_CNTL_LIGHT_SLP_REJECT_EN, align 4
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @REG_SET_FIELD(i32 %156, i32 %157, i32 %159)
  ret void
}

declare dso_local i32 @RTC_SLEEP_PD_CONFIG_ALL(i32) #1

declare dso_local i32 @rtc_sleep_pd(i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
