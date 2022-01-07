; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_faxcompr.c_find_group3_syncmarker.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_faxcompr.c_find_group3_syncmarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @find_group3_syncmarker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group3_syncmarker(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @get_bits_count(i32* %7)
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %5, align 4
  %16 = icmp sgt i32 %14, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @get_bits1(i32* %20)
  %22 = add nsw i64 %19, %21
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 4095
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %33

31:                                               ; preds = %17
  br label %13

32:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @get_bits_count(i32*) #1

declare dso_local i64 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
