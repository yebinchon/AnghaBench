; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_draw_text.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_draw_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_params = type { float, float, float, float, float, float, i32, i32, i32, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_display_draw_text(i32* %0, i8* %1, float %2, float %3, i32 %4, i32 %5, i32 %6, i32 %7, float %8, i32 %9, float %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.font_params, align 4
  store i32* %0, i32** %13, align 8
  store i8* %1, i8** %14, align 8
  store float %2, float* %15, align 4
  store float %3, float* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store float %8, float* %21, align 4
  store i32 %9, i32* %22, align 4
  store float %10, float* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load i32, i32* %19, align 4
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %12
  br label %88

30:                                               ; preds = %12
  %31 = load i32, i32* %24, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %30
  %34 = load float, float* %15, align 4
  %35 = fcmp olt float %34, -6.400000e+01
  br i1 %35, label %51, label %36

36:                                               ; preds = %33
  %37 = load float, float* %15, align 4
  %38 = load i32, i32* %17, align 4
  %39 = add nsw i32 %38, 64
  %40 = sitofp i32 %39 to float
  %41 = fcmp ogt float %37, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = load float, float* %16, align 4
  %44 = fcmp olt float %43, -6.400000e+01
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load float, float* %16, align 4
  %47 = load i32, i32* %18, align 4
  %48 = add nsw i32 %47, 64
  %49 = sitofp i32 %48 to float
  %50 = fcmp ogt float %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %42, %36, %33
  br label %88

52:                                               ; preds = %45, %30
  %53 = load float, float* %15, align 4
  %54 = load i32, i32* %17, align 4
  %55 = sitofp i32 %54 to float
  %56 = fdiv float %53, %55
  %57 = getelementptr inbounds %struct.font_params, %struct.font_params* %25, i32 0, i32 0
  store float %56, float* %57, align 4
  %58 = load float, float* %16, align 4
  %59 = load i32, i32* %18, align 4
  %60 = sitofp i32 %59 to float
  %61 = fdiv float %58, %60
  %62 = fsub float 1.000000e+00, %61
  %63 = getelementptr inbounds %struct.font_params, %struct.font_params* %25, i32 0, i32 1
  store float %62, float* %63, align 4
  %64 = load float, float* %21, align 4
  %65 = getelementptr inbounds %struct.font_params, %struct.font_params* %25, i32 0, i32 2
  store float %64, float* %65, align 4
  %66 = getelementptr inbounds %struct.font_params, %struct.font_params* %25, i32 0, i32 3
  store float 0.000000e+00, float* %66, align 4
  %67 = getelementptr inbounds %struct.font_params, %struct.font_params* %25, i32 0, i32 4
  store float 0.000000e+00, float* %67, align 4
  %68 = getelementptr inbounds %struct.font_params, %struct.font_params* %25, i32 0, i32 5
  store float 0.000000e+00, float* %68, align 4
  %69 = load i32, i32* %19, align 4
  %70 = getelementptr inbounds %struct.font_params, %struct.font_params* %25, i32 0, i32 6
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.font_params, %struct.font_params* %25, i32 0, i32 7
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* %20, align 4
  %73 = getelementptr inbounds %struct.font_params, %struct.font_params* %25, i32 0, i32 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %22, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %52
  %77 = load float, float* %23, align 4
  %78 = getelementptr inbounds %struct.font_params, %struct.font_params* %25, i32 0, i32 4
  store float %77, float* %78, align 4
  %79 = load float, float* %23, align 4
  %80 = fneg float %79
  %81 = getelementptr inbounds %struct.font_params, %struct.font_params* %25, i32 0, i32 5
  store float %80, float* %81, align 4
  %82 = getelementptr inbounds %struct.font_params, %struct.font_params* %25, i32 0, i32 9
  store float 0x3FD6666660000000, float* %82, align 4
  br label %83

83:                                               ; preds = %76, %52
  %84 = load i8*, i8** %14, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = bitcast i32* %85 to i8*
  %87 = call i32 @video_driver_set_osd_msg(i8* %84, %struct.font_params* %25, i8* %86)
  br label %88

88:                                               ; preds = %83, %51, %29
  ret void
}

declare dso_local i32 @video_driver_set_osd_msg(i8*, %struct.font_params*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
