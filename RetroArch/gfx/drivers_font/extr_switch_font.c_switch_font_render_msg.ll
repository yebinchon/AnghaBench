; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_switch_font.c_switch_font_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_switch_font.c_switch_font_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.font_params = type { float, float, float, i32, i32, i32, float, float, i32 }

@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i8*, %struct.font_params*)* @switch_font_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_font_render_msg(%struct.TYPE_4__* %0, i8* %1, i8* %2, %struct.font_params* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.font_params*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.font_params* %3, %struct.font_params** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %28, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %29, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %30, align 4
  %39 = load i32*, i32** %28, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %4
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47, %41, %4
  br label %130

52:                                               ; preds = %47, %44
  %53 = load %struct.font_params*, %struct.font_params** %8, align 8
  %54 = icmp ne %struct.font_params* %53, null
  br i1 %54, label %55, label %99

55:                                               ; preds = %52
  %56 = load %struct.font_params*, %struct.font_params** %8, align 8
  %57 = getelementptr inbounds %struct.font_params, %struct.font_params* %56, i32 0, i32 0
  %58 = load float, float* %57, align 4
  store float %58, float* %9, align 4
  %59 = load %struct.font_params*, %struct.font_params** %8, align 8
  %60 = getelementptr inbounds %struct.font_params, %struct.font_params* %59, i32 0, i32 1
  %61 = load float, float* %60, align 4
  store float %61, float* %10, align 4
  %62 = load %struct.font_params*, %struct.font_params** %8, align 8
  %63 = getelementptr inbounds %struct.font_params, %struct.font_params* %62, i32 0, i32 2
  %64 = load float, float* %63, align 4
  store float %64, float* %11, align 4
  %65 = load %struct.font_params*, %struct.font_params** %8, align 8
  %66 = getelementptr inbounds %struct.font_params, %struct.font_params* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %17, align 4
  %68 = load %struct.font_params*, %struct.font_params** %8, align 8
  %69 = getelementptr inbounds %struct.font_params, %struct.font_params* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  %71 = load %struct.font_params*, %struct.font_params** %8, align 8
  %72 = getelementptr inbounds %struct.font_params, %struct.font_params* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %15, align 4
  %74 = load %struct.font_params*, %struct.font_params** %8, align 8
  %75 = getelementptr inbounds %struct.font_params, %struct.font_params* %74, i32 0, i32 6
  %76 = load float, float* %75, align 4
  store float %76, float* %12, align 4
  %77 = load %struct.font_params*, %struct.font_params** %8, align 8
  %78 = getelementptr inbounds %struct.font_params, %struct.font_params* %77, i32 0, i32 7
  %79 = load float, float* %78, align 4
  store float %79, float* %13, align 4
  %80 = load %struct.font_params*, %struct.font_params** %8, align 8
  %81 = getelementptr inbounds %struct.font_params, %struct.font_params* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @FONT_COLOR_GET_RED(i32 %82)
  store i32 %83, i32* %20, align 4
  %84 = load %struct.font_params*, %struct.font_params** %8, align 8
  %85 = getelementptr inbounds %struct.font_params, %struct.font_params* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @FONT_COLOR_GET_GREEN(i32 %86)
  store i32 %87, i32* %21, align 4
  %88 = load %struct.font_params*, %struct.font_params** %8, align 8
  %89 = getelementptr inbounds %struct.font_params, %struct.font_params* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @FONT_COLOR_GET_BLUE(i32 %90)
  store i32 %91, i32* %22, align 4
  %92 = load %struct.font_params*, %struct.font_params** %8, align 8
  %93 = getelementptr inbounds %struct.font_params, %struct.font_params* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @FONT_COLOR_GET_ALPHA(i32 %94)
  store i32 %95, i32* %23, align 4
  %96 = load %struct.font_params*, %struct.font_params** %8, align 8
  %97 = getelementptr inbounds %struct.font_params, %struct.font_params* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %18, align 4
  br label %118

99:                                               ; preds = %52
  store float 0.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  %100 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  store i32 %100, i32* %17, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 255
  store i32 %104, i32* %20, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 255
  store i32 %108, i32* %21, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %111, 255
  store i32 %112, i32* %22, align 4
  store i32 255, i32* %23, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %23, align 4
  %117 = call i32 @COLOR_ABGR(i32 %113, i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %18, align 4
  store i32 -2, i32* %14, align 4
  store i32 -2, i32* %15, align 4
  store float 0x3FD3333340000000, float* %12, align 4
  store float 1.000000e+00, float* %13, align 4
  br label %118

118:                                              ; preds = %99, %55
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @strlen(i8* %119)
  store i32 %120, i32* %16, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = load i32*, i32** %28, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load float, float* %11, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load float, float* %9, align 4
  %127 = load float, float* %10, align 4
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @switch_font_render_message(%struct.TYPE_4__* %121, i32* %122, i8* %123, float %124, i32 %125, float %126, float %127, i32 %128)
  br label %130

130:                                              ; preds = %118, %51
  ret void
}

declare dso_local i32 @FONT_COLOR_GET_RED(i32) #1

declare dso_local i32 @FONT_COLOR_GET_GREEN(i32) #1

declare dso_local i32 @FONT_COLOR_GET_BLUE(i32) #1

declare dso_local i32 @FONT_COLOR_GET_ALPHA(i32) #1

declare dso_local i32 @COLOR_ABGR(i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @switch_font_render_message(%struct.TYPE_4__*, i32*, i8*, float, i32, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
