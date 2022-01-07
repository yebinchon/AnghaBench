; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiscsp.c_yui_scsp_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiscsp.c_yui_scsp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, %struct.TYPE_19__* }

@.str = private unnamed_addr constant [5 x i8] c"SCSP\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@yui_scsp_spin_cursor_changed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@yui_scsp_destroy = common dso_local global i32 0, align 4
@GTK_POLICY_AUTOMATIC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @yui_scsp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_scsp_init(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %6 = call i32 @GTK_WINDOW(%struct.TYPE_19__* %5)
  %7 = call i32 @gtk_window_set_title(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @FALSE, align 4
  %9 = call %struct.TYPE_19__* @gtk_vbox_new(i32 %8, i32 2)
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %11, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %15 = call i32 @GTK_CONTAINER(%struct.TYPE_19__* %14)
  %16 = call i32 @gtk_container_set_border_width(i32 %15, i32 4)
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %18 = call i32 @GTK_CONTAINER(%struct.TYPE_19__* %17)
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %22 = call i32 @gtk_container_add(i32 %18, %struct.TYPE_19__* %21)
  %23 = call %struct.TYPE_19__* @gtk_spin_button_new_with_range(i32 0, i32 31, i32 1)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 4
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %25, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = call i32 @GTK_SPIN_BUTTON(%struct.TYPE_19__* %28)
  %30 = call i32 @gtk_spin_button_set_range(i32 %29, i32 0, i32 31)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = call i32 @GTK_BOX(%struct.TYPE_19__* %33)
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @gtk_box_pack_start(i32 %34, %struct.TYPE_19__* %37, i32 %38, i32 %39, i32 4)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = call i32 @G_OBJECT(%struct.TYPE_19__* %43)
  %45 = load i32, i32* @yui_scsp_spin_cursor_changed, align 4
  %46 = call i32 @GTK_SIGNAL_FUNC(i32 %45)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %48 = call i32 @g_signal_connect(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %46, %struct.TYPE_19__* %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %50 = call i32 @G_OBJECT(%struct.TYPE_19__* %49)
  %51 = load i32, i32* @yui_scsp_destroy, align 4
  %52 = call i32 @GTK_SIGNAL_FUNC(i32 %51)
  %53 = call i32 @g_signal_connect(i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %52, %struct.TYPE_19__* null)
  %54 = call %struct.TYPE_19__* @gtk_scrolled_window_new(i32* null, i32* null)
  store %struct.TYPE_19__* %54, %struct.TYPE_19__** %3, align 8
  %55 = call %struct.TYPE_19__* (...) @gtk_text_view_new()
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %4, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = call i32 @GTK_SCROLLED_WINDOW(%struct.TYPE_19__* %56)
  %58 = load i32, i32* @GTK_POLICY_AUTOMATIC, align 4
  %59 = load i32, i32* @GTK_POLICY_AUTOMATIC, align 4
  %60 = call i32 @gtk_scrolled_window_set_policy(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = call i32 @GTK_TEXT_VIEW(%struct.TYPE_19__* %61)
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @gtk_text_view_set_editable(i32 %62, i32 %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = call i32 @GTK_TEXT_VIEW(%struct.TYPE_19__* %65)
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @gtk_text_view_set_cursor_visible(i32 %66, i32 %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %70 = call i32 @GTK_TEXT_VIEW(%struct.TYPE_19__* %69)
  %71 = call i32 @gtk_text_view_get_buffer(i32 %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = call i32 @GTK_CONTAINER(%struct.TYPE_19__* %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = call i32 @gtk_container_add(i32 %75, %struct.TYPE_19__* %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = call i32 @GTK_BOX(%struct.TYPE_19__* %80)
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %83 = load i32, i32* @TRUE, align 4
  %84 = load i32, i32* @TRUE, align 4
  %85 = call i32 @gtk_box_pack_start(i32 %81, %struct.TYPE_19__* %82, i32 %83, i32 %84, i32 4)
  %86 = call %struct.TYPE_19__* (...) @gtk_hbutton_box_new()
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  store %struct.TYPE_19__* %86, %struct.TYPE_19__** %88, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = call i32 @GTK_BOX(%struct.TYPE_19__* %91)
  %93 = call i32 @gtk_box_set_spacing(i32 %92, i32 4)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = call i32 @GTK_BOX(%struct.TYPE_19__* %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = load i32, i32* @FALSE, align 4
  %102 = load i32, i32* @FALSE, align 4
  %103 = call i32 @gtk_box_pack_start(i32 %97, %struct.TYPE_19__* %100, i32 %101, i32 %102, i32 4)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  ret void
}

declare dso_local i32 @gtk_window_set_title(i32, i8*) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @gtk_vbox_new(i32, i32) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(%struct.TYPE_19__*) #1

declare dso_local i32 @gtk_container_add(i32, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @gtk_spin_button_new_with_range(i32, i32, i32) #1

declare dso_local i32 @gtk_spin_button_set_range(i32, i32, i32) #1

declare dso_local i32 @GTK_SPIN_BUTTON(%struct.TYPE_19__*) #1

declare dso_local i32 @gtk_box_pack_start(i32, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(%struct.TYPE_19__*) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @G_OBJECT(%struct.TYPE_19__*) #1

declare dso_local i32 @GTK_SIGNAL_FUNC(i32) #1

declare dso_local %struct.TYPE_19__* @gtk_scrolled_window_new(i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @gtk_text_view_new(...) #1

declare dso_local i32 @gtk_scrolled_window_set_policy(i32, i32, i32) #1

declare dso_local i32 @GTK_SCROLLED_WINDOW(%struct.TYPE_19__*) #1

declare dso_local i32 @gtk_text_view_set_editable(i32, i32) #1

declare dso_local i32 @GTK_TEXT_VIEW(%struct.TYPE_19__*) #1

declare dso_local i32 @gtk_text_view_set_cursor_visible(i32, i32) #1

declare dso_local i32 @gtk_text_view_get_buffer(i32) #1

declare dso_local %struct.TYPE_19__* @gtk_hbutton_box_new(...) #1

declare dso_local i32 @gtk_box_set_spacing(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
