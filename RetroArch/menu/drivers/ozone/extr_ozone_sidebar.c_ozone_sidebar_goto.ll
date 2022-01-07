; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_sidebar_goto.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_sidebar_goto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64*, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_9__ = type { float, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, float }
%struct.menu_animation_ctx_entry = type { float*, float, i32*, i8*, i8*, i8*, i32* }

@ANIMATION_CURSOR_DURATION = common dso_local global i8* null, align 8
@EASING_OUT_QUAD = common dso_local global i8* null, align 8
@MENU_ENUM_LABEL_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@MENU_SETTING_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@ozone_system_tabs_idx = common dso_local global i32* null, align 8
@ozone_system_tabs_type = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ozone_sidebar_goto(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.menu_animation_ctx_entry, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = call i32 @video_driver_get_size(i32* null, i32* %5)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = ptrtoint %struct.TYPE_10__* %15 to i64
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = call i32 @menu_animation_kill_by_tag(i8** %7)
  br label %38

38:                                               ; preds = %23, %2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store float 0.000000e+00, float* %41, align 8
  %42 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 6
  store i32* null, i32** %42, align 8
  %43 = load i8*, i8** @ANIMATION_CURSOR_DURATION, align 8
  %44 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 5
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** @EASING_OUT_QUAD, align 8
  %46 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 4
  store i8* %45, i8** %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 0
  store float* %49, float** %50, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 3
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 1
  store float 1.000000e+00, float* %53, align 8
  %54 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = call i32 @menu_animation_push(%struct.menu_animation_ctx_entry* %6)
  store float 0.000000e+00, float* %8, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = call float @ozone_get_selected_sidebar_y_position(%struct.TYPE_10__* %56)
  store float %57, float* %9, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %62, %66
  %68 = sitofp i32 %67 to float
  %69 = load float, float* %9, align 4
  %70 = fadd float %68, %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 2
  %76 = sitofp i32 %75 to float
  %77 = fadd float %70, %76
  store float %77, float* %10, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  %84 = sub i32 %78, %83
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sub i32 %84, %88
  %90 = uitofp i32 %89 to float
  store float %90, float* %11, align 4
  %91 = load i32, i32* %5, align 4
  %92 = udiv i32 %91, 2
  %93 = uitofp i32 %92 to float
  store float %93, float* %12, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = call float @ozone_get_sidebar_height(%struct.TYPE_10__* %94)
  store float %95, float* %13, align 4
  %96 = load float, float* %10, align 4
  %97 = load float, float* %12, align 4
  %98 = fcmp une float %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %38
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sitofp i32 %103 to float
  %105 = load float, float* %10, align 4
  %106 = load float, float* %12, align 4
  %107 = fsub float %105, %106
  %108 = fsub float %104, %107
  store float %108, float* %8, align 4
  br label %109

109:                                              ; preds = %99, %38
  %110 = load float, float* %8, align 4
  %111 = load float, float* %13, align 4
  %112 = fadd float %110, %111
  %113 = load float, float* %11, align 4
  %114 = fcmp olt float %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %109
  %116 = load float, float* %11, align 4
  %117 = load float, float* %13, align 4
  %118 = fsub float %116, %117
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = load float, float* %121, align 4
  %123 = fsub float %118, %122
  store float %123, float* %8, align 4
  br label %124

124:                                              ; preds = %115, %109
  %125 = load float, float* %8, align 4
  %126 = fcmp ogt float %125, 0.000000e+00
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store float 0.000000e+00, float* %8, align 4
  br label %128

128:                                              ; preds = %127, %124
  %129 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 6
  store i32* null, i32** %129, align 8
  %130 = load i8*, i8** @ANIMATION_CURSOR_DURATION, align 8
  %131 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 5
  store i8* %130, i8** %131, align 8
  %132 = load i8*, i8** @EASING_OUT_QUAD, align 8
  %133 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 4
  store i8* %132, i8** %133, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = bitcast i32* %136 to float*
  %138 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 0
  store float* %137, float** %138, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 3
  store i8* %139, i8** %140, align 8
  %141 = load float, float* %8, align 4
  %142 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 1
  store float %141, float* %142, align 8
  %143 = getelementptr inbounds %struct.menu_animation_ctx_entry, %struct.menu_animation_ctx_entry* %6, i32 0, i32 2
  store i32* null, i32** %143, align 8
  %144 = call i32 @menu_animation_push(%struct.menu_animation_ctx_entry* %6)
  %145 = load i32, i32* %4, align 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp ugt i32 %145, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %128
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %152 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %153 = load i32, i32* @MENU_SETTING_HORIZONTAL_MENU, align 4
  %154 = call i32 @ozone_change_tab(%struct.TYPE_10__* %151, i32 %152, i32 %153)
  br label %178

155:                                              ; preds = %128
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = load i32*, i32** @ozone_system_tabs_idx, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 3
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %157, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** @ozone_system_tabs_type, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 3
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i32, i32* %167, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ozone_change_tab(%struct.TYPE_10__* %156, i32 %166, i32 %176)
  br label %178

178:                                              ; preds = %155, %150
  ret void
}

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @menu_animation_kill_by_tag(i8**) #1

declare dso_local i32 @menu_animation_push(%struct.menu_animation_ctx_entry*) #1

declare dso_local float @ozone_get_selected_sidebar_y_position(%struct.TYPE_10__*) #1

declare dso_local float @ozone_get_sidebar_height(%struct.TYPE_10__*) #1

declare dso_local i32 @ozone_change_tab(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
