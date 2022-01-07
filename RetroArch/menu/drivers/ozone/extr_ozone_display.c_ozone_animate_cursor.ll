; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_display.c_ozone_animate_cursor.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_display.c_ozone_animate_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, float*, float, i32*, i32*, i32, i32 }

@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@ozone_default_theme = common dso_local global i32 0, align 4
@ANIMATION_CURSOR_PULSE = common dso_local global i32 0, align 4
@ozone_cursor_animation_cb = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, float*)* @ozone_animate_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ozone_animate_cursor(i32* %0, float* %1, float* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %9 = load i32, i32* @EASING_OUT_QUAD, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i64 ptrtoint (i32* @ozone_default_theme to i64), i64* %11, align 8
  %12 = load i32, i32* @ANIMATION_CURSOR_PULSE, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  store i32 %12, i32* %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i32* %14, i32** %15, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %53, %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %56

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 7
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 11
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 15
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %22, %19
  br label %53

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 14
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** @ozone_cursor_animation_cb, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i32* %36, i32** %37, align 8
  br label %40

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = load float*, float** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store float* %44, float** %45, align 8
  %46 = load float*, float** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store float %50, float* %51, align 8
  %52 = call i32 @menu_animation_push(%struct.TYPE_3__* %7)
  br label %53

53:                                               ; preds = %40, %31
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %16

56:                                               ; preds = %16
  ret void
}

declare dso_local i32 @menu_animation_push(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
