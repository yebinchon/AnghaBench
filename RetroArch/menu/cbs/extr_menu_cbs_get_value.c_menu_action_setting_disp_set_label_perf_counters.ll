; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_perf_counters.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_perf_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_perf_counter = type { i32 }

@MENU_SETTINGS_PERF_COUNTERS_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i8*, i8*, i64, i8*, i8*, i64)* @menu_action_setting_disp_set_label_perf_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_action_setting_disp_set_label_perf_counters(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4, i8* %5, i64 %6, i8* %7, i8* %8, i64 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.retro_perf_counter**, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i64 %9, i64* %20, align 8
  %23 = call %struct.retro_perf_counter** (...) @retro_get_perf_counter_rarch()
  store %struct.retro_perf_counter** %23, %struct.retro_perf_counter*** %21, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @MENU_SETTINGS_PERF_COUNTERS_BEGIN, align 4
  %26 = sub i32 %24, %25
  store i32 %26, i32* %22, align 4
  %27 = load %struct.retro_perf_counter**, %struct.retro_perf_counter*** %21, align 8
  %28 = load i32, i32* %22, align 4
  %29 = load i8*, i8** %16, align 8
  %30 = load i64, i64* %17, align 8
  %31 = load i8*, i8** %19, align 8
  %32 = load i64, i64* %17, align 8
  %33 = load i8*, i8** %18, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @general_disp_set_label_perf_counters(%struct.retro_perf_counter** %27, i32 %28, i8* %29, i64 %30, i8* %31, i64 %32, i8* %33, i32* %34)
  ret void
}

declare dso_local %struct.retro_perf_counter** @retro_get_perf_counter_rarch(...) #1

declare dso_local i32 @general_disp_set_label_perf_counters(%struct.retro_perf_counter**, i32, i8*, i64, i8*, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
