; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_celp_math.c_ff_exp2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_celp_math.c_ff_exp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exp2a = common dso_local global i32* null, align 8
@exp2b = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_exp2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @exp2a, align 8
  %5 = load i32, i32* %2, align 4
  %6 = ashr i32 %5, 10
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 65536
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp sle i32 %11, 32767
  %13 = zext i1 %12 to i32
  %14 = call i32 @av_assert2(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 %15, 3
  %17 = load i32, i32* %3, align 4
  %18 = load i32*, i32** @exp2b, align 8
  %19 = load i32, i32* %2, align 4
  %20 = ashr i32 %19, 5
  %21 = and i32 %20, 31
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = mul i32 %17, %24
  %26 = lshr i32 %25, 17
  %27 = add i32 %16, %26
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 31
  %32 = mul i32 %29, %31
  %33 = mul i32 %32, 89
  %34 = lshr i32 %33, 22
  %35 = add i32 %28, %34
  ret i32 %35
}

declare dso_local i32 @av_assert2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
