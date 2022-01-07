; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_sleep_modes.c_ext0_wakeup_prepare.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_sleep_modes.c_ext0_wakeup_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@s_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@RTC_IO_EXT_WAKEUP0_REG = common dso_local global i32 0, align 4
@RTC_IO_EXT_WAKEUP0_SEL = common dso_local global i32 0, align 4
@RTC_CNTL_EXT_WAKEUP_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_EXT_WAKEUP0_LV_S = common dso_local global i32 0, align 4
@GPIO_PIN_COUNT = common dso_local global i64 0, align 8
@rtc_gpio_reg = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ext0_wakeup_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext0_wakeup_prepare() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_config, i32 0, i32 0), align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @RTC_IO_EXT_WAKEUP0_REG, align 4
  %5 = load i32, i32* @RTC_IO_EXT_WAKEUP0_SEL, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @REG_SET_FIELD(i32 %4, i32 %5, i32 %6)
  %8 = load i32, i32* @RTC_CNTL_EXT_WAKEUP_CONF_REG, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_config, i32 0, i32 1), align 4
  %10 = load i32, i32* @RTC_CNTL_EXT_WAKEUP0_LV_S, align 4
  %11 = call i32 @SET_PERI_REG_BITS(i32 %8, i32 1, i32 %9, i32 %10)
  store i64 0, i64* %2, align 8
  br label %12

12:                                               ; preds = %42, %0
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @GPIO_PIN_COUNT, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load i64, i64* %2, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @RTC_GPIO_IS_VALID_GPIO(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @rtc_gpio_reg, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @rtc_gpio_reg, align 8
  %32 = load i64, i64* %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @rtc_gpio_reg, align 8
  %37 = load i64, i64* %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %45

41:                                               ; preds = %21, %16
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %2, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %2, align 8
  br label %12

45:                                               ; preds = %25, %12
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @SET_PERI_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i64 @RTC_GPIO_IS_VALID_GPIO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
