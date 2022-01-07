; ModuleID = '/home/carl/AnghaBench/brotli/research/extr_brotli_decoder.c_main.c'
source_filename = "/home/carl/AnghaBench/brotli/research/extr_brotli_decoder.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32*, i32, i8*, i32* }

@BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8
@BUFFER_SIZE = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"can't open input file\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"can't open output file\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"out of memory / input buffer\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"out of memory / output buffer\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"out of memory / decoder\00", align 1
@BROTLI_DECODER_PARAM_LARGE_WINDOW = common dso_local global i32 0, align 4
@BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to write output\00", align 1
@BROTLI_DECODER_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"corrupt input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i64, i64* @BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* @BUFFER_SIZE, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %10, align 8
  %15 = call i32 @init(%struct.TYPE_5__* %6)
  %16 = load i32, i32* @STDIN_FILENO, align 4
  %17 = call i8* @fdopen(i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 @fail(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i32, i32* @STDOUT_FILENO, align 4
  %26 = call i8* @fdopen(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 @fail(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i32, i32* @BUFFER_SIZE, align 4
  %35 = call i64 @malloc(i32 %34)
  %36 = inttoptr i64 %35 to i32*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store i32* %36, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = call i32 @fail(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i32, i32* @BUFFER_SIZE, align 4
  %45 = call i64 @malloc(i32 %44)
  %46 = inttoptr i64 %45 to i32*
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32* %46, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = call i32 @fail(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %43
  %54 = call i32 @BrotliDecoderCreateInstance(i32 0, i32 0, i32 0)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = call i32 @fail(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %53
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @BROTLI_DECODER_PARAM_LARGE_WINDOW, align 4
  %65 = call i32 @BrotliDecoderSetParameter(i32 %63, i32 %64, i32 1)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %11, align 8
  br label %68

68:                                               ; preds = %61, %116
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @feof(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %120

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @BUFFER_SIZE, align 4
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @fread(i32* %80, i32 1, i32 %81, i8* %83)
  store i64 %84, i64* %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @ferror(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %120

92:                                               ; preds = %78
  br label %116

93:                                               ; preds = %68
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @BUFFER_SIZE, align 4
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @fwrite(i32* %99, i32 1, i32 %100, i8* %102)
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @ferror(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %120

109:                                              ; preds = %97
  %110 = load i32, i32* @BUFFER_SIZE, align 4
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %11, align 8
  br label %115

114:                                              ; preds = %93
  br label %120

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %92
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @BrotliDecoderDecompressStream(i32 %118, i64* %8, i32** %9, i64* %10, i32** %11, i32 0)
  store i64 %119, i64* %7, align 8
  br label %68

120:                                              ; preds = %114, %108, %91, %77
  %121 = load i32*, i32** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %121, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = ptrtoint i32* %128 to i64
  %132 = ptrtoint i32* %130 to i64
  %133 = sub i64 %131, %132
  %134 = sdiv exact i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @fwrite(i32* %127, i32 1, i32 %135, i8* %137)
  br label %139

139:                                              ; preds = %125, %120
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* @BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @ferror(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143, %139
  %149 = call i32 @fail(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %157

150:                                              ; preds = %143
  %151 = load i64, i64* %7, align 8
  %152 = load i64, i64* @BROTLI_DECODER_RESULT_SUCCESS, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = call i32 @fail(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %150
  br label %157

157:                                              ; preds = %156, %148
  %158 = call i32 @cleanup(%struct.TYPE_5__* %6)
  ret i32 0
}

declare dso_local i32 @init(%struct.TYPE_5__*) #1

declare dso_local i8* @fdopen(i32, i8*) #1

declare dso_local i32 @fail(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @BrotliDecoderCreateInstance(i32, i32, i32) #1

declare dso_local i32 @BrotliDecoderSetParameter(i32, i32, i32) #1

declare dso_local i64 @feof(i8*) #1

declare dso_local i64 @fread(i32*, i32, i32, i8*) #1

declare dso_local i64 @ferror(i8*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i8*) #1

declare dso_local i64 @BrotliDecoderDecompressStream(i32, i64*, i32**, i64*, i32**, i32) #1

declare dso_local i32 @cleanup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
