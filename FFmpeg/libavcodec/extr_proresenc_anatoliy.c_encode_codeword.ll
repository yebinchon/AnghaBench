; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_encode_codeword.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_encode_codeword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @encode_codeword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_codeword(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 3
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 5
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 2
  %19 = and i32 %18, 7
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add i32 %20, 1
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @av_log2(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %39, %40
  %42 = add i32 %41, 1
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @put_bits(i32* %43, i32 %44, i32 0)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %47, 1
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @put_bits(i32* %46, i32 %48, i32 %49)
  br label %73

51:                                               ; preds = %3
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %56, %57
  %59 = call i32 @put_bits(i32* %55, i32 %58, i32 0)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @put_bits(i32* %60, i32 1, i32 1)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @put_sbits(i32* %62, i32 %63, i32 %64)
  br label %72

66:                                               ; preds = %51
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @put_bits(i32* %67, i32 %68, i32 0)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @put_bits(i32* %70, i32 1, i32 1)
  br label %72

72:                                               ; preds = %66, %54
  br label %73

73:                                               ; preds = %72, %27
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
