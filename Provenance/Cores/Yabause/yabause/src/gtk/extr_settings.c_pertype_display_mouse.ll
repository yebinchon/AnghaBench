; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_settings.c_pertype_display_mouse.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_settings.c_pertype_display_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@keyfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"General\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"MousePerCore\00", align 1
@mousepercores = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"MouseSpeed\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@mouse_speed_change = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@PerMouseNames = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@percore_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @pertype_display_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pertype_display_mouse(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i32* @gtk_vbox_new(i32 %8, i32 10)
  store i32* %9, i32** %5, align 8
  %10 = load i32, i32* @keyfile, align 4
  %11 = load i32, i32* @mousepercores, align 4
  %12 = call i32* @yui_range_new(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  store i32* %12, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @GTK_CONTAINER(i32* %13)
  %15 = call i32 @gtk_container_set_border_width(i32 %14, i32 0)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @GTK_CONTAINER(i32* %16)
  %18 = call i32 @gtk_container_set_border_width(i32 %17, i32 10)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @GTK_BOX(i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @gtk_box_pack_start(i32 %20, i32* %21, i32 %22, i32 %23, i32 0)
  %25 = call i32* @gtk_hscale_new_with_range(i32 0, i32 10, double 1.000000e-01)
  store i32* %25, i32** %3, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @GTK_RANGE(i32* %26)
  %28 = load i32, i32* @keyfile, align 4
  %29 = call i32 @g_key_file_get_double(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %30 = call i32 @gtk_range_set_value(i32 %27, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @mouse_speed_change, align 4
  %33 = call i32 @G_CALLBACK(i32 %32)
  %34 = call i32 @g_signal_connect(i32* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32* null)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @GTK_BOX(i32* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @gtk_box_pack_start(i32 %36, i32* %37, i32 %38, i32 %39, i32 0)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @GTK_BOX(i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @gtk_box_pack_start(i32 %42, i32* %43, i32 %44, i32 %45, i32 0)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @GTK_BOX(i32* %47)
  %49 = call i32* (...) @gtk_vseparator_new()
  %50 = load i32, i32* @TRUE, align 4
  %51 = load i32, i32* @TRUE, align 4
  %52 = call i32 @gtk_box_pack_start(i32 %48, i32* %49, i32 %50, i32 %51, i32 0)
  %53 = load i32, i32* @keyfile, align 4
  %54 = load i32, i32* @PerMouseNames, align 4
  %55 = call i32* @yui_input_entry_new(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  store i32* %55, i32** %4, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i32* @g_list_append(i32* %56, i32* %57)
  store i32* %58, i32** %7, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @GTK_CONTAINER(i32* %59)
  %61 = call i32 @gtk_container_set_border_width(i32 %60, i32 10)
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @GTK_BOX(i32* %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @TRUE, align 4
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i32 @gtk_box_pack_start(i32 %63, i32* %64, i32 %65, i32 %66, i32 0)
  %68 = load i32*, i32** %6, align 8
  %69 = call %struct.TYPE_2__* @YUI_RANGE(i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @GTK_COMBO_BOX(i32 %71)
  %73 = load i32, i32* @percore_changed, align 4
  %74 = call i32 @G_CALLBACK(i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @g_signal_connect(i32* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %74, i32* %75)
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @gtk_widget_show_all(i32* %77)
  ret void
}

declare dso_local i32* @gtk_vbox_new(i32, i32) #1

declare dso_local i32* @yui_range_new(i32, i8*, i8*, i32) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32 @gtk_box_pack_start(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(i32*) #1

declare dso_local i32* @gtk_hscale_new_with_range(i32, i32, double) #1

declare dso_local i32 @gtk_range_set_value(i32, i32) #1

declare dso_local i32 @GTK_RANGE(i32*) #1

declare dso_local i32 @g_key_file_get_double(i32, i8*, i8*, i32*) #1

declare dso_local i32 @g_signal_connect(i32*, i8*, i32, i32*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32* @gtk_vseparator_new(...) #1

declare dso_local i32* @yui_input_entry_new(i32, i8*, i32) #1

declare dso_local i32* @g_list_append(i32*, i32*) #1

declare dso_local i32* @GTK_COMBO_BOX(i32) #1

declare dso_local %struct.TYPE_2__* @YUI_RANGE(i32*) #1

declare dso_local i32 @gtk_widget_show_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
