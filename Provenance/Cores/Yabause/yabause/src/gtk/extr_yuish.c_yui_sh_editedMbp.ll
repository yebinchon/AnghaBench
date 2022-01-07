; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_editedMbp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_editedMbp.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_4__*)* @yui_sh_editedMbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_sh_editedMbp(i32* %0, i32* %1, i32* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @GTK_TREE_MODEL(i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @gtk_tree_model_get_iter_from_string(i32 %19, i32* %9, i32* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GTK_TREE_MODEL(i32 %24)
  %26 = call i32 @gtk_tree_model_get(i32 %25, i32* %9, i32 0, i32** %12, i32 -1)
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @sscanf(i32* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %14)
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @g_free(i32* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @GTK_TREE_MODEL(i32 %33)
  %35 = call i32 @gtk_tree_model_get(i32 %34, i32* %9, i32 1, i32** %13, i32 -1)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @SH2DelMemoryBreakpoint(i32 %38, i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @strtoul(i32* %41, i32** %10, i32 16)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %4
  store i32 -1, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %107

49:                                               ; preds = %46
  store i32 0, i32* %15, align 4
  %50 = load i32*, i32** %13, align 8
  store i32* %50, i32** %10, align 8
  br label %51

51:                                               ; preds = %82, %49
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %51
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %82 [
    i32 98, label %58
    i32 119, label %62
    i32 108, label %66
    i32 66, label %70
    i32 87, label %74
    i32 76, label %78
  ]

58:                                               ; preds = %55
  %59 = load i32, i32* @BREAK_BYTEREAD, align 4
  %60 = load i32, i32* %15, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %15, align 4
  br label %82

62:                                               ; preds = %55
  %63 = load i32, i32* @BREAK_WORDREAD, align 4
  %64 = load i32, i32* %15, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %15, align 4
  br label %82

66:                                               ; preds = %55
  %67 = load i32, i32* @BREAK_LONGREAD, align 4
  %68 = load i32, i32* %15, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %15, align 4
  br label %82

70:                                               ; preds = %55
  %71 = load i32, i32* @BREAK_BYTEWRITE, align 4
  %72 = load i32, i32* %15, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %15, align 4
  br label %82

74:                                               ; preds = %55
  %75 = load i32, i32* @BREAK_WORDWRITE, align 4
  %76 = load i32, i32* %15, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %15, align 4
  br label %82

78:                                               ; preds = %55
  %79 = load i32, i32* @BREAK_LONGWRITE, align 4
  %80 = load i32, i32* %15, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %55, %78, %74, %70, %66, %62, %58
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %10, align 8
  br label %51

85:                                               ; preds = %51
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @BREAK_BYTEREAD, align 4
  %90 = load i32, i32* @BREAK_WORDREAD, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @BREAK_LONGREAD, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @BREAK_BYTEWRITE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @BREAK_WORDWRITE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @BREAK_LONGWRITE, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %88, %85
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @SH2AddMemoryBreakpoint(i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %46
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %109 = call i32 @SH2UpdateMemoryBreakpointList(%struct.TYPE_4__* %108)
  ret void
}

declare dso_local i32 @gtk_tree_model_get_iter_from_string(i32, i32*, i32*) #1

declare dso_local i32 @GTK_TREE_MODEL(i32) #1

declare dso_local i32 @gtk_tree_model_get(i32, i32*, i32, i32**, i32) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @SH2DelMemoryBreakpoint(i32, i32) #1

declare dso_local i32 @strtoul(i32*, i32**, i32) #1

declare dso_local i32 @SH2AddMemoryBreakpoint(i32, i32, i32) #1

declare dso_local i32 @SH2UpdateMemoryBreakpointList(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
