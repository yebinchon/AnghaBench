; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_handle_jpeg.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_handle_jpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV411P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV440P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @handle_jpeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_jpeg(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %22 [
    i32 131, label %6
    i32 132, label %9
    i32 130, label %12
    i32 128, label %15
    i32 129, label %18
    i32 138, label %21
    i32 133, label %21
    i32 136, label %21
    i32 137, label %21
    i32 145, label %21
    i32 146, label %21
    i32 143, label %21
    i32 144, label %21
    i32 141, label %21
    i32 142, label %21
    i32 139, label %21
    i32 140, label %21
    i32 135, label %21
    i32 134, label %21
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %8 = load i32*, i32** %3, align 8
  store i32 %7, i32* %8, align 4
  store i32 1, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @AV_PIX_FMT_YUV411P, align 4
  %11 = load i32*, i32** %3, align 8
  store i32 %10, i32* %11, align 4
  store i32 1, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load i32, i32* @AV_PIX_FMT_YUV422P, align 4
  %14 = load i32*, i32** %3, align 8
  store i32 %13, i32* %14, align 4
  store i32 1, i32* %2, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @AV_PIX_FMT_YUV444P, align 4
  %17 = load i32*, i32** %3, align 8
  store i32 %16, i32* %17, align 4
  store i32 1, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @AV_PIX_FMT_YUV440P, align 4
  %20 = load i32*, i32** %3, align 8
  store i32 %19, i32* %20, align 4
  store i32 1, i32* %2, align 4
  br label %23

21:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21, %18, %15, %12, %9, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
