; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_ext0_wakeup_prepare.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_ext0_wakeup_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@s_config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@RTC_IO_EXT_WAKEUP0_REG = common dso_local global i32 0, align 4
@RTC_IO_EXT_WAKEUP0_SEL = common dso_local global i32 0, align 4
@RTC_CNTL_EXT_WAKEUP_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_EXT_WAKEUP0_LV_S = common dso_local global i32 0, align 4
@GPIO_PIN_COUNT = common dso_local global i64 0, align 8
@rtc_gpio_desc = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ext0_wakeup_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext0_wakeup_prepare() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_config, i32 0, i32 0), align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @RTC_IO_EXT_WAKEUP0_REG, align 4
  %6 = load i32, i32* @RTC_IO_EXT_WAKEUP0_SEL, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @REG_SET_FIELD(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @RTC_CNTL_EXT_WAKEUP_CONF_REG, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_config, i32 0, i32 1), align 4
  %11 = load i32, i32* @RTC_CNTL_EXT_WAKEUP0_LV_S, align 4
  %12 = call i32 @SET_PERI_REG_BITS(i32 %9, i32 1, i32 %10, i32 %11)
  store i64 0, i64* %2, align 8
  br label %13

13:                                               ; preds = %49, %0
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @GPIO_PIN_COUNT, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rtc_gpio_desc, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %3, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %17
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @REG_SET_BIT(i32 %29, i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SET_PERI_REG_BITS(i32 %36, i32 3, i32 0, i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @REG_SET_BIT(i32 %43, i32 %46)
  br label %52

48:                                               ; preds = %17
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %2, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %2, align 8
  br label %13

52:                                               ; preds = %26, %13
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @SET_PERI_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
