; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000.h_needs_termination.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000.h_needs_termination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JPEG2000_CBLK_BYPASS = common dso_local global i32 0, align 4
@JPEG2000_CBLK_TERMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @needs_termination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_termination(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @JPEG2000_CBLK_BYPASS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = srem i32 %12, 3
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 %14, 3
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 2, i32* %3, align 4
  br label %47

22:                                               ; preds = %18, %11
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %47

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @JPEG2000_CBLK_TERMALL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 2
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 2, i32 1
  store i32 %38, i32* %3, align 4
  br label %47

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @JPEG2000_CBLK_TERMALL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %47

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %34, %28, %21
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
