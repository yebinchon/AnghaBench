; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_popup_add_bp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_popup_add_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"0x%08X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_sh_popup_add_bp(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %5, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @GTK_TREE_VIEW(i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @gtk_tree_view_get_selection(i32* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @gtk_tree_selection_get_selected(i32* %20, i32** %8, i32* %9)
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @gtk_tree_model_get(i32* %22, i32* %9, i32 1, i32** %10, i32 -1)
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @sscanf(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %11)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @SH2AddCodeBreakpoint(i32 %28, i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @g_free(i32* %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SH2GetRegisters(i32 %35, %struct.TYPE_8__* %12)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SH2UpdateCodeList(%struct.TYPE_9__* %37, i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = call i32 @SH2UpdateBreakpointList(%struct.TYPE_9__* %41)
  ret void
}

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32* @gtk_tree_view_get_selection(i32*) #1

declare dso_local i32 @gtk_tree_selection_get_selected(i32*, i32**, i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32*, i32*, i32, i32**, i32) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*) #1

declare dso_local i32 @SH2AddCodeBreakpoint(i32, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @SH2GetRegisters(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @SH2UpdateCodeList(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SH2UpdateBreakpointList(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
