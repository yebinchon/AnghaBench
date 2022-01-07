; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_graph2dot.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_graph2dot.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32, %struct.line* }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hi:o:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"/dev/stdin\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to open input file '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to open output file '%s': %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Memory allocation failure\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Failed to parse the graph description\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca %struct.line*, align 8
  %15 = alloca %struct.line*, align 8
  %16 = alloca %struct.line*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.line*, align 8
  %19 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %20 = call i32* @av_mallocz(i32 4)
  store i32* %20, i32** %11, align 8
  %21 = load i32, i32* @AV_LOG_DEBUG, align 4
  %22 = call i32 @av_log_set_level(i32 %21)
  br label %23

23:                                               ; preds = %39, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call signext i8 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8 %26, i8* %12, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load i8, i8* %12, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %39 [
    i32 104, label %32
    i32 105, label %34
    i32 111, label %36
    i32 63, label %38
  ]

32:                                               ; preds = %29
  %33 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %171

34:                                               ; preds = %29
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** %7, align 8
  br label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %6, align 8
  br label %39

38:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %171

39:                                               ; preds = %29, %36, %34
  br label %23

40:                                               ; preds = %23
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43, %40
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i8*, i8** %7, align 8
  %50 = call i32* @fopen(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* @errno, align 4
  %57 = call i8* @strerror(i32 %56)
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %55, i8* %57)
  store i32 1, i32* %3, align 4
  br label %171

59:                                               ; preds = %48
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62, %59
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i8*, i8** %6, align 8
  %69 = call i32* @fopen(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @stderr, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* @errno, align 4
  %76 = call i8* @strerror(i32 %75)
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %74, i8* %76)
  store i32 1, i32* %3, align 4
  br label %171

78:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  %79 = call i8* @av_malloc(i32 16)
  %80 = bitcast i8* %79 to %struct.line*
  store %struct.line* %80, %struct.line** %16, align 8
  store %struct.line* %80, %struct.line** %15, align 8
  %81 = load %struct.line*, %struct.line** %15, align 8
  %82 = icmp ne %struct.line* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %171

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %102, %86
  %88 = load %struct.line*, %struct.line** %15, align 8
  %89 = getelementptr inbounds %struct.line, %struct.line* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i64 @fgets(i32 %90, i32 4, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %87
  %95 = call i8* @av_malloc(i32 16)
  %96 = bitcast i8* %95 to %struct.line*
  store %struct.line* %96, %struct.line** %18, align 8
  %97 = load %struct.line*, %struct.line** %18, align 8
  %98 = icmp ne %struct.line* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %171

102:                                              ; preds = %94
  %103 = load %struct.line*, %struct.line** %15, align 8
  %104 = getelementptr inbounds %struct.line, %struct.line* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @strlen(i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %13, align 4
  %109 = load %struct.line*, %struct.line** %18, align 8
  %110 = load %struct.line*, %struct.line** %15, align 8
  %111 = getelementptr inbounds %struct.line, %struct.line* %110, i32 0, i32 1
  store %struct.line* %109, %struct.line** %111, align 8
  %112 = load %struct.line*, %struct.line** %18, align 8
  store %struct.line* %112, %struct.line** %15, align 8
  br label %87

113:                                              ; preds = %87
  %114 = load %struct.line*, %struct.line** %15, align 8
  %115 = getelementptr inbounds %struct.line, %struct.line* %114, i32 0, i32 1
  store %struct.line* null, %struct.line** %115, align 8
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  %118 = call i8* @av_malloc(i32 %117)
  store i8* %118, i8** %10, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* @stderr, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %171

124:                                              ; preds = %113
  %125 = load i8*, i8** %10, align 8
  store i8* %125, i8** %17, align 8
  %126 = load %struct.line*, %struct.line** %16, align 8
  store %struct.line* %126, %struct.line** %14, align 8
  br label %127

127:                                              ; preds = %147, %124
  %128 = load %struct.line*, %struct.line** %14, align 8
  %129 = getelementptr inbounds %struct.line, %struct.line* %128, i32 0, i32 1
  %130 = load %struct.line*, %struct.line** %129, align 8
  %131 = icmp ne %struct.line* %130, null
  br i1 %131, label %132, label %151

132:                                              ; preds = %127
  %133 = load %struct.line*, %struct.line** %14, align 8
  %134 = getelementptr inbounds %struct.line, %struct.line* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @strlen(i32 %135)
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %19, align 8
  %138 = load i8*, i8** %17, align 8
  %139 = load %struct.line*, %struct.line** %14, align 8
  %140 = getelementptr inbounds %struct.line, %struct.line* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i64, i64* %19, align 8
  %143 = call i32 @memcpy(i8* %138, i32 %141, i64 %142)
  %144 = load i64, i64* %19, align 8
  %145 = load i8*, i8** %17, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 %144
  store i8* %146, i8** %17, align 8
  br label %147

147:                                              ; preds = %132
  %148 = load %struct.line*, %struct.line** %14, align 8
  %149 = getelementptr inbounds %struct.line, %struct.line* %148, i32 0, i32 1
  %150 = load %struct.line*, %struct.line** %149, align 8
  store %struct.line* %150, %struct.line** %14, align 8
  br label %127

151:                                              ; preds = %127
  %152 = load i8*, i8** %17, align 8
  store i8 0, i8* %152, align 1
  %153 = load i32*, i32** %11, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = call i64 @avfilter_graph_parse(i32* %153, i8* %154, i32* null, i32* null, i32* null)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i32, i32* @stderr, align 4
  %159 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %171

160:                                              ; preds = %151
  %161 = load i32*, i32** %11, align 8
  %162 = call i64 @avfilter_graph_config(i32* %161, i32* null)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 1, i32* %3, align 4
  br label %171

165:                                              ; preds = %160
  %166 = load i32*, i32** %8, align 8
  %167 = load i32*, i32** %11, align 8
  %168 = call i32 @print_digraph(i32* %166, i32* %167)
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @fflush(i32* %169)
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %165, %164, %157, %121, %99, %83, %72, %53, %38, %32
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32* @av_mallocz(i32) #1

declare dso_local i32 @av_log_set_level(i32) #1

declare dso_local signext i8 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i64 @fgets(i32, i32, i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i64 @avfilter_graph_parse(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @avfilter_graph_config(i32*, i32*) #1

declare dso_local i32 @print_digraph(i32*, i32*) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
