; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_audiogen.c_int_cos.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_audiogen.c_int_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FRAC_ONE = common dso_local global i32 0, align 4
@cos_table = common dso_local global i16* null, align 8
@CSHIFT = common dso_local global i32 0, align 4
@FRAC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @int_cos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_cos(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @FRAC_ONE, align 4
  %9 = sub nsw i32 %8, 1
  %10 = and i32 %7, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @FRAC_ONE, align 4
  %13 = sdiv i32 %12, 2
  %14 = icmp sge i32 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @FRAC_ONE, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %15, %1
  store i32 0, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @FRAC_ONE, align 4
  %22 = sdiv i32 %21, 4
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  %25 = load i32, i32* @FRAC_ONE, align 4
  %26 = sdiv i32 %25, 2
  %27 = load i32, i32* %2, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i16*, i16** @cos_table, align 8
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @CSHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %30, i64 %34
  store i16* %35, i16** %6, align 8
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @CSHIFT, align 4
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %36, %39
  store i32 %40, i32* %5, align 4
  %41 = load i16*, i16** %6, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 0
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16*, i16** %6, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 1
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16*, i16** %6, align 8
  %50 = getelementptr inbounds i16, i16* %49, i64 0
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = sub nsw i32 %48, %52
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* @CSHIFT, align 4
  %57 = sub nsw i32 %56, 1
  %58 = shl i32 1, %57
  %59 = add nsw i32 %55, %58
  %60 = load i32, i32* @CSHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = add nsw i32 %44, %61
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %3, align 4
  %65 = xor i32 %63, %64
  %66 = load i32, i32* %3, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @FRAC_BITS, align 4
  %70 = sub nsw i32 %69, 15
  %71 = shl i32 %68, %70
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
