; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_sixel_font.c_sixel_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_sixel_font.c_sixel_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float }
%struct.font_params = type { float, float, float, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i8*, %struct.font_params*)* @sixel_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sixel_render_msg(%struct.TYPE_6__* %0, i8* %1, i8* %2, %struct.font_params* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
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
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.font_params*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.font_params* %3, %struct.font_params** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %17, align 8
  %21 = load %struct.font_params*, %struct.font_params** %8, align 8
  store %struct.font_params* %21, %struct.font_params** %18, align 8
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @string_is_empty(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %4
  br label %116

31:                                               ; preds = %26
  %32 = load %struct.font_params*, %struct.font_params** %18, align 8
  %33 = icmp ne %struct.font_params* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.font_params*, %struct.font_params** %18, align 8
  %36 = getelementptr inbounds %struct.font_params, %struct.font_params* %35, i32 0, i32 0
  %37 = load float, float* %36, align 4
  store float %37, float* %9, align 4
  %38 = load %struct.font_params*, %struct.font_params** %18, align 8
  %39 = getelementptr inbounds %struct.font_params, %struct.font_params* %38, i32 0, i32 1
  %40 = load float, float* %39, align 4
  store float %40, float* %10, align 4
  %41 = load %struct.font_params*, %struct.font_params** %18, align 8
  %42 = getelementptr inbounds %struct.font_params, %struct.font_params* %41, i32 0, i32 2
  %43 = load float, float* %42, align 4
  store float %43, float* %11, align 4
  %44 = load %struct.font_params*, %struct.font_params** %18, align 8
  %45 = getelementptr inbounds %struct.font_params, %struct.font_params* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  br label %54

47:                                               ; preds = %31
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load float, float* %49, align 4
  store float %50, float* %9, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load float, float* %52, align 4
  store float %53, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  store i32 129, i32* %16, align 4
  br label %54

54:                                               ; preds = %47, %34
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %116

60:                                               ; preds = %54
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = uitofp i32 %71 to float
  %73 = load float, float* %10, align 4
  %74 = load i32, i32* %13, align 4
  %75 = uitofp i32 %74 to float
  %76 = fmul float %73, %75
  %77 = load float, float* %11, align 4
  %78 = fmul float %76, %77
  %79 = fsub float %72, %78
  %80 = fptoui float %79 to i32
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %16, align 4
  switch i32 %81, label %108 [
    i32 128, label %82
    i32 130, label %94
    i32 129, label %107
  ]

82:                                               ; preds = %60
  %83 = load float, float* %9, align 4
  %84 = load i32, i32* %12, align 4
  %85 = uitofp i32 %84 to float
  %86 = fmul float %83, %85
  %87 = load float, float* %11, align 4
  %88 = fmul float %86, %87
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = sitofp i32 %90 to float
  %92 = fsub float %88, %91
  %93 = fptoui float %92 to i32
  store i32 %93, i32* %14, align 4
  br label %116

94:                                               ; preds = %60
  %95 = load float, float* %9, align 4
  %96 = load i32, i32* %12, align 4
  %97 = uitofp i32 %96 to float
  %98 = fmul float %95, %97
  %99 = load float, float* %11, align 4
  %100 = fmul float %98, %99
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = sdiv i32 %102, 2
  %104 = sitofp i32 %103 to float
  %105 = fsub float %100, %104
  %106 = fptoui float %105 to i32
  store i32 %106, i32* %14, align 4
  br label %116

107:                                              ; preds = %60
  br label %108

108:                                              ; preds = %60, %107
  %109 = load float, float* %9, align 4
  %110 = load i32, i32* %12, align 4
  %111 = uitofp i32 %110 to float
  %112 = fmul float %109, %111
  %113 = load float, float* %11, align 4
  %114 = fmul float %112, %113
  %115 = fptoui float %114 to i32
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %30, %59, %108, %94, %82
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
