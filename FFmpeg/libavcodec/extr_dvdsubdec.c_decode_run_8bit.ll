; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsubdec.c_decode_run_8bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsubdec.c_decode_run_8bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @decode_run_8bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_run_8bit(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @get_bits1(i32* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @get_bits1(i32* %10)
  %12 = mul nsw i32 6, %11
  %13 = add nsw i32 2, %12
  %14 = call i32 @get_bits(i32* %9, i32 %13)
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @get_bits1(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @get_bits(i32* %23, i32 7)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @INT_MAX, align 4
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 9
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %27
  br label %37

33:                                               ; preds = %18
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @get_bits(i32* %34, i32 3)
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %32
  br label %39

38:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
