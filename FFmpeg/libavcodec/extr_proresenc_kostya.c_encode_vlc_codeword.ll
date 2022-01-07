; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_encode_vlc_codeword.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_encode_vlc_codeword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @encode_vlc_codeword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_vlc_codeword(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 3
  %14 = add i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = lshr i32 %15, 5
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = lshr i32 %17, 2
  %19 = and i32 %18, 7
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1, %28
  %30 = sub i32 %27, %29
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @av_log2(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %38, %39
  %41 = call i32 @put_bits(i32* %35, i32 %40, i32 0)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @put_bits(i32* %42, i32 %44, i32 %45)
  br label %68

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @put_bits(i32* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @put_bits(i32* %58, i32 1, i32 1)
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @put_sbits(i32* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %26
  ret void
}

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
