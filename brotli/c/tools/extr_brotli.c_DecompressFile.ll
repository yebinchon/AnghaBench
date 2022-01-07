; ModuleID = '/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_DecompressFile.c'
source_filename = "/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_DecompressFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i32, i32, i32 }

@BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"corrupt input [%s]\0A\00", align 1
@BROTLI_FALSE = common dso_local global i32 0, align 4
@BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT = common dso_local global i64 0, align 8
@BROTLI_DECODER_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Decompressed \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BROTLI_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @DecompressFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecompressFile(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i64, i64* @BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = call i32 @InitializeBuffers(%struct.TYPE_9__* %8)
  br label %10

10:                                               ; preds = %94, %2
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = call i64 @HasMoreInput(%struct.TYPE_9__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @PrintablePath(i32 %22)
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %105

26:                                               ; preds = %14
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = call i32 @ProvideInput(%struct.TYPE_9__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %105

32:                                               ; preds = %26
  br label %94

33:                                               ; preds = %10
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = call i32 @ProvideOutput(%struct.TYPE_9__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %105

43:                                               ; preds = %37
  br label %93

44:                                               ; preds = %33
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @BROTLI_DECODER_RESULT_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = call i32 @FlushOutput(%struct.TYPE_9__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %53, i32* %3, align 4
  br label %105

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = call i64 @HasMoreInput(%struct.TYPE_9__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59, %54
  %64 = load i32, i32* @stderr, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @PrintablePath(i32 %67)
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %70, i32* %3, align 4
  br label %105

71:                                               ; preds = %59
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = call i32 @PrintFileProcessingProgress(%struct.TYPE_9__* %79)
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %76, %71
  %84 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %84, i32* %3, align 4
  br label %105

85:                                               ; preds = %44
  %86 = load i32, i32* @stderr, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @PrintablePath(i32 %89)
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %90)
  %92 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %92, i32* %3, align 4
  br label %105

93:                                               ; preds = %43
  br label %94

94:                                               ; preds = %93, %32
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = call i64 @BrotliDecoderDecompressStream(i32* %95, i64* %97, i32* %99, i32* %101, i32* %103, i32 0)
  store i64 %104, i64* %6, align 8
  br label %10

105:                                              ; preds = %85, %83, %63, %52, %41, %30, %18
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @InitializeBuffers(%struct.TYPE_9__*) #1

declare dso_local i64 @HasMoreInput(%struct.TYPE_9__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @PrintablePath(i32) #1

declare dso_local i32 @ProvideInput(%struct.TYPE_9__*) #1

declare dso_local i32 @ProvideOutput(%struct.TYPE_9__*) #1

declare dso_local i32 @FlushOutput(%struct.TYPE_9__*) #1

declare dso_local i32 @PrintFileProcessingProgress(%struct.TYPE_9__*) #1

declare dso_local i64 @BrotliDecoderDecompressStream(i32*, i64*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
