; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_internal_set_progressmeter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_internal_set_progressmeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vc_progress_withmeter = common dso_local global i32 0, align 4
@kProgressMeterMax = common dso_local global i32 0, align 4
@vc_progressmeter_enable = common dso_local global i64 0, align 8
@vc_progressmeter_value = common dso_local global i32 0, align 4
@kProgressBarCapWidth = common dso_local global i32 0, align 4
@vc_uiscale = common dso_local global i32 0, align 4
@kProgressBarWidth = common dso_local global i32 0, align 4
@vc_progressmeter_drawn = common dso_local global i32 0, align 4
@kDataAlpha = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @internal_set_progressmeter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_set_progressmeter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @vc_progress_withmeter, align 4
  %8 = and i32 2, %7
  %9 = icmp eq i32 0, %8
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @kProgressMeterMax, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %1
  br label %74

18:                                               ; preds = %13
  %19 = load i64, i64* @vc_progressmeter_enable, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* @vc_progressmeter_value, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @kProgressBarCapWidth, align 4
  %27 = load i32, i32* @vc_uiscale, align 4
  %28 = mul nsw i32 %26, %27
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 0, %29 ]
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @kProgressBarWidth, align 4
  %33 = load i32, i32* @vc_uiscale, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 2, %35
  %37 = sub nsw i32 %34, %36
  %38 = load i32, i32* @vc_progressmeter_value, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @kProgressMeterMax, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 2, %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @vc_progressmeter_drawn, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %30
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @vc_progressmeter_drawn, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @vc_progressmeter_drawn, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* @kDataAlpha, align 4
  %58 = load i32, i32* @vc_progressmeter_drawn, align 4
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @vc_draw_progress_meter(i32 %57, i32 %60, i32 %61, i32 %62)
  br label %72

64:                                               ; preds = %30
  %65 = load i32, i32* @kDataAlpha, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* @vc_progressmeter_drawn, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @vc_draw_progress_meter(i32 %65, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %56
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* @vc_progressmeter_drawn, align 4
  br label %74

74:                                               ; preds = %17, %72, %18
  ret void
}

declare dso_local i32 @vc_draw_progress_meter(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
