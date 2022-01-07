; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_ffescape.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_ffescape.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"=> \00", align 1
@AV_ESCAPE_MODE_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ef:hi:l:o:m:p:s:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@AV_ESCAPE_FLAG_WHITESPACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@AV_ESCAPE_FLAG_STRICT = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [82 x i8] c"Invalid value '%s' for option -f, valid arguments are 'whitespace', and 'strict'\0A\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [75 x i8] c"Invalid value '%s' for option -l, argument must be a non negative integer\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"backslash\00", align 1
@AV_ESCAPE_MODE_BACKSLASH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@AV_ESCAPE_MODE_QUOTE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [80 x i8] c"Invalid value '%s' for option -m, valid arguments are 'backslash', and 'quote'\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Impossible to open input file '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Impossible to open output file '%s': %s\0A\00", align 1
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [51 x i8] c"Could not allocate a buffer for the source string\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Could not escape string\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %22 = load i32, i32* @AV_ESCAPE_MODE_AUTO, align 4
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  br label %23

23:                                               ; preds = %110, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %19, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %111

28:                                               ; preds = %23
  %29 = load i32, i32* %19, align 4
  switch i32 %29, label %110 [
    i32 101, label %30
    i32 104, label %31
    i32 105, label %33
    i32 102, label %35
    i32 108, label %57
    i32 109, label %78
    i32 111, label %103
    i32 112, label %105
    i32 115, label %107
    i32 63, label %109
  ]

30:                                               ; preds = %28
  store i32 1, i32* %17, align 4
  br label %110

31:                                               ; preds = %28
  %32 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %207

33:                                               ; preds = %28
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %10, align 8
  br label %110

35:                                               ; preds = %28
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @AV_ESCAPE_FLAG_WHITESPACE, align 4
  %41 = load i32, i32* %15, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %15, align 4
  br label %56

43:                                               ; preds = %35
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @AV_ESCAPE_FLAG_STRICT, align 4
  %49 = load i32, i32* %15, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %15, align 4
  br label %55

51:                                               ; preds = %43
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %52, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  store i32 1, i32* %3, align 4
  br label %207

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %39
  br label %110

57:                                               ; preds = %28
  %58 = load i8*, i8** @optarg, align 8
  %59 = call i64 @strtol(i8* %58, i8** %20, i32 10)
  store i64 %59, i64* %21, align 8
  %60 = load i8*, i8** %20, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %21, align 8
  %66 = load i64, i64* @INT_MAX, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %21, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %64, %57
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = load i8*, i8** @optarg, align 8
  %74 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %72, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  store i32 1, i32* %3, align 4
  br label %207

75:                                               ; preds = %68
  %76 = load i64, i64* %21, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %16, align 4
  br label %110

78:                                               ; preds = %28
  %79 = load i8*, i8** @optarg, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @AV_ESCAPE_MODE_AUTO, align 4
  store i32 %83, i32* %14, align 4
  br label %102

84:                                               ; preds = %78
  %85 = load i8*, i8** @optarg, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @AV_ESCAPE_MODE_BACKSLASH, align 4
  store i32 %89, i32* %14, align 4
  br label %101

90:                                               ; preds = %84
  %91 = load i8*, i8** @optarg, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @AV_ESCAPE_MODE_QUOTE, align 4
  store i32 %95, i32* %14, align 4
  br label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @AV_LOG_ERROR, align 4
  %98 = load i8*, i8** @optarg, align 8
  %99 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %97, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.9, i64 0, i64 0), i8* %98)
  store i32 1, i32* %3, align 4
  br label %207

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %88
  br label %102

102:                                              ; preds = %101, %82
  br label %110

103:                                              ; preds = %28
  %104 = load i8*, i8** @optarg, align 8
  store i8* %104, i8** %9, align 8
  br label %110

105:                                              ; preds = %28
  %106 = load i8*, i8** @optarg, align 8
  store i8* %106, i8** %13, align 8
  br label %110

107:                                              ; preds = %28
  %108 = load i8*, i8** @optarg, align 8
  store i8* %108, i8** %18, align 8
  br label %110

109:                                              ; preds = %28
  store i32 1, i32* %3, align 4
  br label %207

110:                                              ; preds = %28, %107, %105, %103, %102, %75, %56, %33, %30
  br label %23

111:                                              ; preds = %23
  %112 = load i8*, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %114, %111
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  %119 = load i32*, i32** @stdin, align 8
  store i32* %119, i32** %12, align 8
  br label %123

120:                                              ; preds = %114
  %121 = load i8*, i8** %10, align 8
  %122 = call i32* @fopen(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32* %122, i32** %12, align 8
  br label %123

123:                                              ; preds = %120, %118
  %124 = load i32*, i32** %12, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* @errno, align 4
  %130 = call i32 @strerror(i32 %129)
  %131 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %127, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8* %128, i32 %130)
  store i32 1, i32* %3, align 4
  br label %207

132:                                              ; preds = %123
  %133 = load i8*, i8** %9, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i8*, i8** %9, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135, %132
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  %140 = load i32*, i32** @stdout, align 8
  store i32* %140, i32** %11, align 8
  br label %144

141:                                              ; preds = %135
  %142 = load i8*, i8** %9, align 8
  %143 = call i32* @fopen(i8* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i32* %143, i32** %11, align 8
  br label %144

144:                                              ; preds = %141, %139
  %145 = load i32*, i32** %11, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* @AV_LOG_ERROR, align 4
  %149 = load i8*, i8** %9, align 8
  %150 = load i32, i32* @errno, align 4
  %151 = call i32 @strerror(i32 %150)
  %152 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i8* %149, i32 %151)
  store i32 1, i32* %3, align 4
  br label %207

153:                                              ; preds = %144
  %154 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %155 = call i32 @av_bprint_init(i32* %6, i32 1, i32 %154)
  br label %156

156:                                              ; preds = %161, %153
  %157 = load i32*, i32** %12, align 8
  %158 = call i32 @fgetc(i32* %157)
  store i32 %158, i32* %19, align 4
  %159 = load i32, i32* @EOF, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @av_bprint_chars(i32* %6, i32 %162, i32 1)
  br label %156

164:                                              ; preds = %156
  %165 = call i32 @av_bprint_chars(i32* %6, i32 0, i32 1)
  %166 = call i32 @av_bprint_is_complete(i32* %6)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* @AV_LOG_ERROR, align 4
  %170 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %169, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0))
  %171 = call i32 @av_bprint_finalize(i32* %6, i8** null)
  store i32 1, i32* %3, align 4
  br label %207

172:                                              ; preds = %164
  %173 = call i32 @av_bprint_finalize(i32* %6, i8** %7)
  %174 = load i32, i32* %17, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i32*, i32** %11, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %178)
  br label %180

180:                                              ; preds = %176, %172
  %181 = load i8*, i8** %7, align 8
  store i8* %181, i8** %8, align 8
  br label %182

182:                                              ; preds = %196, %180
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %16, align 4
  %185 = icmp ne i32 %183, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %182
  %187 = load i8*, i8** %7, align 8
  %188 = load i8*, i8** %18, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %15, align 4
  %191 = call i64 @av_escape(i8** %8, i8* %187, i8* %188, i32 %189, i32 %190)
  %192 = icmp slt i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load i32, i32* @AV_LOG_ERROR, align 4
  %195 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %207

196:                                              ; preds = %186
  %197 = load i8*, i8** %7, align 8
  %198 = call i32 @av_free(i8* %197)
  %199 = load i8*, i8** %8, align 8
  store i8* %199, i8** %7, align 8
  br label %182

200:                                              ; preds = %182
  %201 = load i32*, i32** %11, align 8
  %202 = load i8*, i8** %13, align 8
  %203 = load i8*, i8** %8, align 8
  %204 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* %202, i8* %203)
  %205 = load i8*, i8** %8, align 8
  %206 = call i32 @av_free(i8* %205)
  store i32 0, i32* %3, align 4
  br label %207

207:                                              ; preds = %200, %193, %168, %147, %126, %109, %96, %71, %51, %31
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @av_bprint_chars(i32*, i32, i32) #1

declare dso_local i32 @av_bprint_is_complete(i32*) #1

declare dso_local i32 @av_bprint_finalize(i32*, i8**) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i64 @av_escape(i8**, i8*, i8*, i32, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
