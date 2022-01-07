; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_mfield.c_MenuField_Draw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_mfield.c_MenuField_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i32 }

@QMF_SMALLFONT = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@BIGCHAR_HEIGHT = common dso_local global i32 0, align 4
@UI_BIGFONT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@UI_PULSE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@QMF_GRAYED = common dso_local global i32 0, align 4
@text_color_disabled = common dso_local global float* null, align 8
@text_color_highlight = common dso_local global float* null, align 8
@text_color_normal = common dso_local global float* null, align 8
@listbar_color = common dso_local global i32 0, align 4
@UI_CENTER = common dso_local global i32 0, align 4
@UI_BLINK = common dso_local global i32 0, align 4
@UI_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MenuField_Draw(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca float*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @QMF_SMALLFONT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @UI_SMALLFONT, align 4
  store i32 %28, i32* %7, align 4
  br label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @BIGCHAR_WIDTH, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @UI_BIGFONT, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_6__* @Menu_ItemAtCursor(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = icmp eq %struct.TYPE_6__* %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i64, i64* @qtrue, align 8
  store i64 %42, i64* %8, align 8
  %43 = load i32, i32* @UI_PULSE, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %48

46:                                               ; preds = %33
  %47 = load i64, i64* @qfalse, align 8
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @QMF_GRAYED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load float*, float** @text_color_disabled, align 8
  store float* %57, float** %9, align 8
  br label %66

58:                                               ; preds = %48
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load float*, float** @text_color_highlight, align 8
  store float* %62, float** %9, align 8
  br label %65

63:                                               ; preds = %58
  %64 = load float*, float** @text_color_normal, align 8
  store float* %64, float** %9, align 8
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %109

69:                                               ; preds = %66
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %81, %85
  %87 = add nsw i64 %86, 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %91, %95
  %97 = add nsw i64 %96, 1
  %98 = load i32, i32* @listbar_color, align 4
  %99 = call i32 @UI_FillRect(i64 %73, i64 %77, i64 %87, i64 %97, i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @UI_CENTER, align 4
  %103 = load i32, i32* @UI_BLINK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %104, %105
  %107 = load float*, float** %9, align 8
  %108 = call i32 @UI_DrawChar(i32 %100, i32 %101, i32 13, i32 %106, float* %107)
  br label %109

109:                                              ; preds = %69, %66
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %5, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @UI_RIGHT, align 4
  %126 = or i32 %124, %125
  %127 = load float*, float** %9, align 8
  %128 = call i32 @UI_DrawString(i32 %118, i32 %119, i32 %123, i32 %126, float* %127)
  br label %129

129:                                              ; preds = %115, %109
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load float*, float** %9, align 8
  %138 = call i32 @MField_Draw(i32* %131, i32 %134, i32 %135, i32 %136, float* %137)
  ret void
}

declare dso_local %struct.TYPE_6__* @Menu_ItemAtCursor(i32) #1

declare dso_local i32 @UI_FillRect(i64, i64, i64, i64, i32) #1

declare dso_local i32 @UI_DrawChar(i32, i32, i32, i32, float*) #1

declare dso_local i32 @UI_DrawString(i32, i32, i32, i32, float*) #1

declare dso_local i32 @MField_Draw(i32*, i32, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
