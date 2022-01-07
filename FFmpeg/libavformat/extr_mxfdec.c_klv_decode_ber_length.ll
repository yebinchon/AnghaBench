; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_klv_decode_ber_length.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_klv_decode_ber_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @klv_decode_ber_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klv_decode_ber_length(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @avio_r8(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 128
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 127
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %17, i32* %2, align 4
  br label %38

18:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %23, %18
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %5, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @avio_r8(i32* %26)
  %28 = or i32 %25, %27
  store i32 %28, i32* %4, align 4
  br label %19

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @INT64_MAX, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %34, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @avio_r8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
