; ModuleID = '/home/carl/AnghaBench/brotli/c/fuzz/extr_decode_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/brotli/c/fuzz/extr_decode_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT = common dso_local global i64 0, align 8
@BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sub i64 %23, 1
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 7
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %21, %2
  %30 = load i32*, i32** %4, align 8
  store i32* %30, i32** %7, align 8
  store i32 1024, i32* %8, align 4
  %31 = call i64 @malloc(i32 1024)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %96

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 67108864, i32 16777216
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %42 = call i32* @BrotliDecoderCreateInstance(i32 0, i32 0, i32 0)
  store i32* %42, i32** %12, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %45, %36
  store i64 0, i64* %13, align 8
  br label %48

48:                                               ; preds = %90, %47
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %48
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %53, %54
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i64, i64* %5, align 8
  store i64 %60, i64* %14, align 8
  br label %61

61:                                               ; preds = %59, %52
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %13, align 8
  %64 = sub i64 %62, %63
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %14, align 8
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* @BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT, align 8
  store i64 %66, i64* %16, align 8
  br label %67

67:                                               ; preds = %79, %61
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* @BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  store i64 1024, i64* %17, align 8
  %72 = load i32*, i32** %9, align 8
  store i32* %72, i32** %18, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = call i64 @BrotliDecoderDecompressStream(i32* %73, i64* %15, i32** %7, i64* %17, i32** %18, i64* %11)
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %80

79:                                               ; preds = %71
  br label %67

80:                                               ; preds = %78, %67
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %91

85:                                               ; preds = %80
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* @BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %91

90:                                               ; preds = %85
  br label %48

91:                                               ; preds = %89, %84, %48
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @BrotliDecoderDestroyInstance(i32* %92)
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @free(i32* %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %91, %35
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @BrotliDecoderCreateInstance(i32, i32, i32) #1

declare dso_local i64 @BrotliDecoderDecompressStream(i32*, i64*, i32**, i64*, i32**, i64*) #1

declare dso_local i32 @BrotliDecoderDestroyInstance(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
