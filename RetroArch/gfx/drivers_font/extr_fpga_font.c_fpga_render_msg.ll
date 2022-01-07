; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_fpga_font.c_fpga_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_fpga_font.c_fpga_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, float, float }
%struct.TYPE_5__ = type { i32 }
%struct.font_params = type { float, float, float, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i8*, i8*)* @fpga_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpga_render_msg(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.font_params*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.font_params*
  store %struct.font_params* %23, %struct.font_params** %17, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %18, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %19, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @string_is_empty(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %4
  br label %102

37:                                               ; preds = %32
  %38 = load %struct.font_params*, %struct.font_params** %17, align 8
  %39 = icmp ne %struct.font_params* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.font_params*, %struct.font_params** %17, align 8
  %42 = getelementptr inbounds %struct.font_params, %struct.font_params* %41, i32 0, i32 0
  %43 = load float, float* %42, align 4
  store float %43, float* %9, align 4
  %44 = load %struct.font_params*, %struct.font_params** %17, align 8
  %45 = getelementptr inbounds %struct.font_params, %struct.font_params* %44, i32 0, i32 1
  %46 = load float, float* %45, align 4
  store float %46, float* %10, align 4
  %47 = load %struct.font_params*, %struct.font_params** %17, align 8
  %48 = getelementptr inbounds %struct.font_params, %struct.font_params* %47, i32 0, i32 2
  %49 = load float, float* %48, align 4
  store float %49, float* %11, align 4
  %50 = load %struct.font_params*, %struct.font_params** %17, align 8
  %51 = getelementptr inbounds %struct.font_params, %struct.font_params* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  br label %60

53:                                               ; preds = %37
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load float, float* %55, align 4
  store float %56, float* %9, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load float, float* %58, align 4
  store float %59, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  store i32 129, i32* %16, align 4
  br label %60

60:                                               ; preds = %53, %40
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %102

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @utf8len(i8* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  switch i32 %69, label %101 [
    i32 129, label %70
    i32 128, label %78
    i32 130, label %89
  ]

70:                                               ; preds = %66
  %71 = load float, float* %9, align 4
  %72 = load i32, i32* %18, align 4
  %73 = uitofp i32 %72 to float
  %74 = fmul float %71, %73
  %75 = load float, float* %11, align 4
  %76 = fmul float %74, %75
  %77 = fptoui float %76 to i32
  store i32 %77, i32* %13, align 4
  br label %102

78:                                               ; preds = %66
  %79 = load float, float* %9, align 4
  %80 = load i32, i32* %18, align 4
  %81 = uitofp i32 %80 to float
  %82 = fmul float %79, %81
  %83 = load float, float* %11, align 4
  %84 = fmul float %82, %83
  %85 = load i32, i32* %15, align 4
  %86 = uitofp i32 %85 to float
  %87 = fsub float %84, %86
  %88 = fptoui float %87 to i32
  store i32 %88, i32* %13, align 4
  br label %102

89:                                               ; preds = %66
  %90 = load float, float* %9, align 4
  %91 = load i32, i32* %18, align 4
  %92 = uitofp i32 %91 to float
  %93 = fmul float %90, %92
  %94 = load float, float* %11, align 4
  %95 = fmul float %93, %94
  %96 = load i32, i32* %15, align 4
  %97 = udiv i32 %96, 2
  %98 = uitofp i32 %97 to float
  %99 = fsub float %95, %98
  %100 = fptoui float %99 to i32
  store i32 %100, i32* %13, align 4
  br label %102

101:                                              ; preds = %66
  br label %102

102:                                              ; preds = %36, %65, %101, %89, %78, %70
  ret void
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @utf8len(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
