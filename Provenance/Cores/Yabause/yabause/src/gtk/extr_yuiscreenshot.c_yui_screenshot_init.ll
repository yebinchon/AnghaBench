; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiscreenshot.c_yui_screenshot_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiscreenshot.c_yui_screenshot_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_16__* }

@.str = private unnamed_addr constant [11 x i8] c"Screenshot\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GTK_STOCK_REFRESH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@yui_screenshot_update = common dso_local global i32 0, align 4
@GTK_STOCK_SAVE = common dso_local global i32 0, align 4
@yui_viewer_save = common dso_local global i32 0, align 4
@GTK_STOCK_CLOSE = common dso_local global i32 0, align 4
@gtk_widget_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @yui_screenshot_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_screenshot_init(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %7 = call i32 @GTK_WINDOW(%struct.TYPE_16__* %6)
  %8 = call i32 @gtk_window_set_title(i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = call i32 @GTK_CONTAINER(%struct.TYPE_16__* %9)
  %11 = call i32 @gtk_container_set_border_width(i32 %10, i32 4)
  %12 = load i32, i32* @FALSE, align 4
  %13 = call %struct.TYPE_16__* @gtk_vbox_new(i32 %12, i32 4)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %3, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = call i32 @GTK_CONTAINER(%struct.TYPE_16__* %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = call i32 @gtk_container_add(i32 %15, %struct.TYPE_16__* %16)
  %18 = call %struct.TYPE_16__* (...) @yui_viewer_new()
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %20, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = call i32 @GTK_BOX(%struct.TYPE_16__* %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 @gtk_box_pack_start(i32 %22, %struct.TYPE_16__* %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = call i32 @GTK_WIDGET(%struct.TYPE_16__* %31)
  %33 = call i32 @gtk_widget_set_size_request(i32 %32, i32 320, i32 224)
  %34 = call %struct.TYPE_16__* (...) @gtk_hbutton_box_new()
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %4, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = call i32 @GTK_BOX(%struct.TYPE_16__* %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @gtk_box_pack_start(i32 %36, %struct.TYPE_16__* %37, i32 %38, i32 %39, i32 0)
  %41 = load i32, i32* @GTK_STOCK_REFRESH, align 4
  %42 = call %struct.TYPE_16__* @gtk_button_new_from_stock(i32 %41)
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %5, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = call i32 @GTK_BOX(%struct.TYPE_16__* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i32 @gtk_box_pack_start(i32 %44, %struct.TYPE_16__* %45, i32 %46, i32 %47, i32 0)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = load i32, i32* @yui_screenshot_update, align 4
  %51 = call i32 @G_CALLBACK(i32 %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = call i32 @g_signal_connect_swapped(%struct.TYPE_16__* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %51, %struct.TYPE_16__* %52)
  %54 = load i32, i32* @GTK_STOCK_SAVE, align 4
  %55 = call %struct.TYPE_16__* @gtk_button_new_from_stock(i32 %54)
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %5, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = call i32 @GTK_BOX(%struct.TYPE_16__* %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = load i32, i32* @FALSE, align 4
  %60 = load i32, i32* @FALSE, align 4
  %61 = call i32 @gtk_box_pack_start(i32 %57, %struct.TYPE_16__* %58, i32 %59, i32 %60, i32 0)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = load i32, i32* @yui_viewer_save, align 4
  %64 = call i32 @G_CALLBACK(i32 %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = call i32 @g_signal_connect_swapped(%struct.TYPE_16__* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %64, %struct.TYPE_16__* %67)
  %69 = load i32, i32* @GTK_STOCK_CLOSE, align 4
  %70 = call %struct.TYPE_16__* @gtk_button_new_from_stock(i32 %69)
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %5, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = call i32 @GTK_BOX(%struct.TYPE_16__* %71)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = load i32, i32* @FALSE, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @gtk_box_pack_start(i32 %72, %struct.TYPE_16__* %73, i32 %74, i32 %75, i32 0)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = load i32, i32* @gtk_widget_destroy, align 4
  %79 = call i32 @G_CALLBACK(i32 %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %81 = call i32 @g_signal_connect_swapped(%struct.TYPE_16__* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %79, %struct.TYPE_16__* %80)
  ret void
}

declare dso_local i32 @gtk_window_set_title(i32, i8*) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_16__*) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @gtk_vbox_new(i32, i32) #1

declare dso_local i32 @gtk_container_add(i32, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @yui_viewer_new(...) #1

declare dso_local i32 @gtk_box_pack_start(i32, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(%struct.TYPE_16__*) #1

declare dso_local i32 @gtk_widget_set_size_request(i32, i32, i32) #1

declare dso_local i32 @GTK_WIDGET(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @gtk_hbutton_box_new(...) #1

declare dso_local %struct.TYPE_16__* @gtk_button_new_from_stock(i32) #1

declare dso_local i32 @g_signal_connect_swapped(%struct.TYPE_16__*, i8*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
