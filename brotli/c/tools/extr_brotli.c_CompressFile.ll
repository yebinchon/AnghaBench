; ModuleID = '/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_CompressFile.c'
source_filename = "/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_CompressFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i32, i32 }

@BROTLI_FALSE = common dso_local global i32 0, align 4
@BROTLI_OPERATION_FINISH = common dso_local global i32 0, align 4
@BROTLI_OPERATION_PROCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to compress data [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Compressed \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BROTLI_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @CompressFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CompressFile(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = call i32 @InitializeBuffers(%struct.TYPE_9__* %8)
  br label %10

10:                                               ; preds = %94, %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = call i32 @ProvideInput(%struct.TYPE_9__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %95

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = call i32 @HasMoreInput(%struct.TYPE_9__* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %24, %15, %10
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @BROTLI_OPERATION_FINISH, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @BROTLI_OPERATION_PROCESS, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = call i32 @BrotliEncoderCompressStream(i32* %31, i32 %39, i64* %41, i32* %43, i64* %45, i32* %47, i32* null)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* @stderr, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @PrintablePath(i32 %54)
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %95

58:                                               ; preds = %38
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = call i32 @ProvideOutput(%struct.TYPE_9__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %68, i32* %3, align 4
  br label %95

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i32*, i32** %5, align 8
  %72 = call i64 @BrotliEncoderIsFinished(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = call i32 @FlushOutput(%struct.TYPE_9__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %95

80:                                               ; preds = %74
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = call i32 @PrintFileProcessingProgress(%struct.TYPE_9__* %88)
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %85, %80
  %93 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %93, i32* %3, align 4
  br label %95

94:                                               ; preds = %70
  br label %10

95:                                               ; preds = %92, %78, %67, %50, %22
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @InitializeBuffers(%struct.TYPE_9__*) #1

declare dso_local i32 @ProvideInput(%struct.TYPE_9__*) #1

declare dso_local i32 @HasMoreInput(%struct.TYPE_9__*) #1

declare dso_local i32 @BrotliEncoderCompressStream(i32*, i32, i64*, i32*, i64*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @PrintablePath(i32) #1

declare dso_local i32 @ProvideOutput(%struct.TYPE_9__*) #1

declare dso_local i64 @BrotliEncoderIsFinished(i32*) #1

declare dso_local i32 @FlushOutput(%struct.TYPE_9__*) #1

declare dso_local i32 @PrintFileProcessingProgress(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
