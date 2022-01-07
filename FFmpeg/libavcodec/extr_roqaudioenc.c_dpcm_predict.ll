; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqaudioenc.c_dpcm_predict.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqaudioenc.c_dpcm_predict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DPCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i16*, i16)* @dpcm_predict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @dpcm_predict(i16* %0, i16 signext %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i16 %1, i16* %4, align 2
  %9 = load i16, i16* %4, align 2
  %10 = sext i16 %9 to i32
  %11 = load i16*, i16** %3, align 8
  %12 = load i16, i16* %11, align 2
  %13 = sext i16 %12 to i32
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @FFABS(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MAX_DPCM, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 127, i32* %7, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ff_sqrt(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  %33 = icmp sgt i32 %27, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %24, %23
  br label %38

38:                                               ; preds = %58, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i16*, i16** %3, align 8
  %49 = load i16, i16* %48, align 2
  %50 = sext i16 %49 to i32
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 32767
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, -32768
  br i1 %57, label %58, label %61

58:                                               ; preds = %55, %47
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  br label %38

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, 7
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = trunc i32 %66 to i16
  %68 = load i16*, i16** %3, align 8
  store i16 %67, i16* %68, align 2
  %69 = load i32, i32* %7, align 4
  %70 = trunc i32 %69 to i8
  ret i8 %70
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @ff_sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
