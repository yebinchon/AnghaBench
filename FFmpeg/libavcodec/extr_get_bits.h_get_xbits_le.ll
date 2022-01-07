; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_get_bits.h_get_xbits_le.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_get_bits.h_get_xbits_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@re = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_xbits_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_xbits_le(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @re, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @OPEN_READER(i32 %7, i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 25
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @av_assert2(i32 %17)
  %19 = load i32, i32* @re, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @UPDATE_CACHE_LE(i32 %19, i32* %20)
  %22 = load i32, i32* @re, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @GET_CACHE(i32 %22, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @sign_extend(i32 %26, i32 %27)
  %29 = ashr i32 %28, 31
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @re, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @LAST_SKIP_BITS(i32 %30, i32* %31, i32 %32)
  %34 = load i32, i32* @re, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @CLOSE_READER(i32 %34, i32* %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = xor i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @zero_extend(i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = xor i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %43, %44
  ret i32 %45
}

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @UPDATE_CACHE_LE(i32, i32*) #1

declare dso_local i32 @GET_CACHE(i32, i32*) #1

declare dso_local i32 @sign_extend(i32, i32) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

declare dso_local i32 @zero_extend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
