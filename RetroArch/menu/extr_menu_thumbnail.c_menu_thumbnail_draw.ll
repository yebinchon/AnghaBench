; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail.c_menu_thumbnail_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail.c_menu_thumbnail_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64, float, i32, i64, i64 }
%struct.TYPE_17__ = type { float, float, float, float, i32, i32* }
%struct.TYPE_18__ = type { i32, i32, float, float, float, float, %struct.TYPE_14__, i32, i32, i32*, %struct.video_coords* }
%struct.TYPE_14__ = type { i64 }
%struct.video_coords = type { i32, float*, i32*, i32*, i32* }

@MENU_THUMBNAIL_STATUS_AVAILABLE = common dso_local global i64 0, align 8
@__const.menu_thumbnail_draw.thumbnail_color = private unnamed_addr constant [16 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_thumbnail_draw(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, float %2, float %3, i32 %4, i32 %5, float %6, float %7) #0 {
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_17__, align 8
  %18 = alloca %struct.TYPE_18__, align 8
  %19 = alloca %struct.video_coords, align 8
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca [16 x float], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %10, align 8
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = icmp ne %struct.TYPE_15__* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %31 = icmp ne %struct.TYPE_16__* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = icmp ult i32 %33, 1
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = icmp ult i32 %36, 1
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load float, float* %15, align 4
  %40 = fcmp ole float %39, 0.000000e+00
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load float, float* %16, align 4
  %43 = fcmp ole float %42, 0.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38, %35, %32, %29, %8
  br label %183

45:                                               ; preds = %41
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MENU_THUMBNAIL_STATUS_AVAILABLE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %183

51:                                               ; preds = %45
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load float, float* %53, align 8
  %55 = load float, float* %15, align 4
  %56 = fmul float %54, %55
  store float %56, float* %25, align 4
  %57 = bitcast [16 x float]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %57, i8* align 16 bitcast ([16 x float]* @__const.menu_thumbnail_draw.thumbnail_color to i8*), i64 64, i1 false)
  %58 = load float, float* %25, align 4
  %59 = fcmp ole float %58, 0.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %183

61:                                               ; preds = %51
  %62 = load float, float* %25, align 4
  %63 = fcmp olt float %62, 1.000000e+00
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds [16 x float], [16 x float]* %26, i64 0, i64 0
  %66 = load float, float* %25, align 4
  %67 = call i32 @menu_display_set_alpha(float* %65, float %66)
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %13, align 4
  %71 = uitofp i32 %70 to float
  %72 = load i32, i32* %14, align 4
  %73 = uitofp i32 %72 to float
  %74 = fdiv float %71, %73
  store float %74, float* %23, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = sitofp i64 %77 to float
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = sitofp i64 %81 to float
  %83 = fdiv float %78, %82
  store float %83, float* %24, align 4
  %84 = load float, float* %24, align 4
  %85 = load float, float* %23, align 4
  %86 = fcmp ogt float %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %69
  %88 = load i32, i32* %13, align 4
  %89 = uitofp i32 %88 to float
  store float %89, float* %21, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = sitofp i64 %92 to float
  %94 = load float, float* %21, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = sitofp i64 %97 to float
  %99 = fdiv float %94, %98
  %100 = fmul float %93, %99
  store float %100, float* %22, align 4
  br label %115

101:                                              ; preds = %69
  %102 = load i32, i32* %14, align 4
  %103 = uitofp i32 %102 to float
  store float %103, float* %22, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = sitofp i64 %106 to float
  %108 = load float, float* %22, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = sitofp i64 %111 to float
  %113 = fdiv float %108, %112
  %114 = fmul float %107, %113
  store float %114, float* %21, align 4
  br label %115

115:                                              ; preds = %101, %87
  %116 = load float, float* %16, align 4
  %117 = load float, float* %21, align 4
  %118 = fmul float %117, %116
  store float %118, float* %21, align 4
  %119 = load float, float* %16, align 4
  %120 = load float, float* %22, align 4
  %121 = fmul float %120, %119
  store float %121, float* %22, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %123 = call i32 @menu_display_blend_begin(%struct.TYPE_15__* %122)
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 5
  store i32* %20, i32** %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store float 0.000000e+00, float* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  store float 1.000000e+00, float* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  store float 1.000000e+00, float* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  store float 1.000000e+00, float* %128, align 4
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 4
  store i32 0, i32* %129, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %131 = call i32 @menu_display_rotate_z(%struct.TYPE_17__* %17, %struct.TYPE_15__* %130)
  %132 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %19, i32 0, i32 0
  store i32 4, i32* %132, align 8
  %133 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %19, i32 0, i32 4
  store i32* null, i32** %133, align 8
  %134 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %19, i32 0, i32 3
  store i32* null, i32** %134, align 8
  %135 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %19, i32 0, i32 2
  store i32* null, i32** %135, align 8
  %136 = getelementptr inbounds [16 x float], [16 x float]* %26, i64 0, i64 0
  %137 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %19, i32 0, i32 1
  store float* %136, float** %137, align 8
  %138 = load float, float* %21, align 4
  %139 = fptoui float %138 to i32
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i32 %139, i32* %140, align 8
  %141 = load float, float* %22, align 4
  %142 = fptoui float %141 to i32
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  store float 1.000000e+00, float* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  store float 0.000000e+00, float* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 10
  store %struct.video_coords* %19, %struct.video_coords** %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 9
  store i32* %20, i32** %147, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 8
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 4
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 7
  store i32 %152, i32* %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  store i64 0, i64* %155, align 8
  %156 = load float, float* %11, align 4
  %157 = load i32, i32* %13, align 4
  %158 = uitofp i32 %157 to float
  %159 = load float, float* %21, align 4
  %160 = fsub float %158, %159
  %161 = fdiv float %160, 2.000000e+00
  %162 = fadd float %156, %161
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 4
  store float %162, float* %163, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = sitofp i64 %166 to float
  %168 = load float, float* %12, align 4
  %169 = fsub float %167, %168
  %170 = load float, float* %22, align 4
  %171 = fsub float %169, %170
  %172 = load i32, i32* %14, align 4
  %173 = uitofp i32 %172 to float
  %174 = load float, float* %22, align 4
  %175 = fsub float %173, %174
  %176 = fdiv float %175, 2.000000e+00
  %177 = fsub float %171, %176
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 5
  store float %177, float* %178, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %180 = call i32 @menu_display_draw(%struct.TYPE_18__* %18, %struct.TYPE_15__* %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %182 = call i32 @menu_display_blend_end(%struct.TYPE_15__* %181)
  br label %183

183:                                              ; preds = %44, %60, %115, %45
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @menu_display_set_alpha(float*, float) #2

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_15__*) #2

declare dso_local i32 @menu_display_rotate_z(%struct.TYPE_17__*, %struct.TYPE_15__*) #2

declare dso_local i32 @menu_display_draw(%struct.TYPE_18__*, %struct.TYPE_15__*) #2

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
