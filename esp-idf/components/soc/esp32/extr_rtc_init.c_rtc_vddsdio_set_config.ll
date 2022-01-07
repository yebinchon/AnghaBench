; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_init.c_rtc_vddsdio_set_config.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_init.c_rtc_vddsdio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@RTC_CNTL_SDIO_FORCE_S = common dso_local global i32 0, align 4
@RTC_CNTL_XPD_SDIO_REG_S = common dso_local global i32 0, align 4
@RTC_CNTL_DREFH_SDIO_S = common dso_local global i32 0, align 4
@RTC_CNTL_DREFM_SDIO_S = common dso_local global i32 0, align 4
@RTC_CNTL_DREFL_SDIO_S = common dso_local global i32 0, align 4
@RTC_CNTL_SDIO_TIEH_S = common dso_local global i32 0, align 4
@RTC_CNTL_SDIO_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_SDIO_CONF_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_vddsdio_set_config(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = load i32, i32* @RTC_CNTL_SDIO_FORCE_S, align 4
  %6 = shl i32 %4, %5
  %7 = load i32, i32* %2, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %2, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RTC_CNTL_XPD_SDIO_REG_S, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* %2, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %2, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RTC_CNTL_DREFH_SDIO_S, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %2, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %2, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RTC_CNTL_DREFM_SDIO_S, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %2, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %2, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RTC_CNTL_DREFL_SDIO_S, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %2, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %2, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RTC_CNTL_SDIO_TIEH_S, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %2, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* @RTC_CNTL_SDIO_PD_EN, align 4
  %40 = load i32, i32* %2, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* @RTC_CNTL_SDIO_CONF_REG, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @REG_WRITE(i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
