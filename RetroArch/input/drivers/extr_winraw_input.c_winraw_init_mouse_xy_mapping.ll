; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_winraw_input.c_winraw_init_mouse_xy_mapping.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_winraw_input.c_winraw_init_mouse_xy_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.video_viewport = type { i32, i32, i32, i32, i64, i64 }

@g_mouse_cnt = common dso_local global i32 0, align 4
@g_mice = common dso_local global %struct.TYPE_2__* null, align 8
@g_view_abs_ratio_x = common dso_local global double 0.000000e+00, align 8
@g_view_abs_ratio_y = common dso_local global double 0.000000e+00, align 8
@g_mouse_xy_mapping_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @winraw_init_mouse_xy_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @winraw_init_mouse_xy_mapping() #0 {
  %1 = alloca %struct.video_viewport, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i64 @video_driver_get_viewport_info(%struct.video_viewport* %1)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %49

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %1, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %11, 2
  %13 = add nsw i32 %9, %12
  store i32 %13, i32* %2, align 4
  %14 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %1, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %1, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 2
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %37, %7
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @g_mouse_cnt, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_mice, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_mice, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %20

40:                                               ; preds = %20
  %41 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %1, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to double
  %44 = fdiv double %43, 6.553500e+04
  store double %44, double* @g_view_abs_ratio_x, align 8
  %45 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %1, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to double
  %48 = fdiv double %47, 6.553500e+04
  store double %48, double* @g_view_abs_ratio_y, align 8
  store i32 1, i32* @g_mouse_xy_mapping_ready, align 4
  br label %49

49:                                               ; preds = %40, %0
  ret void
}

declare dso_local i64 @video_driver_get_viewport_info(%struct.video_viewport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
