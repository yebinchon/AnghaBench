; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_create_augmented_vector.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_create_augmented_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alpha = common dso_local global i32* null, align 8
@SUBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64*)* @create_augmented_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_augmented_vector(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [4 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @FFMIN(i32 4, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %22, 2
  %24 = call i32 @memcpy(i64* %16, i64* %21, i32 %23)
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64*, i64** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i32*, i32** @alpha, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @vector_multiplication(i64* %27, i64* %36, i32* %37, i32 %38, i32 15)
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %41 = load i64*, i64** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = load i32*, i32** @alpha, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @vector_rmultiplication(i64* %40, i64* %45, i32* %50, i32 %51, i32 15)
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64*, i64** %6, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @add_vector_and_shift(i64* %55, i64* %58, i64* %59, i32 %60, i32 0)
  %62 = load i64*, i64** %6, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64*, i64** %5, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i32, i32* @SUBL, align 4
  %72 = load i32, i32* %4, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @FFMIN(i32 %73, i32 %74)
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy(i64* %65, i64* %70, i32 %78)
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @vector_multiplication(i64*, i64*, i32*, i32, i32) #1

declare dso_local i32 @vector_rmultiplication(i64*, i64*, i32*, i32, i32) #1

declare dso_local i32 @add_vector_and_shift(i64*, i64*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
