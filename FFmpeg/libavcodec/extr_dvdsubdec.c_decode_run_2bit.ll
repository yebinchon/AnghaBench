; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsubdec.c_decode_run_2bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsubdec.c_decode_run_2bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @decode_run_2bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_run_2bit(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ule i32 %13, 64
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i1 [ false, %8 ], [ %14, %12 ]
  br i1 %16, label %17, label %26

17:                                               ; preds = %15
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @get_bits(i32* %20, i32 4)
  %22 = or i32 %19, %21
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 2
  store i32 %25, i32* %7, align 4
  br label %8

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 3
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @INT_MAX, align 4
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = lshr i32 %35, 2
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %32
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
