; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_editedMbpFlags.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_editedMbpFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%8X\00", align 1
@BREAK_BYTEREAD = common dso_local global i32 0, align 4
@BREAK_WORDREAD = common dso_local global i32 0, align 4
@BREAK_LONGREAD = common dso_local global i32 0, align 4
@BREAK_BYTEWRITE = common dso_local global i32 0, align 4
@BREAK_WORDWRITE = common dso_local global i32 0, align 4
@BREAK_LONGWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_4__*)* @yui_sh_editedMbpFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_sh_editedMbpFlags(i32* %0, i32* %1, i32* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @GTK_TREE_MODEL(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @gtk_tree_model_get_iter_from_string(i32 %17, i32* %9, i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @GTK_TREE_MODEL(i32 %22)
  %24 = call i32 @gtk_tree_model_get(i32 %23, i32* %9, i32 0, i32** %12, i32 -1)
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @sscanf(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11)
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @g_free(i32* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @SH2DelMemoryBreakpoint(i32 %31, i32 %32)
  %34 = load i32*, i32** %7, align 8
  store i32* %34, i32** %10, align 8
  br label %35

35:                                               ; preds = %66, %4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %66 [
    i32 98, label %42
    i32 119, label %46
    i32 108, label %50
    i32 66, label %54
    i32 87, label %58
    i32 76, label %62
  ]

42:                                               ; preds = %39
  %43 = load i32, i32* @BREAK_BYTEREAD, align 4
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %66

46:                                               ; preds = %39
  %47 = load i32, i32* @BREAK_WORDREAD, align 4
  %48 = load i32, i32* %13, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %13, align 4
  br label %66

50:                                               ; preds = %39
  %51 = load i32, i32* @BREAK_LONGREAD, align 4
  %52 = load i32, i32* %13, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %13, align 4
  br label %66

54:                                               ; preds = %39
  %55 = load i32, i32* @BREAK_BYTEWRITE, align 4
  %56 = load i32, i32* %13, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %13, align 4
  br label %66

58:                                               ; preds = %39
  %59 = load i32, i32* @BREAK_WORDWRITE, align 4
  %60 = load i32, i32* %13, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %13, align 4
  br label %66

62:                                               ; preds = %39
  %63 = load i32, i32* @BREAK_LONGWRITE, align 4
  %64 = load i32, i32* %13, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %39, %62, %58, %54, %50, %46, %42
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %10, align 8
  br label %35

69:                                               ; preds = %35
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @SH2AddMemoryBreakpoint(i32 %72, i32 %73, i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = call i32 @SH2UpdateMemoryBreakpointList(%struct.TYPE_4__* %76)
  ret void
}

declare dso_local i32 @gtk_tree_model_get_iter_from_string(i32, i32*, i32*) #1

declare dso_local i32 @GTK_TREE_MODEL(i32) #1

declare dso_local i32 @gtk_tree_model_get(i32, i32*, i32, i32**, i32) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @SH2DelMemoryBreakpoint(i32, i32) #1

declare dso_local i32 @SH2AddMemoryBreakpoint(i32, i32, i32) #1

declare dso_local i32 @SH2UpdateMemoryBreakpointList(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
