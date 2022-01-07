; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_mpegvideo_alpha.c_dct_unquantize_h263_axp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_mpegvideo_alpha.c_dct_unquantize_h263_axp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @dct_unquantize_h263_axp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dct_unquantize_h263_axp(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = mul nsw i32 %19, 255
  %21 = ashr i32 %20, 8
  %22 = call i32 @WORD_VEC(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @WORD_VEC(i32 %23)
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %80, %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ldq(i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %80

35:                                               ; preds = %29
  %36 = call i32 @WORD_VEC(i32 32767)
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @cmpbge(i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = ashr i32 %39, 1
  %41 = or i32 %40, 128
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @zap(i32 -1, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @cmpbge(i32 0, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = ashr i32 %48, 1
  %50 = load i32, i32* %14, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = mul nsw i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %13, align 4
  %57 = shl i32 %56, 16
  %58 = and i32 %55, %57
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %13, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @zap(i32 %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @stq(i32 %77, i32* %78)
  br label %80

80:                                               ; preds = %35, %34
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32* %82, i32** %5, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 4
  store i32 %84, i32* %11, align 4
  br label %25

85:                                               ; preds = %25
  ret void
}

declare dso_local i32 @WORD_VEC(i32) #1

declare dso_local i32 @ldq(i32*) #1

declare dso_local i32 @cmpbge(i32, i32) #1

declare dso_local i32 @zap(i32, i32) #1

declare dso_local i32 @stq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
