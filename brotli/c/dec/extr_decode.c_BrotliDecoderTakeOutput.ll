; ModuleID = '/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_BrotliDecoderTakeOutput.c'
source_filename = "/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_BrotliDecoderTakeOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@BROTLI_TRUE = common dso_local global i32 0, align 4
@BROTLI_DECODER_SUCCESS = common dso_local global i64 0, align 8
@BROTLI_DECODER_NEEDS_MORE_OUTPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BrotliDecoderTakeOutput(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i64 [ %15, %13 ], [ 16777216, %16 ]
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %17
  %31 = load i64*, i64** %5, align 8
  store i64 0, i64* %31, align 8
  store i32* null, i32** %3, align 8
  br label %62

32:                                               ; preds = %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = call i32 @WrapRingBuffer(%struct.TYPE_6__* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = load i32, i32* @BROTLI_TRUE, align 4
  %37 = call i64 @WriteRingBuffer(%struct.TYPE_6__* %35, i64* %7, i32** %6, i32 0, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @BROTLI_DECODER_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @BROTLI_DECODER_NEEDS_MORE_OUTPUT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %32
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %46, %47
  %49 = load i64*, i64** %5, align 8
  store i64 %48, i64* %49, align 8
  br label %60

50:                                               ; preds = %41
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @SaveErrorCode(%struct.TYPE_6__* %55, i64 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i64*, i64** %5, align 8
  store i64 0, i64* %59, align 8
  store i32* null, i32** %6, align 8
  br label %60

60:                                               ; preds = %58, %45
  %61 = load i32*, i32** %6, align 8
  store i32* %61, i32** %3, align 8
  br label %62

62:                                               ; preds = %60, %30
  %63 = load i32*, i32** %3, align 8
  ret i32* %63
}

declare dso_local i32 @WrapRingBuffer(%struct.TYPE_6__*) #1

declare dso_local i64 @WriteRingBuffer(%struct.TYPE_6__*, i64*, i32**, i32, i32) #1

declare dso_local i32 @SaveErrorCode(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
