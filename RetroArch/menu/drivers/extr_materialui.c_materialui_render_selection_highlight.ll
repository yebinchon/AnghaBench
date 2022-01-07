; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_selection_highlight.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_selection_highlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, float, i64 }
%struct.TYPE_5__ = type { float, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i64, float*)* @materialui_render_selection_highlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_render_selection_highlight(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, float* %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store float* %7, float** %16, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = load i64, i64* %15, align 8
  %25 = call i64 @materialui_entry_onscreen(%struct.TYPE_6__* %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %107

27:                                               ; preds = %8
  store i32* null, i32** %17, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %18, align 8
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = sub nsw i32 %29, %33
  store i32 %34, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %27
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  %47 = load i32, i32* %19, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %19, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 2, %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 2, %55
  %57 = sub nsw i32 %52, %56
  %58 = load i32, i32* %21, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %21, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %39
  br label %65

63:                                               ; preds = %39
  %64 = load i32, i32* %21, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ 0, %62 ], [ %64, %63 ]
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %65, %27
  %68 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %68, i32** %17, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %107

72:                                               ; preds = %67
  %73 = load i32*, i32** %17, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i64 @file_list_get_userdata_at_offset(i32* %73, i64 %74)
  %76 = inttoptr i64 %75 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %18, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %78 = icmp ne %struct.TYPE_5__* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %107

80:                                               ; preds = %72
  %81 = load i32, i32* %13, align 4
  %82 = uitofp i32 %81 to float
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load float, float* %84, align 8
  %86 = fsub float %82, %85
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load float, float* %88, align 8
  %90 = fadd float %86, %89
  %91 = fptosi float %90 to i32
  store i32 %91, i32* %20, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sitofp i64 %94 to float
  %96 = fadd float %95, 1.500000e+00
  %97 = fptosi float %96 to i32
  store i32 %97, i32* %22, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load float*, float** %16, align 8
  %106 = call i32 @menu_display_draw_quad(i32* %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, float* %105)
  br label %107

107:                                              ; preds = %71, %79, %80, %8
  ret void
}

declare dso_local i64 @materialui_entry_onscreen(%struct.TYPE_6__*, i64) #1

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i64) #1

declare dso_local i32 @menu_display_draw_quad(i32*, i32, i32, i32, i32, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
