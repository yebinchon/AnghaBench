; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_init.c_rtc_vddsdio_get_config.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_init.c_rtc_vddsdio_get_config.c"
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
@EFUSE_BLK0_RDATA4_REG = common dso_local global i32 0, align 4
@EFUSE_RD_SDIO_FORCE = common dso_local global i32 0, align 4
@EFUSE_RD_XPD_SDIO_REG_M = common dso_local global i32 0, align 4
@EFUSE_RD_XPD_SDIO_REG_S = common dso_local global i32 0, align 4
@EFUSE_RD_SDIO_TIEH_M = common dso_local global i32 0, align 4
@EFUSE_RD_SDIO_TIEH_S = common dso_local global i32 0, align 4
@EFUSE_BLK0_RDATA3_REG = common dso_local global i32 0, align 4
@EFUSE_RD_BLK3_PART_RESERVE = common dso_local global i32 0, align 4
@EFUSE_RD_SDIO_DREFH_M = common dso_local global i32 0, align 4
@EFUSE_RD_SDIO_DREFH_S = common dso_local global i32 0, align 4
@EFUSE_RD_SDIO_DREFM_M = common dso_local global i32 0, align 4
@EFUSE_RD_SDIO_DREFM_S = common dso_local global i32 0, align 4
@EFUSE_RD_SDIO_DREFL_M = common dso_local global i32 0, align 4
@EFUSE_RD_SDIO_DREFL_S = common dso_local global i32 0, align 4
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
  br label %104

43:                                               ; preds = %1
  %44 = load i32, i32* @EFUSE_BLK0_RDATA4_REG, align 4
  %45 = call i32 @REG_READ(i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @EFUSE_RD_SDIO_FORCE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @EFUSE_RD_XPD_SDIO_REG_M, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @EFUSE_RD_XPD_SDIO_REG_S, align 4
  %56 = ashr i32 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @EFUSE_RD_SDIO_TIEH_M, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @EFUSE_RD_SDIO_TIEH_S, align 4
  %62 = ashr i32 %60, %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @EFUSE_BLK0_RDATA3_REG, align 4
  %65 = load i32, i32* @EFUSE_RD_BLK3_PART_RESERVE, align 4
  %66 = call i64 @REG_GET_FIELD(i32 %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %50
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @EFUSE_RD_SDIO_DREFH_M, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @EFUSE_RD_SDIO_DREFH_S, align 4
  %73 = ashr i32 %71, %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @EFUSE_RD_SDIO_DREFM_M, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @EFUSE_RD_SDIO_DREFM_S, align 4
  %79 = ashr i32 %77, %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @EFUSE_RD_SDIO_DREFL_M, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @EFUSE_RD_SDIO_DREFL_S, align 4
  %85 = ashr i32 %83, %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %68, %50
  br label %104

88:                                               ; preds = %43
  %89 = load i32, i32* @GPIO_STRAP_REG, align 4
  %90 = call i32 @REG_READ(i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @BIT(i32 5)
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @RTC_VDDSDIO_TIEH_1_8V, align 4
  br label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @RTC_VDDSDIO_TIEH_3_3V, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %87, %29
  ret void
}

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
