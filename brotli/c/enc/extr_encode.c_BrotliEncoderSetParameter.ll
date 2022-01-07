; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_BrotliEncoderSetParameter.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_BrotliEncoderSetParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@BROTLI_FALSE = common dso_local global i32 0, align 4
@BROTLI_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BrotliEncoderSetParameter(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %13, i32* %4, align 4
  br label %103

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %101 [
    i32 133, label %16
    i32 130, label %22
    i32 134, label %28
    i32 135, label %34
    i32 137, label %40
    i32 129, label %59
    i32 136, label %65
    i32 131, label %76
    i32 132, label %83
    i32 128, label %90
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 8
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %21, i32* %4, align 4
  br label %103

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %27, i32* %4, align 4
  br label %103

28:                                               ; preds = %14
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %33, i32* %4, align 4
  br label %103

34:                                               ; preds = %14
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %39, i32* %4, align 4
  br label %103

40:                                               ; preds = %14
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %47, i32* %4, align 4
  br label %103

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i8* @TO_BROTLI_BOOL(i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 7
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %58, i32* %4, align 4
  br label %103

59:                                               ; preds = %14
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %64, i32* %4, align 4
  br label %103

65:                                               ; preds = %14
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i8* @TO_BROTLI_BOOL(i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 6
  store i8* %71, i8** %74, align 8
  %75 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %75, i32* %4, align 4
  br label %103

76:                                               ; preds = %14
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %82, i32* %4, align 4
  br label %103

83:                                               ; preds = %14
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %89, i32* %4, align 4
  br label %103

90:                                               ; preds = %14
  %91 = load i32, i32* %7, align 4
  %92 = icmp ugt i32 %91, 1073741824
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %94, i32* %4, align 4
  br label %103

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 4
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %100, i32* %4, align 4
  br label %103

101:                                              ; preds = %14
  %102 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %95, %93, %83, %76, %65, %59, %48, %46, %34, %28, %22, %16, %12
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i8* @TO_BROTLI_BOOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
