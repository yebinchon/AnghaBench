; ModuleID = '/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_DecompressFiles.c'
source_filename = "/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_DecompressFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@BROTLI_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@BROTLI_FALSE = common dso_local global i64 0, align 8
@BROTLI_DECODER_PARAM_LARGE_WINDOW = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Use -h help. Use -f to force input from a terminal.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @DecompressFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DecompressFiles(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  br label %6

6:                                                ; preds = %66, %1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = call i64 @NextFile(%struct.TYPE_7__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %67

10:                                               ; preds = %6
  %11 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %11, i64* %4, align 8
  %12 = call i32* @BrotliDecoderCreateInstance(i32* null, i32* null, i32* null)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %18, i64* %2, align 8
  br label %69

19:                                               ; preds = %10
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @BROTLI_DECODER_PARAM_LARGE_WINDOW, align 4
  %22 = call i32 @BrotliDecoderSetParameter(i32* %20, i32 %21, i32 1)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = call i64 @OpenFiles(%struct.TYPE_7__* %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @STDIN_FILENO, align 4
  %39 = call i64 @isatty(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %41, %37, %32, %27, %19
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @DecompressFile(%struct.TYPE_7__* %49, i32* %50)
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @BrotliDecoderDestroyInstance(i32* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @CloseFiles(%struct.TYPE_7__* %55, i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %59, %52
  %62 = load i64, i64* %4, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %65, i64* %2, align 8
  br label %69

66:                                               ; preds = %61
  br label %6

67:                                               ; preds = %6
  %68 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %67, %64, %15
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i64 @NextFile(%struct.TYPE_7__*) #1

declare dso_local i32* @BrotliDecoderCreateInstance(i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @BrotliDecoderSetParameter(i32*, i32, i32) #1

declare dso_local i64 @OpenFiles(%struct.TYPE_7__*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i64 @DecompressFile(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @BrotliDecoderDestroyInstance(i32*) #1

declare dso_local i32 @CloseFiles(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
