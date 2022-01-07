; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_sleep.c_rtc_sleep_pd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_sleep.c_rtc_sleep_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@RTC_CNTL_DIG_PWC_REG = common dso_local global i32 0, align 4
@RTC_CNTL_LSLP_MEM_FORCE_PU = common dso_local global i32 0, align 4
@RTC_CNTL_PWC_REG = common dso_local global i32 0, align 4
@RTC_CNTL_FASTMEM_FORCE_LPU = common dso_local global i32 0, align 4
@RTC_CNTL_SLOWMEM_FORCE_LPU = common dso_local global i32 0, align 4
@I2S_PLC_MEM_FORCE_PU = common dso_local global i32 0, align 4
@I2S_FIFO_FORCE_PU = common dso_local global i32 0, align 4
@APB_CTRL_FRONT_END_MEM_PD_REG = common dso_local global i32 0, align 4
@APB_CTRL_DC_MEM_FORCE_PU = common dso_local global i32 0, align 4
@APB_CTRL_PBUS_MEM_FORCE_PU = common dso_local global i32 0, align 4
@APB_CTRL_AGC_MEM_FORCE_PU = common dso_local global i32 0, align 4
@BBPD_CTRL = common dso_local global i32 0, align 4
@BB_FFT_FORCE_PU = common dso_local global i32 0, align 4
@BB_DC_EST_FORCE_PU = common dso_local global i32 0, align 4
@NRXPD_CTRL = common dso_local global i32 0, align 4
@NRX_RX_ROT_FORCE_PU = common dso_local global i32 0, align 4
@NRX_VIT_FORCE_PU = common dso_local global i32 0, align 4
@NRX_DEMAP_FORCE_PU = common dso_local global i32 0, align 4
@FE_GEN_CTRL = common dso_local global i32 0, align 4
@FE_IQ_EST_FORCE_PU = common dso_local global i32 0, align 4
@FE2_TX_INTERP_CTRL = common dso_local global i32 0, align 4
@FE2_TX_INF_FORCE_PU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_sleep_pd(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %3 = load i32, i32* @RTC_CNTL_LSLP_MEM_FORCE_PU, align 4
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @REG_SET_FIELD(i32 %2, i32 %3, i32 %5)
  %7 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %8 = load i32, i32* @RTC_CNTL_FASTMEM_FORCE_LPU, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @REG_SET_FIELD(i32 %7, i32 %8, i32 %10)
  %12 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %13 = load i32, i32* @RTC_CNTL_SLOWMEM_FORCE_LPU, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @REG_SET_FIELD(i32 %12, i32 %13, i32 %15)
  %17 = call i32 @I2S_PD_CONF_REG(i32 0)
  %18 = load i32, i32* @I2S_PLC_MEM_FORCE_PU, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @REG_SET_FIELD(i32 %17, i32 %18, i32 %20)
  %22 = call i32 @I2S_PD_CONF_REG(i32 0)
  %23 = load i32, i32* @I2S_FIFO_FORCE_PU, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @REG_SET_FIELD(i32 %22, i32 %23, i32 %25)
  %27 = load i32, i32* @APB_CTRL_FRONT_END_MEM_PD_REG, align 4
  %28 = load i32, i32* @APB_CTRL_DC_MEM_FORCE_PU, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %30)
  %32 = load i32, i32* @APB_CTRL_FRONT_END_MEM_PD_REG, align 4
  %33 = load i32, i32* @APB_CTRL_PBUS_MEM_FORCE_PU, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @REG_SET_FIELD(i32 %32, i32 %33, i32 %35)
  %37 = load i32, i32* @APB_CTRL_FRONT_END_MEM_PD_REG, align 4
  %38 = load i32, i32* @APB_CTRL_AGC_MEM_FORCE_PU, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @REG_SET_FIELD(i32 %37, i32 %38, i32 %40)
  %42 = load i32, i32* @BBPD_CTRL, align 4
  %43 = load i32, i32* @BB_FFT_FORCE_PU, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @REG_SET_FIELD(i32 %42, i32 %43, i32 %45)
  %47 = load i32, i32* @BBPD_CTRL, align 4
  %48 = load i32, i32* @BB_DC_EST_FORCE_PU, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @REG_SET_FIELD(i32 %47, i32 %48, i32 %50)
  %52 = load i32, i32* @NRXPD_CTRL, align 4
  %53 = load i32, i32* @NRX_RX_ROT_FORCE_PU, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @REG_SET_FIELD(i32 %52, i32 %53, i32 %55)
  %57 = load i32, i32* @NRXPD_CTRL, align 4
  %58 = load i32, i32* @NRX_VIT_FORCE_PU, align 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @REG_SET_FIELD(i32 %57, i32 %58, i32 %60)
  %62 = load i32, i32* @NRXPD_CTRL, align 4
  %63 = load i32, i32* @NRX_DEMAP_FORCE_PU, align 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @REG_SET_FIELD(i32 %62, i32 %63, i32 %65)
  %67 = load i32, i32* @FE_GEN_CTRL, align 4
  %68 = load i32, i32* @FE_IQ_EST_FORCE_PU, align 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @REG_SET_FIELD(i32 %67, i32 %68, i32 %70)
  %72 = load i32, i32* @FE2_TX_INTERP_CTRL, align 4
  %73 = load i32, i32* @FE2_TX_INF_FORCE_PU, align 4
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @REG_SET_FIELD(i32 %72, i32 %73, i32 %75)
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @I2S_PD_CONF_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
