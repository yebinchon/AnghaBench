; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_main.c_ghb_idle_ui_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_main.c_ghb_idle_ui_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@dvd_device = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"scan_source\00", align 1
@ghb_idle_scan = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"default_source\00", align 1
@arg_preset = common dso_local global i32* null, align 8
@HB_PRESET_TYPE_ALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ghb_idle_ui_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ghb_settings_to_ui(%struct.TYPE_8__* %4, i32 %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ghb_settings_to_ui(%struct.TYPE_8__* %9, i32 %12)
  %14 = load i32*, i32** @dvd_device, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @dvd_device, align 8
  %21 = call i32 @ghb_dict_set_string(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %20)
  %22 = load i64, i64* @ghb_idle_scan, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = call i32 @g_idle_add(i32 %23, %struct.TYPE_8__* %24)
  br label %37

26:                                               ; preds = %1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @ghb_dict_get_value(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32* %30, i32** %3, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @ghb_value_dup(i32* %34)
  %36 = call i32 @ghb_dict_set(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %26, %16
  %38 = load i32*, i32** @arg_preset, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = load i32*, i32** @arg_preset, align 8
  %43 = load i32, i32* @HB_PRESET_TYPE_ALL, align 4
  %44 = call i32 @ghb_select_preset(%struct.TYPE_8__* %41, i32* %42, i32 %43)
  br label %48

45:                                               ; preds = %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = call i32 @ghb_select_default_preset(%struct.TYPE_8__* %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = call i32 @ghb_check_all_depencencies(%struct.TYPE_8__* %49)
  %51 = load i32, i32* @FALSE, align 4
  ret i32 %51
}

declare dso_local i32 @ghb_settings_to_ui(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ghb_dict_set_string(i32, i8*, i32*) #1

declare dso_local i32 @g_idle_add(i32, %struct.TYPE_8__*) #1

declare dso_local i32* @ghb_dict_get_value(i32, i8*) #1

declare dso_local i32 @ghb_dict_set(i32, i8*, i32) #1

declare dso_local i32 @ghb_value_dup(i32*) #1

declare dso_local i32 @ghb_select_preset(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @ghb_select_default_preset(%struct.TYPE_8__*) #1

declare dso_local i32 @ghb_check_all_depencencies(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
