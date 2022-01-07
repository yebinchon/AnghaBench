; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_entry_touch_feedback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_entry_touch_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32, float, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i64, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@MENU_INPUT_PRESS_TIME_SHORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i64)* @materialui_render_entry_touch_feedback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_render_entry_touch_feedback(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [16 x float], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %7
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %28, %22, %7
  %36 = phi i1 [ false, %22 ], [ false, %7 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %93

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 (...) @menu_input_get_pointer_selection()
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %46
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = zext i32 %68 to i64
  %70 = sub nsw i64 %65, %69
  %71 = icmp slt i64 %59, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %55
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = icmp uge i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = sub i32 %84, %87
  %89 = icmp ule i32 %83, %88
  br label %90

90:                                               ; preds = %79, %72, %55, %46, %40
  %91 = phi i1 [ false, %72 ], [ false, %55 ], [ false, %46 ], [ false, %40 ], [ %89, %79 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %90, %35
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %129

96:                                               ; preds = %93
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %14, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 4
  store float 0.000000e+00, float* %104, align 8
  br label %192

105:                                              ; preds = %96
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = sitofp i64 %109 to float
  %111 = load i64, i64* @MENU_INPUT_PRESS_TIME_SHORT, align 8
  %112 = sitofp i64 %111 to float
  %113 = fdiv float %110, %112
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 4
  store float %113, float* %115, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 4
  %118 = load float, float* %117, align 8
  %119 = fcmp ogt float %118, 1.000000e+00
  br i1 %119, label %120, label %121

120:                                              ; preds = %105
  br label %125

121:                                              ; preds = %105
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 4
  %124 = load float, float* %123, align 8
  br label %125

125:                                              ; preds = %121, %120
  %126 = phi float [ 1.000000e+00, %120 ], [ %124, %121 ]
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 4
  store float %126, float* %128, align 8
  br label %158

129:                                              ; preds = %93
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 4
  %132 = load float, float* %131, align 8
  %133 = fcmp ogt float %132, 0.000000e+00
  br i1 %133, label %134, label %157

134:                                              ; preds = %129
  %135 = call float (...) @menu_animation_get_delta_time()
  %136 = fmul float %135, 1.000000e+03
  %137 = load i64, i64* @MENU_INPUT_PRESS_TIME_SHORT, align 8
  %138 = sitofp i64 %137 to float
  %139 = fdiv float %136, %138
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  %142 = load float, float* %141, align 8
  %143 = fsub float %142, %139
  store float %143, float* %141, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 4
  %146 = load float, float* %145, align 8
  %147 = fcmp olt float %146, 0.000000e+00
  br i1 %147, label %148, label %149

148:                                              ; preds = %134
  br label %153

149:                                              ; preds = %134
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 4
  %152 = load float, float* %151, align 8
  br label %153

153:                                              ; preds = %149, %148
  %154 = phi float [ 0.000000e+00, %148 ], [ %152, %149 ]
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 4
  store float %154, float* %156, align 8
  br label %157

157:                                              ; preds = %153, %129
  br label %158

158:                                              ; preds = %157, %125
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 4
  %161 = load float, float* %160, align 8
  %162 = fcmp ogt float %161, 0.000000e+00
  br i1 %162, label %163, label %192

163:                                              ; preds = %158
  %164 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 0, i64 0
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @memcpy(float* %164, i32 %168, i32 64)
  %170 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 0, i64 0
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = sitofp i32 %173 to float
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 4
  %177 = load float, float* %176, align 8
  %178 = fmul float %174, %177
  %179 = fptosi float %178 to i32
  %180 = call i32 @menu_display_set_alpha(float* %170, i32 %179)
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 0, i64 0
  %191 = call i32 @materialui_render_selection_highlight(%struct.TYPE_10__* %181, i32* %182, i32 %183, i32 %184, i32 %185, i32 %186, i64 %189, float* %190)
  br label %192

192:                                              ; preds = %102, %163, %158
  ret void
}

declare dso_local i64 @menu_input_get_pointer_selection(...) #1

declare dso_local float @menu_animation_get_delta_time(...) #1

declare dso_local i32 @memcpy(float*, i32, i32) #1

declare dso_local i32 @menu_display_set_alpha(float*, i32) #1

declare dso_local i32 @materialui_render_selection_highlight(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i64, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
