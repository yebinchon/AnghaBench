; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_source_dialog_extra_widgets.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_source_dialog_extra_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"source_dialog_extra_widgets ()\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"source_device\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Not Selected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @source_dialog_extra_widgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @source_dialog_extra_widgets(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = call i32 @g_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @GHB_WIDGET(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32* @GTK_COMBO_BOX_TEXT(i32 %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @GTK_COMBO_BOX(i32* %15)
  %17 = call i32 @gtk_combo_box_get_model(i32 %16)
  %18 = call i32 @GTK_LIST_STORE(i32 %17)
  %19 = call i32 @gtk_list_store_clear(i32 %18)
  %20 = call %struct.TYPE_7__* (...) @dvd_device_list()
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @gtk_combo_box_text_append_text(i32* %21, i32* %22)
  br label %24

24:                                               ; preds = %27, %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @get_dvd_device_name(i32 %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @gtk_combo_box_text_append_text(i32* %32, i32* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @g_free(i32* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @free_drive(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %7, align 8
  br label %24

44:                                               ; preds = %24
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = call i32 @g_list_free(%struct.TYPE_7__* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @GTK_COMBO_BOX(i32* %47)
  %49 = call i32 @gtk_combo_box_set_active(i32 %48, i32 0)
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32* @GTK_COMBO_BOX_TEXT(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_list_store_clear(i32) #1

declare dso_local i32 @GTK_LIST_STORE(i32) #1

declare dso_local i32 @gtk_combo_box_get_model(i32) #1

declare dso_local i32 @GTK_COMBO_BOX(i32*) #1

declare dso_local %struct.TYPE_7__* @dvd_device_list(...) #1

declare dso_local i32 @gtk_combo_box_text_append_text(i32*, i32*) #1

declare dso_local i32* @_(i8*) #1

declare dso_local i32* @get_dvd_device_name(i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @free_drive(i32) #1

declare dso_local i32 @g_list_free(%struct.TYPE_7__*) #1

declare dso_local i32 @gtk_combo_box_set_active(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
