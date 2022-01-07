; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_sleep.c_rtc_sleep_pd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_sleep.c_rtc_sleep_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@RTC_CNTL_DIG_PWC_REG = common dso_local global i32 0, align 4
@RTC_CNTL_LSLP_MEM_FORCE_PU = common dso_local global i32 0, align 4
@RTC_CNTL_PWC_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SLOWMEM_FORCE_LPU = common dso_local global i32 0, align 4
@RTC_CNTL_FASTMEM_FORCE_LPU = common dso_local global i32 0, align 4
@DPORT_MEM_PD_MASK_REG = common dso_local global i32 0, align 4
@DPORT_LSLP_MEM_PD_MASK = common dso_local global i32 0, align 4
@I2S_PLC_MEM_FORCE_PU = common dso_local global i32 0, align 4
@I2S_FIFO_FORCE_PU = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @rtc_sleep_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_sleep_pd(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %3 = load i32, i32* @RTC_CNTL_LSLP_MEM_FORCE_PU, align 4
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %5 = load i32, i32* %4, align 8
  %6 = xor i32 %5, -1
  %7 = call i32 @REG_SET_FIELD(i32 %2, i32 %3, i32 %6)
  %8 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %9 = load i32, i32* @RTC_CNTL_SLOWMEM_FORCE_LPU, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, -1
  %13 = call i32 @REG_SET_FIELD(i32 %8, i32 %9, i32 %12)
  %14 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %15 = load i32, i32* @RTC_CNTL_FASTMEM_FORCE_LPU, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  %19 = call i32 @REG_SET_FIELD(i32 %14, i32 %15, i32 %18)
  %20 = load i32, i32* @DPORT_MEM_PD_MASK_REG, align 4
  %21 = load i32, i32* @DPORT_LSLP_MEM_PD_MASK, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = xor i32 %23, -1
  %25 = call i32 @DPORT_REG_SET_FIELD(i32 %20, i32 %21, i32 %24)
  %26 = call i32 @I2S_PD_CONF_REG(i32 0)
  %27 = load i32, i32* @I2S_PLC_MEM_FORCE_PU, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %29, -1
  %31 = call i32 @REG_SET_FIELD(i32 %26, i32 %27, i32 %30)
  %32 = call i32 @I2S_PD_CONF_REG(i32 0)
  %33 = load i32, i32* @I2S_FIFO_FORCE_PU, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, -1
  %37 = call i32 @REG_SET_FIELD(i32 %32, i32 %33, i32 %36)
  %38 = load i32, i32* @BBPD_CTRL, align 4
  %39 = load i32, i32* @BB_FFT_FORCE_PU, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %41, -1
  %43 = call i32 @REG_SET_FIELD(i32 %38, i32 %39, i32 %42)
  %44 = load i32, i32* @BBPD_CTRL, align 4
  %45 = load i32, i32* @BB_DC_EST_FORCE_PU, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = xor i32 %47, -1
  %49 = call i32 @REG_SET_FIELD(i32 %44, i32 %45, i32 %48)
  %50 = load i32, i32* @NRXPD_CTRL, align 4
  %51 = load i32, i32* @NRX_RX_ROT_FORCE_PU, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, -1
  %55 = call i32 @REG_SET_FIELD(i32 %50, i32 %51, i32 %54)
  %56 = load i32, i32* @NRXPD_CTRL, align 4
  %57 = load i32, i32* @NRX_VIT_FORCE_PU, align 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %59, -1
  %61 = call i32 @REG_SET_FIELD(i32 %56, i32 %57, i32 %60)
  %62 = load i32, i32* @NRXPD_CTRL, align 4
  %63 = load i32, i32* @NRX_DEMAP_FORCE_PU, align 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 @REG_SET_FIELD(i32 %62, i32 %63, i32 %66)
  %68 = load i32, i32* @FE_GEN_CTRL, align 4
  %69 = load i32, i32* @FE_IQ_EST_FORCE_PU, align 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = xor i32 %71, -1
  %73 = call i32 @REG_SET_FIELD(i32 %68, i32 %69, i32 %72)
  %74 = load i32, i32* @FE2_TX_INTERP_CTRL, align 4
  %75 = load i32, i32* @FE2_TX_INF_FORCE_PU, align 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = xor i32 %77, -1
  %79 = call i32 @REG_SET_FIELD(i32 %74, i32 %75, i32 %78)
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @DPORT_REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @I2S_PD_CONF_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
