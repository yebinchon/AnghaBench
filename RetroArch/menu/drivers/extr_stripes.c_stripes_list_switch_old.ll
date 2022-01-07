; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_switch_old.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_switch_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32, i64)* @stripes_list_switch_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_list_switch_old(%struct.TYPE_7__* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @file_list_get_size(i32* %17)
  store i64 %18, i64* %13, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 0, %21
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sitofp i32 %24 to float
  store float %25, float* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  store i32 0, i32* %10, align 4
  %26 = load i64, i64* %13, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i64, i64* %13, align 8
  %30 = sub i64 %29, 1
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i64 [ %30, %28 ], [ 0, %31 ]
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = call i32 @video_driver_get_size(i32* null, i32* %12)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @stripes_calculate_visible_range(%struct.TYPE_7__* %36, i32 %37, i64 %38, i64 %39, i32* %10, i32* %11)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %79, %32
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %13, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %41
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @file_list_get_userdata_at_offset(i32* %47, i32 %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %16, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %79

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp uge i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ule i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = ptrtoint i32* %64 to i64
  %66 = load float, float* %15, align 4
  %67 = load float, float* %14, align 4
  %68 = call i32 @stripes_push_animations(%struct.TYPE_6__* %63, i64 %65, float %66, float %67)
  br label %78

69:                                               ; preds = %58, %54
  %70 = load float, float* %15, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store float %70, float* %72, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store float %70, float* %74, align 4
  %75 = load float, float* %14, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store float %75, float* %77, align 4
  br label %78

78:                                               ; preds = %69, %62
  br label %79

79:                                               ; preds = %78, %53
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %41

82:                                               ; preds = %41
  ret void
}

declare dso_local i64 @file_list_get_size(i32*) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @stripes_calculate_visible_range(%struct.TYPE_7__*, i32, i64, i64, i32*, i32*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i32) #1

declare dso_local i32 @stripes_push_animations(%struct.TYPE_6__*, i64, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
