; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_init_device_params.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_init_device_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@video_layout_internal_device_params = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @init_device_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_device_params(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i32*, i32** @video_layout_internal_device_params, align 8
  %7 = call i64 @ARRAY_SIZE(i32* %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32*, i32** @video_layout_internal_device_params, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @video_layout_internal_device_params, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @scope_param(i32* %10, i32 %14, i32 %19)
  br label %21

21:                                               ; preds = %9
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 2
  store i64 %23, i64* %3, align 8
  br label %4

24:                                               ; preds = %4
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @scope_param(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
