; ModuleID = '/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_CompressFiles.c'
source_filename = "/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_CompressFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i64 }

@BROTLI_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@BROTLI_FALSE = common dso_local global i64 0, align 8
@BROTLI_PARAM_QUALITY = common dso_local global i32 0, align 4
@BROTLI_MAX_WINDOW_BITS = common dso_local global i64 0, align 8
@BROTLI_PARAM_LARGE_WINDOW = common dso_local global i32 0, align 4
@BROTLI_PARAM_LGWIN = common dso_local global i32 0, align 4
@DEFAULT_LGWIN = common dso_local global i64 0, align 8
@BROTLI_MIN_WINDOW_BITS = common dso_local global i64 0, align 8
@BROTLI_PARAM_SIZE_HINT = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Use -h help. Use -f to force output to a terminal.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @CompressFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CompressFiles(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  br label %8

8:                                                ; preds = %145, %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = call i64 @NextFile(%struct.TYPE_7__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %146

12:                                               ; preds = %8
  %13 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %13, i64* %4, align 8
  %14 = call i32* @BrotliEncoderCreateInstance(i32* null, i32* null, i32* null)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %20, i64* %2, align 8
  br label %148

21:                                               ; preds = %12
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @BROTLI_PARAM_QUALITY, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @BrotliEncoderSetParameter(i32* %22, i32 %23, i64 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BROTLI_MAX_WINDOW_BITS, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @BROTLI_PARAM_LARGE_WINDOW, align 4
  %41 = call i32 @BrotliEncoderSetParameter(i32* %39, i32 %40, i64 1)
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @BROTLI_PARAM_LGWIN, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @BrotliEncoderSetParameter(i32* %43, i32 %44, i64 %47)
  br label %79

49:                                               ; preds = %21
  %50 = load i64, i64* @DEFAULT_LGWIN, align 8
  store i64 %50, i64* %6, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %49
  %56 = load i64, i64* @BROTLI_MIN_WINDOW_BITS, align 8
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %72, %55
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @BROTLI_MAX_BACKWARD_LIMIT(i64 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %59, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load i64, i64* %6, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @BROTLI_MAX_WINDOW_BITS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %73

72:                                               ; preds = %65
  br label %57

73:                                               ; preds = %71, %57
  br label %74

74:                                               ; preds = %73, %49
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @BROTLI_PARAM_LGWIN, align 4
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @BrotliEncoderSetParameter(i32* %75, i32 %76, i64 %77)
  br label %79

79:                                               ; preds = %74, %42
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %87, 1073741824
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  br label %95

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %89
  %96 = phi i64 [ %93, %89 ], [ 1073741824, %94 ]
  store i64 %96, i64* %7, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @BROTLI_PARAM_SIZE_HINT, align 4
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @BrotliEncoderSetParameter(i32* %97, i32 %98, i64 %99)
  br label %101

101:                                              ; preds = %95, %79
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = call i64 @OpenFiles(%struct.TYPE_7__* %102)
  store i64 %103, i64* %4, align 8
  %104 = load i64, i64* %4, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %101
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* @STDOUT_FILENO, align 4
  %118 = call i64 @isatty(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* @stderr, align 4
  %122 = call i32 @fprintf(i32 %121, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %123, i64* %4, align 8
  br label %124

124:                                              ; preds = %120, %116, %111, %106, %101
  %125 = load i64, i64* %4, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = call i64 @CompressFile(%struct.TYPE_7__* %128, i32* %129)
  store i64 %130, i64* %4, align 8
  br label %131

131:                                              ; preds = %127, %124
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @BrotliEncoderDestroyInstance(i32* %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = load i64, i64* %4, align 8
  %136 = call i32 @CloseFiles(%struct.TYPE_7__* %134, i64 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %131
  %139 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %139, i64* %4, align 8
  br label %140

140:                                              ; preds = %138, %131
  %141 = load i64, i64* %4, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %144, i64* %2, align 8
  br label %148

145:                                              ; preds = %140
  br label %8

146:                                              ; preds = %8
  %147 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %147, i64* %2, align 8
  br label %148

148:                                              ; preds = %146, %143, %17
  %149 = load i64, i64* %2, align 8
  ret i64 %149
}

declare dso_local i64 @NextFile(%struct.TYPE_7__*) #1

declare dso_local i32* @BrotliEncoderCreateInstance(i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @BrotliEncoderSetParameter(i32*, i32, i64) #1

declare dso_local i64 @BROTLI_MAX_BACKWARD_LIMIT(i64) #1

declare dso_local i64 @OpenFiles(%struct.TYPE_7__*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i64 @CompressFile(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @BrotliEncoderDestroyInstance(i32*) #1

declare dso_local i32 @CloseFiles(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
