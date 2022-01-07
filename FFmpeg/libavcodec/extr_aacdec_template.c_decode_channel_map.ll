; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_channel_map.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_CCE = common dso_local global i32 0, align 4
@TYPE_LFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([3 x i32]*, i32, i32*, i32)* @decode_channel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_channel_map([3 x i32]* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca [3 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store [3 x i32]* %0, [3 x i32]** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %10

10:                                               ; preds = %27, %4
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %25 [
    i32 130, label %16
    i32 132, label %16
    i32 128, label %16
    i32 131, label %19
    i32 129, label %23
  ]

16:                                               ; preds = %14, %14, %14
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @get_bits1(i32* %17)
  store i32 %18, i32* %9, align 4
  br label %27

19:                                               ; preds = %14
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @skip_bits1(i32* %20)
  %22 = load i32, i32* @TYPE_CCE, align 4
  store i32 %22, i32* %9, align 4
  br label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @TYPE_LFE, align 4
  store i32 %24, i32* %9, align 4
  br label %27

25:                                               ; preds = %14
  %26 = call i32 @av_assert0(i32 0)
  br label %27

27:                                               ; preds = %25, %23, %19, %16
  %28 = load i32, i32* %9, align 4
  %29 = load [3 x i32]*, [3 x i32]** %5, align 8
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 0
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %30, i64 0, i64 0
  store i32 %28, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @get_bits(i32* %32, i32 4)
  %34 = load [3 x i32]*, [3 x i32]** %5, align 8
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %34, i64 0
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load [3 x i32]*, [3 x i32]** %5, align 8
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %38, i64 0
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %39, i64 0, i64 2
  store i32 %37, i32* %40, align 4
  %41 = load [3 x i32]*, [3 x i32]** %5, align 8
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %41, i32 1
  store [3 x i32]* %42, [3 x i32]** %5, align 8
  br label %10

43:                                               ; preds = %10
  ret void
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
