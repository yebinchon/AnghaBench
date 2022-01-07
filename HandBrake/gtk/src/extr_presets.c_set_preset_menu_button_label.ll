; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_set_preset_menu_button_label.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_set_preset_menu_button_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c" <span alpha=\2270%\22>></span> \00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"presets_menu_button_label\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@HB_PRESET_TYPE_CUSTOM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Official\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"PresetDescription\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"presets_menu_button\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @set_preset_menu_button_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_preset_menu_button_label(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @hb_preset_get(i32* %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = call i32 @ghb_dict_get_int(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i8* @preset_get_fullname(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @GHB_WIDGET(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32* @GTK_LABEL(i32* %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @HB_PRESET_TYPE_CUSTOM, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %28, i8* %29)
  store i8* %30, i8** %6, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @gtk_label_set_markup(i32* %31, i8* %32)
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i32*, i32** %10, align 8
  %39 = call i8* @ghb_dict_get_string(i32* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i8* %39, i8** %7, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @GHB_WIDGET(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @gtk_widget_set_tooltip_text(i32* %44, i8* %45)
  ret void
}

declare dso_local i32* @hb_preset_get(i32*) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i8* @preset_get_fullname(i32*, i8*, i32) #1

declare dso_local i32* @GTK_LABEL(i32*) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*, i8*) #1

declare dso_local i32 @gtk_label_set_markup(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i32 @gtk_widget_set_tooltip_text(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
