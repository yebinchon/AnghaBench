; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuivdp1.c_yui_vdp1_view_cursor_changed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuivdp1.c_yui_vdp1_view_cursor_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @yui_vdp1_view_cursor_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_vdp1_view_cursor_changed(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i32], align 16
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @GTK_TREE_VIEW(i32* %9)
  %11 = call i32 @gtk_tree_view_get_cursor(i32 %10, i32** %5, i32* null)
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @YUI_VIEWER(i32 %17)
  %19 = call i32 @yui_viewer_clear(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @gtk_tree_path_to_string(i32* %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @sscanf(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %7)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %29 = call i32 @Vdp1DebugCommand(i32 %27, i32* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %34 = call i32 @g_strstrip(i32* %33)
  %35 = call i32 @gtk_text_buffer_set_text(i32 %32, i32 %34, i32 -1)
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = call i32 @Vdp1DebugTexture(i32 %36, i32* %38, i32* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = call i32 @yui_vdp1_draw(%struct.TYPE_4__* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @g_free(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @gtk_tree_path_free(i32* %48)
  br label %50

50:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @gtk_tree_view_get_cursor(i32, i32**, i32*) #1

declare dso_local i32 @GTK_TREE_VIEW(i32*) #1

declare dso_local i32 @yui_viewer_clear(i32) #1

declare dso_local i32 @YUI_VIEWER(i32) #1

declare dso_local i32* @gtk_tree_path_to_string(i32*) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*) #1

declare dso_local i32 @Vdp1DebugCommand(i32, i32*) #1

declare dso_local i32 @gtk_text_buffer_set_text(i32, i32, i32) #1

declare dso_local i32 @g_strstrip(i32*) #1

declare dso_local i32 @Vdp1DebugTexture(i32, i32*, i32*) #1

declare dso_local i32 @yui_vdp1_draw(%struct.TYPE_4__*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
