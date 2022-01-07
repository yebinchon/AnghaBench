; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_init_transition_animation.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_init_transition_animation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { float, float, i64, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { float, float*, i32*, i32*, i8*, i8*, i8* }

@MENU_LIST_PLAIN = common dso_local global i32 0, align 4
@MATERIALUI_TRANSITION_ANIM_NONE = common dso_local global i64 0, align 8
@EASING_OUT_QUAD = common dso_local global i8* null, align 8
@MUI_ANIM_DURATION_MENU_TRANSITION = common dso_local global i8* null, align 8
@MATERIALUI_TRANSITION_ANIM_FADE = common dso_local global i64 0, align 8
@MATERIALUI_TRANSITION_ANIM_SLIDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_12__*)* @materialui_init_transition_animation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_init_transition_animation(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = load i32, i32* @MENU_LIST_PLAIN, align 4
  %12 = call i64 @materialui_list_get_size(%struct.TYPE_14__* %10, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = ptrtoint float* %14 to i64
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = ptrtoint float* %18 to i64
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %7, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MATERIALUI_TRANSITION_ANIM_NONE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  store float 1.000000e+00, float* %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  store float 0.000000e+00, float* %31, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  br label %187

35:                                               ; preds = %2
  %36 = call i32 @menu_animation_kill_by_tag(i8** %6)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store float 0.000000e+00, float* %38, align 8
  %39 = load i8*, i8** @EASING_OUT_QUAD, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 6
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 5
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** @MUI_ANIM_DURATION_MENU_TRANSITION, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 4
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store float 1.000000e+00, float* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store float* %47, float** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = call i32 @menu_animation_push(%struct.TYPE_13__* %8)
  %52 = call i32 @menu_animation_kill_by_tag(i8** %7)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  store float 0.000000e+00, float* %54, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %35
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MATERIALUI_TRANSITION_ANIM_FADE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store float -1.000000e+00, float* %68, align 4
  br label %69

69:                                               ; preds = %66, %59
  br label %165

70:                                               ; preds = %35
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ugt i64 %71, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MATERIALUI_TRANSITION_ANIM_SLIDE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  store float 1.000000e+00, float* %85, align 4
  br label %86

86:                                               ; preds = %83, %76
  br label %164

87:                                               ; preds = %70
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MATERIALUI_TRANSITION_ANIM_SLIDE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  store float -1.000000e+00, float* %102, align 4
  br label %103

103:                                              ; preds = %100, %93
  br label %163

104:                                              ; preds = %87
  %105 = load i64, i64* %5, align 8
  %106 = icmp eq i64 %105, 1
  br i1 %106, label %107, label %162

107:                                              ; preds = %104
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @MATERIALUI_TRANSITION_ANIM_FADE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %162

114:                                              ; preds = %107
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %118, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %114
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  store float 1.000000e+00, float* %132, align 4
  br label %136

133:                                              ; preds = %124
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  store float -1.000000e+00, float* %135, align 4
  br label %136

136:                                              ; preds = %133, %130
  br label %161

137:                                              ; preds = %114
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %141, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %137
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  store float -1.000000e+00, float* %155, align 4
  br label %159

156:                                              ; preds = %147
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  store float 1.000000e+00, float* %158, align 4
  br label %159

159:                                              ; preds = %156, %153
  br label %160

160:                                              ; preds = %159, %137
  br label %161

161:                                              ; preds = %160, %136
  br label %162

162:                                              ; preds = %161, %107, %104
  br label %163

163:                                              ; preds = %162, %103
  br label %164

164:                                              ; preds = %163, %86
  br label %165

165:                                              ; preds = %164, %69
  %166 = load i64, i64* %5, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load float, float* %170, align 4
  %172 = fcmp une float %171, 0.000000e+00
  br i1 %172, label %173, label %187

173:                                              ; preds = %165
  %174 = load i8*, i8** @EASING_OUT_QUAD, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 6
  store i8* %174, i8** %175, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 5
  store i8* %176, i8** %177, align 8
  %178 = load i8*, i8** @MUI_ANIM_DURATION_MENU_TRANSITION, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 4
  store i8* %178, i8** %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store float 0.000000e+00, float* %180, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store float* %182, float** %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 3
  store i32* null, i32** %184, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  store i32* null, i32** %185, align 8
  %186 = call i32 @menu_animation_push(%struct.TYPE_13__* %9)
  br label %187

187:                                              ; preds = %27, %173, %165
  ret void
}

declare dso_local i64 @materialui_list_get_size(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @menu_animation_kill_by_tag(i8**) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
