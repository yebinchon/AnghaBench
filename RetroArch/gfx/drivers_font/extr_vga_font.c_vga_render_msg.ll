; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vga_font.c_vga_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vga_font.c_vga_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }
%struct.font_params = type { float, float, float, i32 }
%struct.TYPE_5__ = type { i32 }

@VGA_WIDTH = common dso_local global i32 0, align 4
@VGA_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i8*, %struct.font_params*)* @vga_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_render_msg(%struct.TYPE_4__* %0, i8* %1, i8* %2, %struct.font_params* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.font_params*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.font_params* %3, %struct.font_params** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %17, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @string_is_empty(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %4
  br label %104

27:                                               ; preds = %22
  %28 = load %struct.font_params*, %struct.font_params** %8, align 8
  %29 = icmp ne %struct.font_params* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.font_params*, %struct.font_params** %8, align 8
  %32 = getelementptr inbounds %struct.font_params, %struct.font_params* %31, i32 0, i32 0
  %33 = load float, float* %32, align 4
  store float %33, float* %9, align 4
  %34 = load %struct.font_params*, %struct.font_params** %8, align 8
  %35 = getelementptr inbounds %struct.font_params, %struct.font_params* %34, i32 0, i32 1
  %36 = load float, float* %35, align 4
  store float %36, float* %10, align 4
  %37 = load %struct.font_params*, %struct.font_params** %8, align 8
  %38 = getelementptr inbounds %struct.font_params, %struct.font_params* %37, i32 0, i32 2
  %39 = load float, float* %38, align 4
  store float %39, float* %11, align 4
  %40 = load %struct.font_params*, %struct.font_params** %8, align 8
  %41 = getelementptr inbounds %struct.font_params, %struct.font_params* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  br label %50

43:                                               ; preds = %27
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load float, float* %45, align 4
  store float %46, float* %9, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load float, float* %48, align 4
  store float %49, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  store i32 129, i32* %16, align 4
  br label %50

50:                                               ; preds = %43, %30
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %104

56:                                               ; preds = %50
  %57 = load i32, i32* @VGA_WIDTH, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* @VGA_HEIGHT, align 4
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = uitofp i32 %59 to float
  %61 = load float, float* %10, align 4
  %62 = load i32, i32* %13, align 4
  %63 = uitofp i32 %62 to float
  %64 = fmul float %61, %63
  %65 = load float, float* %11, align 4
  %66 = fmul float %64, %65
  %67 = fsub float %60, %66
  %68 = fptoui float %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  switch i32 %69, label %103 [
    i32 129, label %70
    i32 128, label %78
    i32 130, label %90
  ]

70:                                               ; preds = %56
  %71 = load float, float* %9, align 4
  %72 = load i32, i32* %12, align 4
  %73 = uitofp i32 %72 to float
  %74 = fmul float %71, %73
  %75 = load float, float* %11, align 4
  %76 = fmul float %74, %75
  %77 = fptoui float %76 to i32
  store i32 %77, i32* %14, align 4
  br label %104

78:                                               ; preds = %56
  %79 = load float, float* %9, align 4
  %80 = load i32, i32* %12, align 4
  %81 = uitofp i32 %80 to float
  %82 = fmul float %79, %81
  %83 = load float, float* %11, align 4
  %84 = fmul float %82, %83
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = sitofp i32 %86 to float
  %88 = fsub float %84, %87
  %89 = fptoui float %88 to i32
  store i32 %89, i32* %14, align 4
  br label %104

90:                                               ; preds = %56
  %91 = load float, float* %9, align 4
  %92 = load i32, i32* %12, align 4
  %93 = uitofp i32 %92 to float
  %94 = fmul float %91, %93
  %95 = load float, float* %11, align 4
  %96 = fmul float %94, %95
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = sdiv i32 %98, 2
  %100 = sitofp i32 %99 to float
  %101 = fsub float %96, %100
  %102 = fptoui float %101 to i32
  store i32 %102, i32* %14, align 4
  br label %104

103:                                              ; preds = %56
  br label %104

104:                                              ; preds = %26, %55, %103, %90, %78, %70
  ret void
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
