; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tta.c_tta_check_crc64.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tta.c_tta_check_crc64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tta_check_crc64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tta_check_crc64(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @UINT64_MAX, align 4
  store i32 %7, i32* %3, align 4
  store i32 -1444268397, i32* %4, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @strlen(i32* %9)
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  store i32* %12, i32** %5, align 8
  br label %13

13:                                               ; preds = %38, %1
  %14 = load i32*, i32** %2, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ult i32* %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %2, align 8
  %20 = load i32, i32* %18, align 4
  %21 = shl i32 %20, 56
  %22 = load i32, i32* %3, align 4
  %23 = xor i32 %22, %21
  store i32 %23, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %35, %17
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = shl i32 %28, 1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = ashr i32 %31, 63
  %33 = and i32 %30, %32
  %34 = xor i32 %29, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %24

38:                                               ; preds = %24
  br label %13

39:                                               ; preds = %13
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @UINT64_MAX, align 4
  %42 = xor i32 %40, %41
  ret i32 %42
}

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
