; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263enc.c_h263p_encode_umotion.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263enc.c_h263p_encode_umotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @h263p_encode_umotion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h263p_encode_umotion(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i16 0, i16* %5, align 2
  store i16 0, i16* %6, align 2
  store i16 0, i16* %7, align 2
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @put_bits(i32* %14, i32 1, i32 1)
  br label %102

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @put_bits(i32* %20, i32 3, i32 0)
  br label %101

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @put_bits(i32* %26, i32 3, i32 2)
  br label %100

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 0, %32
  %34 = trunc i32 %33 to i16
  %35 = sext i16 %34 to i32
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = trunc i32 %37 to i16
  %39 = sext i16 %38 to i32
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i32 [ %35, %31 ], [ %39, %36 ]
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %5, align 2
  %43 = load i16, i16* %5, align 2
  store i16 %43, i16* %8, align 2
  br label %44

44:                                               ; preds = %48, %40
  %45 = load i16, i16* %8, align 2
  %46 = sext i16 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i16, i16* %8, align 2
  %50 = sext i16 %49 to i32
  %51 = ashr i32 %50, 1
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %8, align 2
  %53 = load i16, i16* %7, align 2
  %54 = add i16 %53, 1
  store i16 %54, i16* %7, align 2
  br label %44

55:                                               ; preds = %44
  %56 = load i16, i16* %7, align 2
  %57 = sext i16 %56 to i32
  %58 = sub nsw i32 %57, 1
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %6, align 2
  br label %60

60:                                               ; preds = %64, %55
  %61 = load i16, i16* %6, align 2
  %62 = sext i16 %61 to i32
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = load i16, i16* %5, align 2
  %66 = sext i16 %65 to i32
  %67 = load i16, i16* %6, align 2
  %68 = sext i16 %67 to i32
  %69 = sub nsw i32 %68, 1
  %70 = shl i32 1, %69
  %71 = and i32 %66, %70
  %72 = load i16, i16* %6, align 2
  %73 = sext i16 %72 to i32
  %74 = sub nsw i32 %73, 1
  %75 = ashr i32 %71, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = shl i32 %76, 1
  %78 = or i32 %77, 1
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = shl i32 %79, 2
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %9, align 4
  %83 = load i16, i16* %6, align 2
  %84 = add i16 %83, -1
  store i16 %84, i16* %6, align 2
  br label %60

85:                                               ; preds = %60
  %86 = load i32, i32* %9, align 4
  %87 = shl i32 %86, 1
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = or i32 %87, %90
  %92 = shl i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = load i32*, i32** %3, align 8
  %94 = load i16, i16* %7, align 2
  %95 = sext i16 %94 to i32
  %96 = mul nsw i32 2, %95
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @put_bits(i32* %93, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %85, %25
  br label %101

101:                                              ; preds = %100, %19
  br label %102

102:                                              ; preds = %101, %13
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
