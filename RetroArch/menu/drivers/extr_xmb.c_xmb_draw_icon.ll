; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_draw_icon.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_draw_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, float, float, i64, float, i32, %struct.TYPE_7__, i32, i32*, %struct.video_coords* }
%struct.TYPE_7__ = type { i64 }
%struct.video_coords = type { i32, float*, i32*, i32*, i32* }

@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i32 0, align 4
@coord_shadow = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32*, i64, float, float, i32, i32, float, float, float, float*, float)* @xmb_draw_icon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_draw_icon(%struct.TYPE_8__* %0, i32 %1, i32* %2, i64 %3, float %4, float %5, i32 %6, i32 %7, float %8, float %9, float %10, float* %11, float %12) #0 {
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca float, align 4
  %27 = alloca %struct.TYPE_9__, align 8
  %28 = alloca %struct.video_coords, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i64 %3, i64* %17, align 8
  store float %4, float* %18, align 4
  store float %5, float* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store float %8, float* %22, align 4
  store float %9, float* %23, align 4
  store float %10, float* %24, align 4
  store float* %11, float** %25, align 8
  store float %12, float* %26, align 4
  %29 = load float, float* %18, align 4
  %30 = load i32, i32* %15, align 4
  %31 = sub nsw i32 0, %30
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %32, 2.000000e+00
  %34 = fcmp olt float %29, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %13
  %36 = load float, float* %18, align 4
  %37 = load i32, i32* %20, align 4
  %38 = uitofp i32 %37 to float
  %39 = fcmp ogt float %36, %38
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = load float, float* %19, align 4
  %42 = load i32, i32* %15, align 4
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %43, 2.000000e+00
  %45 = fcmp olt float %41, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load float, float* %19, align 4
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add i32 %48, %49
  %51 = uitofp i32 %50 to float
  %52 = fcmp ogt float %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %40, %35, %13
  br label %116

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %28, i32 0, i32 0
  store i32 4, i32* %55, align 8
  %56 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %28, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %28, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %28, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* %15, align 4
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* %15, align 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load float, float* %23, align 4
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  store float %63, float* %64, align 8
  %65 = load float, float* %24, align 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  store float %65, float* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 10
  store %struct.video_coords* %28, %struct.video_coords** %67, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 9
  store i32* %68, i32** %69, align 8
  %70 = load i64, i64* %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 4
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 8
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %54
  %81 = load float*, float** @coord_shadow, align 8
  %82 = load float*, float** %25, align 8
  %83 = getelementptr inbounds float, float* %82, i64 3
  %84 = load float, float* %83, align 4
  %85 = fmul float %84, 0x3FD6666660000000
  %86 = call i32 @menu_display_set_alpha(float* %81, float %85)
  %87 = load float*, float** @coord_shadow, align 8
  %88 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %28, i32 0, i32 1
  store float* %87, float** %88, align 8
  %89 = load float, float* %18, align 4
  %90 = load float, float* %26, align 4
  %91 = fadd float %89, %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 5
  store float %91, float* %92, align 8
  %93 = load i32, i32* %21, align 4
  %94 = uitofp i32 %93 to float
  %95 = load float, float* %19, align 4
  %96 = fsub float %94, %95
  %97 = load float, float* %26, align 4
  %98 = fsub float %96, %97
  %99 = fptoui float %98 to i32
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 6
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %102 = call i32 @menu_display_draw(%struct.TYPE_9__* %27, %struct.TYPE_8__* %101)
  br label %103

103:                                              ; preds = %80, %54
  %104 = load float*, float** %25, align 8
  %105 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %28, i32 0, i32 1
  store float* %104, float** %105, align 8
  %106 = load float, float* %18, align 4
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 5
  store float %106, float* %107, align 8
  %108 = load i32, i32* %21, align 4
  %109 = uitofp i32 %108 to float
  %110 = load float, float* %19, align 4
  %111 = fsub float %109, %110
  %112 = fptoui float %111 to i32
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 6
  store i32 %112, i32* %113, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %115 = call i32 @menu_display_draw(%struct.TYPE_9__* %27, %struct.TYPE_8__* %114)
  br label %116

116:                                              ; preds = %103, %53
  ret void
}

declare dso_local i32 @menu_display_set_alpha(float*, float) #1

declare dso_local i32 @menu_display_draw(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
