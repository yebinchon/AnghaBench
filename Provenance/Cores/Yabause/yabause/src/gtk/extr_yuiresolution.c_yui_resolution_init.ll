; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiresolution.c_yui_resolution_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiresolution.c_yui_resolution_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Fullscreen\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Keep ratio\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@yui_resolution_width_changed = common dso_local global i32 0, align 4
@yui_resolution_height_changed = common dso_local global i32 0, align 4
@yui_resolution_options_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @yui_resolution_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_resolution_init(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = call i32 @GTK_CONTAINER(%struct.TYPE_6__* %5)
  %7 = call i32 @gtk_container_set_border_width(i32 %6, i32 10)
  %8 = call i32* @gtk_label_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = call i32 @GTK_BOX(%struct.TYPE_6__* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @TRUE, align 4
  %13 = load i32, i32* @TRUE, align 4
  %14 = call i32 @gtk_box_pack_start(i32 %10, i32* %11, i32 %12, i32 %13, i32 0)
  %15 = call i8* (...) @gtk_entry_new()
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @GTK_ENTRY(i32* %21)
  %23 = call i32 @gtk_entry_set_width_chars(i32 %22, i32 8)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = call i32 @GTK_BOX(%struct.TYPE_6__* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @gtk_box_pack_start(i32 %25, i32* %28, i32 %29, i32 %30, i32 0)
  %32 = call i32* @gtk_label_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %32, i32** %4, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = call i32 @GTK_BOX(%struct.TYPE_6__* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @TRUE, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @gtk_box_pack_start(i32 %34, i32* %35, i32 %36, i32 %37, i32 0)
  %39 = call i8* (...) @gtk_entry_new()
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @GTK_ENTRY(i32* %45)
  %47 = call i32 @gtk_entry_set_width_chars(i32 %46, i32 8)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = call i32 @GTK_BOX(%struct.TYPE_6__* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @gtk_box_pack_start(i32 %49, i32* %52, i32 %53, i32 %54, i32 0)
  %56 = call i32* (...) @gtk_combo_box_new_text()
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @GTK_COMBO_BOX(i32* %61)
  %63 = call i32 @gtk_combo_box_append_text(i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @GTK_COMBO_BOX(i32* %66)
  %68 = call i32 @gtk_combo_box_append_text(i32 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @GTK_COMBO_BOX(i32* %71)
  %73 = call i32 @gtk_combo_box_append_text(i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = call i32 @GTK_BOX(%struct.TYPE_6__* %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @TRUE, align 4
  %80 = load i32, i32* @TRUE, align 4
  %81 = call i32 @gtk_box_pack_start(i32 %75, i32* %78, i32 %79, i32 %80, i32 0)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @yui_resolution_width_changed, align 4
  %86 = call i32 @G_CALLBACK(i32 %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %88 = call i32 @g_signal_connect(i32* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %86, %struct.TYPE_6__* %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @yui_resolution_height_changed, align 4
  %93 = call i32 @G_CALLBACK(i32 %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = call i32 @g_signal_connect(i32* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %93, %struct.TYPE_6__* %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @yui_resolution_options_changed, align 4
  %100 = call i32 @G_CALLBACK(i32 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = call i32 @g_signal_connect(i32* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %100, %struct.TYPE_6__* %101)
  ret void
}

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(%struct.TYPE_6__*) #1

declare dso_local i32* @gtk_label_new(i8*) #1

declare dso_local i32 @gtk_box_pack_start(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(%struct.TYPE_6__*) #1

declare dso_local i8* @gtk_entry_new(...) #1

declare dso_local i32 @gtk_entry_set_width_chars(i32, i32) #1

declare dso_local i32 @GTK_ENTRY(i32*) #1

declare dso_local i32* @gtk_combo_box_new_text(...) #1

declare dso_local i32 @gtk_combo_box_append_text(i32, i8*) #1

declare dso_local i32 @GTK_COMBO_BOX(i32*) #1

declare dso_local i32 @g_signal_connect(i32*, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
