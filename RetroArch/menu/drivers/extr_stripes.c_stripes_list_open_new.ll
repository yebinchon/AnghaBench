; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_open_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_open_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, float, float, float, i32, i32, i64, i32, i32 }
%struct.TYPE_11__ = type { float, float, i32, float, i32 }
%struct.TYPE_13__ = type { float, float*, i64, i32*, i32, i32 }

@STRIPES_DELAY = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_START = common dso_local global i32 0, align 4
@STRIPES_SYSTEM_TAB_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, i32, i64)* @stripes_list_open_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_list_open_new(%struct.TYPE_12__* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 10
  store i32 %22, i32* %13, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @file_list_get_size(i32* %23)
  store i64 %24, i64* %14, align 8
  %25 = call i32 @video_driver_get_size(i32* null, i32* %10)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %158, %4
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %14, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %161

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @file_list_get_userdata_at_offset(i32* %32, i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %17, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %158

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %39
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store float 0.000000e+00, float* %52, align 4
  br label %53

53:                                               ; preds = %50, %45, %42
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %56, %53
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store float 0.000000e+00, float* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 %65, %66
  %68 = mul nsw i32 %67, 2
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call float @stripes_item_y(%struct.TYPE_12__* %71, i32 %72, i64 %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  store float %74, float* %76, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load float, float* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load float, float* %86, align 4
  %88 = fadd float %84, %87
  store float %88, float* %16, align 4
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = load i64, i64* %8, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %62
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %62
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load float, float* %101, align 8
  store float %102, float* %15, align 4
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %8, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  %110 = load float, float* %109, align 4
  store float %110, float* %15, align 4
  br label %111

111:                                              ; preds = %107, %99
  %112 = load float, float* %16, align 4
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 0, %113
  %115 = sitofp i32 %114 to float
  %116 = fcmp olt float %112, %115
  br i1 %116, label %124, label %117

117:                                              ; preds = %111
  %118 = load float, float* %16, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %13, align 4
  %121 = add i32 %119, %120
  %122 = uitofp i32 %121 to float
  %123 = fcmp ogt float %118, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %117, %111
  %125 = load float, float* %15, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  store float %125, float* %127, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store float %125, float* %129, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  store i32 0, i32* %131, align 4
  br label %157

132:                                              ; preds = %117
  %133 = load i32, i32* @STRIPES_DELAY, align 4
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 5
  store i32 %133, i32* %134, align 4
  %135 = load float, float* %15, align 4
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store float %135, float* %136, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  store float* %138, float** %139, align 8
  %140 = load i32, i32* @EASING_OUT_QUAD, align 4
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 4
  store i32 %140, i32* %141, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = ptrtoint i32* %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  store i64 %143, i64* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  store i32* null, i32** %145, align 8
  %146 = call i32 @menu_animation_push(%struct.TYPE_13__* %18)
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  store float* %148, float** %149, align 8
  %150 = call i32 @menu_animation_push(%struct.TYPE_13__* %18)
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store float 0.000000e+00, float* %151, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = bitcast i32* %153 to float*
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  store float* %154, float** %155, align 8
  %156 = call i32 @menu_animation_push(%struct.TYPE_13__* %18)
  br label %157

157:                                              ; preds = %132, %124
  br label %158

158:                                              ; preds = %157, %38
  %159 = load i32, i32* %9, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %26

161:                                              ; preds = %26
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @MENU_ENTRIES_CTL_SET_START, align 4
  %168 = call i32 @menu_entries_ctl(i32 %167, i64* %12)
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 @stripes_get_system_tab(%struct.TYPE_12__* %169, i32 %173)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* @STRIPES_SYSTEM_TAB_SETTINGS, align 4
  %177 = icmp ule i32 %175, %176
  br i1 %177, label %178, label %195

178:                                              ; preds = %161
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %181, 4
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %185 = call i32 @stripes_reset_thumbnail_content(%struct.TYPE_12__* %184)
  br label %186

186:                                              ; preds = %183, %178
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %188 = call i32 @stripes_update_thumbnail_path(%struct.TYPE_12__* %187, i32 0, i8 signext 82)
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %190 = call i32 @stripes_update_thumbnail_image(%struct.TYPE_12__* %189)
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %192 = call i32 @stripes_update_thumbnail_path(%struct.TYPE_12__* %191, i32 0, i8 signext 76)
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %194 = call i32 @stripes_update_thumbnail_image(%struct.TYPE_12__* %193)
  br label %195

195:                                              ; preds = %186, %161
  ret void
}

declare dso_local i64 @file_list_get_size(i32*) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i32) #1

declare dso_local float @stripes_item_y(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_13__*) #1

declare dso_local i32 @menu_entries_ctl(i32, i64*) #1

declare dso_local i32 @stripes_get_system_tab(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @stripes_reset_thumbnail_content(%struct.TYPE_12__*) #1

declare dso_local i32 @stripes_update_thumbnail_path(%struct.TYPE_12__*, i32, i8 signext) #1

declare dso_local i32 @stripes_update_thumbnail_image(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
