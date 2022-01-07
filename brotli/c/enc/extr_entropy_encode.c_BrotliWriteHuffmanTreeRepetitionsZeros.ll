; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_entropy_encode.c_BrotliWriteHuffmanTreeRepetitionsZeros.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_entropy_encode.c_BrotliWriteHuffmanTreeRepetitionsZeros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BROTLI_TRUE = common dso_local global i64 0, align 8
@BROTLI_REPEAT_ZERO_CODE_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i64*, i64*)* @BrotliWriteHuffmanTreeRepetitionsZeros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BrotliWriteHuffmanTreeRepetitionsZeros(i64 %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 11
  br i1 %12, label %13, label %27

13:                                               ; preds = %4
  %14 = load i64*, i64** %7, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  store i64 0, i64* %17, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 0, i64* %21, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %13, %4
  %28 = load i64, i64* %5, align 8
  %29 = icmp ult i64 %28, 3
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i64*, i64** %7, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 0, i64* %39, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 0, i64* %43, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %35
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %31

50:                                               ; preds = %31
  br label %93

51:                                               ; preds = %27
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %5, align 8
  %55 = sub i64 %54, 3
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %79, %51
  %57 = load i64, i64* @BROTLI_TRUE, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %56
  %60 = load i64, i64* @BROTLI_REPEAT_ZERO_CODE_LENGTH, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %60, i64* %64, align 8
  %65 = load i64, i64* %5, align 8
  %66 = and i64 %65, 7
  %67 = load i64*, i64** %8, align 8
  %68 = load i64*, i64** %6, align 8
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %66, i64* %70, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* %5, align 8
  %75 = lshr i64 %74, 3
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %59
  br label %82

79:                                               ; preds = %59
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %5, align 8
  br label %56

82:                                               ; preds = %78, %56
  %83 = load i64*, i64** %7, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64*, i64** %6, align 8
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @Reverse(i64* %83, i64 %84, i64 %86)
  %88 = load i64*, i64** %8, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64*, i64** %6, align 8
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @Reverse(i64* %88, i64 %89, i64 %91)
  br label %93

93:                                               ; preds = %82, %50
  ret void
}

declare dso_local i32 @Reverse(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
