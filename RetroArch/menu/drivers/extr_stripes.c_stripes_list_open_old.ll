; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_open_old.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_open_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, float, float }
%struct.TYPE_6__ = type { float, float, float, i32 }
%struct.TYPE_8__ = type { float, float*, i64, i32*, i32, i32 }

@STRIPES_DELAY = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32, i64)* @stripes_list_open_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_list_open_old(%struct.TYPE_7__* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 10
  store i32 %20, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @file_list_get_size(i32* %21)
  store i64 %22, i64* %12, align 8
  %23 = call i32 @video_driver_get_size(i32* null, i32* %10)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %118, %4
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* %12, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %121

29:                                               ; preds = %24
  store float 0.000000e+00, float* %13, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @file_list_get_userdata_at_offset(i32* %30, i32 %31)
  %33 = inttoptr i64 %32 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %15, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %118

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  store float %45, float* %13, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store float 0.000000e+00, float* %13, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load float, float* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load float, float* %55, align 4
  %57 = fadd float %53, %56
  store float %57, float* %14, align 4
  %58 = load float, float* %14, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 0, %59
  %61 = sitofp i32 %60 to float
  %62 = fcmp olt float %58, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %50
  %64 = load float, float* %14, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add i32 %65, %66
  %68 = uitofp i32 %67 to float
  %69 = fcmp ogt float %64, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %63, %50
  %71 = load float, float* %13, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store float %71, float* %73, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store float 0.000000e+00, float* %75, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = mul nsw i32 %78, %79
  %81 = mul nsw i32 %80, -2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  br label %117

84:                                               ; preds = %63
  %85 = load i32, i32* @STRIPES_DELAY, align 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  store i32 %85, i32* %86, align 4
  %87 = load float, float* %13, align 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store float %87, float* %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store float* %90, float** %91, align 8
  %92 = load i32, i32* @EASING_OUT_QUAD, align 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  store i32 %92, i32* %93, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = ptrtoint i32* %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  store i64 %95, i64* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  store i32* null, i32** %97, align 8
  %98 = call i32 @menu_animation_push(%struct.TYPE_8__* %16)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store float 0.000000e+00, float* %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store float* %101, float** %102, align 8
  %103 = call i32 @menu_animation_push(%struct.TYPE_8__* %16)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %106, %107
  %109 = mul nsw i32 %108, -2
  %110 = sitofp i32 %109 to float
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store float %110, float* %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = bitcast i32* %113 to float*
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store float* %114, float** %115, align 8
  %116 = call i32 @menu_animation_push(%struct.TYPE_8__* %16)
  br label %117

117:                                              ; preds = %84, %70
  br label %118

118:                                              ; preds = %117, %36
  %119 = load i32, i32* %9, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %24

121:                                              ; preds = %24
  ret void
}

declare dso_local i64 @file_list_get_size(i32*) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i32) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
