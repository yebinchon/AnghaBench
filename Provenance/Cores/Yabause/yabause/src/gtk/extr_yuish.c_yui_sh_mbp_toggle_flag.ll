; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_mbp_toggle_flag.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_mbp_toggle_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32**, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%8X\00", align 1
@BREAK_BYTEREAD = common dso_local global i32 0, align 4
@BREAK_WORDREAD = common dso_local global i32 0, align 4
@BREAK_LONGREAD = common dso_local global i32 0, align 4
@BREAK_BYTEWRITE = common dso_local global i32 0, align 4
@BREAK_WORDWRITE = common dso_local global i32 0, align 4
@BREAK_LONGWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_sh_mbp_toggle_flag(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32* @GTK_TREE_VIEW(i32 %18)
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32* @gtk_tree_view_get_selection(i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @gtk_tree_selection_get_selected(i32* %22, i32** %8, i32* %7)
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @gtk_tree_model_get(i32* %24, i32* %7, i32 0, i8** %9, i32 -1)
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @gtk_tree_model_get(i32* %26, i32* %7, i32 1, i8** %10, i32 -1)
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @SH2DelMemoryBreakpoint(i32 %32, i32 %33)
  store i32 0, i32* %12, align 4
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %14, align 8
  br label %36

36:                                               ; preds = %68, %2
  %37 = load i8*, i8** %14, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %36
  %41 = load i8*, i8** %14, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %68 [
    i32 98, label %44
    i32 119, label %48
    i32 108, label %52
    i32 66, label %56
    i32 87, label %60
    i32 76, label %64
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* @BREAK_BYTEREAD, align 4
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  br label %68

48:                                               ; preds = %40
  %49 = load i32, i32* @BREAK_WORDREAD, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %68

52:                                               ; preds = %40
  %53 = load i32, i32* @BREAK_LONGREAD, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %68

56:                                               ; preds = %40
  %57 = load i32, i32* @BREAK_BYTEWRITE, align 4
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %68

60:                                               ; preds = %40
  %61 = load i32, i32* @BREAK_WORDWRITE, align 4
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %68

64:                                               ; preds = %40
  %65 = load i32, i32* @BREAK_LONGWRITE, align 4
  %66 = load i32, i32* %12, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %40, %64, %60, %56, %52, %48, %44
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %14, align 8
  br label %36

71:                                               ; preds = %36
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %72, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @BREAK_BYTEREAD, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = load i32, i32* %12, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* @BREAK_BYTEREAD, align 4
  %87 = and i32 %85, %86
  %88 = or i32 %83, %87
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %79, %71
  %90 = load i32*, i32** %3, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32**, i32*** %92, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 1
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %90, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %89
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @BREAK_WORDREAD, align 4
  %100 = xor i32 %99, -1
  %101 = and i32 %98, %100
  %102 = load i32, i32* %12, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* @BREAK_WORDREAD, align 4
  %105 = and i32 %103, %104
  %106 = or i32 %101, %105
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %97, %89
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 2
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %108, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %107
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @BREAK_LONGREAD, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  %120 = load i32, i32* %12, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* @BREAK_LONGREAD, align 4
  %123 = and i32 %121, %122
  %124 = or i32 %119, %123
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %115, %107
  %126 = load i32*, i32** %3, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 3
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %126, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %125
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @BREAK_BYTEWRITE, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  %138 = load i32, i32* %12, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* @BREAK_BYTEWRITE, align 4
  %141 = and i32 %139, %140
  %142 = or i32 %137, %141
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %133, %125
  %144 = load i32*, i32** %3, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32**, i32*** %146, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 4
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %144, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %143
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @BREAK_WORDWRITE, align 4
  %154 = xor i32 %153, -1
  %155 = and i32 %152, %154
  %156 = load i32, i32* %12, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* @BREAK_WORDWRITE, align 4
  %159 = and i32 %157, %158
  %160 = or i32 %155, %159
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %151, %143
  %162 = load i32*, i32** %3, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i32**, i32*** %164, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 5
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %162, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %161
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @BREAK_LONGWRITE, align 4
  %172 = xor i32 %171, -1
  %173 = and i32 %170, %172
  %174 = load i32, i32* %12, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* @BREAK_LONGWRITE, align 4
  %177 = and i32 %175, %176
  %178 = or i32 %173, %177
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %169, %161
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @SH2AddMemoryBreakpoint(i32 %182, i32 %183, i32 %184)
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %187 = call i32 @SH2UpdateMemoryBreakpointList(%struct.TYPE_5__* %186)
  ret void
}

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32* @gtk_tree_view_get_selection(i32*) #1

declare dso_local i32 @gtk_tree_selection_get_selected(i32*, i32**, i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32*, i32*, i32, i8**, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @SH2DelMemoryBreakpoint(i32, i32) #1

declare dso_local i32 @SH2AddMemoryBreakpoint(i32, i32, i32) #1

declare dso_local i32 @SH2UpdateMemoryBreakpointList(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
