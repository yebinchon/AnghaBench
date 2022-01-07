; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_pm.c_pm_set_sleep_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_pm.c_pm_set_sleep_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@PM_SW_REJECT = common dso_local global i32 0, align 4
@PM_SW_NOREJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_set_sleep_mode(i32 %0, void ()* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca void ()*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store void ()* %1, void ()** %5, align 8
  %7 = load void ()*, void ()** %5, align 8
  %8 = call i32 (...) @pm_mac_deinit()
  %9 = call i64 (...) @pm_check_mac_idle()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 (...) @pm_mac_init()
  %13 = load i32, i32* @PM_SW_REJECT, align 4
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 24, i1 false)
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %24 [
    i32 128, label %17
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 4, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = call i32 @rtc_sleep_init(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %6)
  br label %26

24:                                               ; preds = %14
  %25 = call i32 @assert(i32 0)
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32, i32* @PM_SW_NOREJECT, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @pm_mac_deinit(...) #1

declare dso_local i64 @pm_check_mac_idle(...) #1

declare dso_local i32 @pm_mac_init(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rtc_sleep_init(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
