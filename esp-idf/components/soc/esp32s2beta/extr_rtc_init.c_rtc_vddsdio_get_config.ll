; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_init.c_rtc_vddsdio_get_config.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_init.c_rtc_vddsdio_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@RTC_CNTL_SDIO_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DREFH_SDIO_M = common dso_local global i32 0, align 4
@RTC_CNTL_DREFH_SDIO_S = common dso_local global i32 0, align 4
@RTC_CNTL_DREFM_SDIO_M = common dso_local global i32 0, align 4
@RTC_CNTL_DREFM_SDIO_S = common dso_local global i32 0, align 4
@RTC_CNTL_DREFL_SDIO_M = common dso_local global i32 0, align 4
@RTC_CNTL_DREFL_SDIO_S = common dso_local global i32 0, align 4
@RTC_CNTL_SDIO_FORCE = common dso_local global i32 0, align 4
@RTC_CNTL_XPD_SDIO_REG_M = common dso_local global i32 0, align 4
@RTC_CNTL_XPD_SDIO_REG_S = common dso_local global i32 0, align 4
@RTC_CNTL_SDIO_TIEH_M = common dso_local global i32 0, align 4
@RTC_CNTL_SDIO_TIEH_S = common dso_local global i32 0, align 4
@EFUSE_RD_REPEAT_DATA1_REG = common dso_local global i32 0, align 4
@EFUSE_SDIO_FORCE = common dso_local global i32 0, align 4
@EFUSE_SDIO_XPD_M = common dso_local global i32 0, align 4
@EFUSE_SDIO_XPD_S = common dso_local global i32 0, align 4
@EFUSE_SDIO_TIEH_M = common dso_local global i32 0, align 4
@EFUSE_SDIO_TIEH_S = common dso_local global i32 0, align 4
@EFUSE_SDIO_DREFM_M = common dso_local global i32 0, align 4
@EFUSE_SDIO_DREFM_S = common dso_local global i32 0, align 4
@EFUSE_SDIO_DREFL_M = common dso_local global i32 0, align 4
@EFUSE_SDIO_DREFL_S = common dso_local global i32 0, align 4
@EFUSE_RD_REPEAT_DATA0_REG = common dso_local global i32 0, align 4
@EFUSE_SDIO_DREFH_M = common dso_local global i32 0, align 4
@EFUSE_SDIO_DREFH_S = common dso_local global i32 0, align 4
@GPIO_STRAP_REG = common dso_local global i32 0, align 4
@RTC_VDDSDIO_TIEH_1_8V = common dso_local global i32 0, align 4
@RTC_VDDSDIO_TIEH_3_3V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_vddsdio_get_config(%struct.TYPE_3__* noalias sret %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @RTC_CNTL_SDIO_CONF_REG, align 4
  %6 = call i32 @REG_READ(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @RTC_CNTL_DREFH_SDIO_M, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @RTC_CNTL_DREFH_SDIO_S, align 4
  %11 = ashr i32 %9, %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @RTC_CNTL_DREFM_SDIO_M, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @RTC_CNTL_DREFM_SDIO_S, align 4
  %17 = ashr i32 %15, %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @RTC_CNTL_DREFL_SDIO_M, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @RTC_CNTL_DREFL_SDIO_S, align 4
  %23 = ashr i32 %21, %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @RTC_CNTL_SDIO_FORCE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @RTC_CNTL_XPD_SDIO_REG_M, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @RTC_CNTL_XPD_SDIO_REG_S, align 4
  %35 = ashr i32 %33, %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @RTC_CNTL_SDIO_TIEH_M, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @RTC_CNTL_SDIO_TIEH_S, align 4
  %41 = ashr i32 %39, %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %41, i32* %42, align 4
  br label %100

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* @EFUSE_RD_REPEAT_DATA1_REG, align 4
  %47 = call i32 @REG_READ(i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @EFUSE_SDIO_FORCE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @EFUSE_SDIO_XPD_M, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @EFUSE_SDIO_XPD_S, align 4
  %57 = ashr i32 %55, %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @EFUSE_SDIO_TIEH_M, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @EFUSE_SDIO_TIEH_S, align 4
  %63 = ashr i32 %61, %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @EFUSE_SDIO_DREFM_M, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @EFUSE_SDIO_DREFM_S, align 4
  %69 = ashr i32 %67, %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @EFUSE_SDIO_DREFL_M, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @EFUSE_SDIO_DREFL_S, align 4
  %75 = ashr i32 %73, %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @EFUSE_RD_REPEAT_DATA0_REG, align 4
  %78 = call i32 @REG_READ(i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @EFUSE_SDIO_DREFH_M, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @EFUSE_SDIO_DREFH_S, align 4
  %83 = ashr i32 %81, %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  br label %100

85:                                               ; preds = %45
  %86 = load i32, i32* @GPIO_STRAP_REG, align 4
  %87 = call i32 @REG_READ(i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @BIT(i32 5)
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @RTC_VDDSDIO_TIEH_1_8V, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @RTC_VDDSDIO_TIEH_3_3V, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %52, %29
  ret void
}

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
