; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_get_scroll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_get_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_5__*)* @materialui_get_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @materialui_get_scroll(%struct.TYPE_5__* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %13 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %13, i32** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %14 = call i64 (...) @menu_navigation_get_selection()
  store i64 %14, i64* %6, align 8
  %15 = call i32 (...) @menu_display_get_header_height()
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %1
  store float 0.000000e+00, float* %2, align 4
  br label %77

22:                                               ; preds = %18
  %23 = call i32 @video_driver_get_size(i32* %8, i32* %9)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub i32 %24, %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %26, %29
  %31 = uitofp i32 %30 to float
  %32 = fdiv float %31, 2.000000e+00
  store float %32, float* %10, align 4
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %51, %22
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i32*, i32** %4, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i64 @file_list_get_userdata_at_offset(i32* %38, i64 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %5, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %51

45:                                               ; preds = %37
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load float, float* %47, align 4
  %49 = load float, float* %11, align 4
  %50 = fadd float %49, %48
  store float %50, float* %11, align 4
  br label %51

51:                                               ; preds = %45, %44
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %12, align 8
  br label %33

54:                                               ; preds = %33
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @file_list_get_userdata_at_offset(i32* %55, i64 %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %5, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load float, float* %63, align 4
  %65 = fdiv float %64, 2.000000e+00
  %66 = load float, float* %11, align 4
  %67 = fadd float %66, %65
  store float %67, float* %11, align 4
  br label %68

68:                                               ; preds = %61, %54
  %69 = load float, float* %11, align 4
  %70 = load float, float* %10, align 4
  %71 = fcmp olt float %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store float 0.000000e+00, float* %2, align 4
  br label %77

73:                                               ; preds = %68
  %74 = load float, float* %11, align 4
  %75 = load float, float* %10, align 4
  %76 = fsub float %74, %75
  store float %76, float* %2, align 4
  br label %77

77:                                               ; preds = %73, %72, %21
  %78 = load float, float* %2, align 4
  ret float %78
}

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_display_get_header_height(...) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
