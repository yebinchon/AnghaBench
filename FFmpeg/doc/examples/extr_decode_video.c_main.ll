; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_decode_video.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_decode_video.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@INBUF_SIZE = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"Usage: %s <input file> <output file>\0AAnd check your input file is encoded by mpeg1video please.\0A\00", align 1
@AV_CODEC_ID_MPEG1VIDEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Codec not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"parser not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Could not allocate video codec context\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Could not open codec\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Could not open %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Could not allocate video frame\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Error while parsing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %10, align 8
  %19 = load i32, i32* @INBUF_SIZE, align 4
  %20 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %21 = add nsw i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp sle i32 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = call i32 @exit(i32 0) #4
  unreachable

34:                                               ; preds = %2
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %6, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %7, align 8
  %41 = call %struct.TYPE_9__* (...) @av_packet_alloc()
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %18, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = call i32 @exit(i32 1) #4
  unreachable

46:                                               ; preds = %34
  %47 = load i32, i32* @INBUF_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %24, i64 %48
  %50 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %51 = call i32 @memset(i32* %49, i32 0, i32 %50)
  %52 = load i32, i32* @AV_CODEC_ID_MPEG1VIDEO, align 4
  %53 = call %struct.TYPE_10__* @avcodec_find_decoder(i32 %52)
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %8, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32 @exit(i32 1) #4
  unreachable

60:                                               ; preds = %46
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32* @av_parser_init(i32 %63)
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 @exit(i32 1) #4
  unreachable

71:                                               ; preds = %60
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = call i32* @avcodec_alloc_context3(%struct.TYPE_10__* %72)
  store i32* %73, i32** %10, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 @exit(i32 1) #4
  unreachable

80:                                               ; preds = %71
  %81 = load i32*, i32** %10, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %83 = call i64 @avcodec_open2(i32* %81, %struct.TYPE_10__* %82, i32* null)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %88 = call i32 @exit(i32 1) #4
  unreachable

89:                                               ; preds = %80
  %90 = load i8*, i8** %6, align 8
  %91 = call i32* @fopen(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %91, i32** %11, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %96)
  %98 = call i32 @exit(i32 1) #4
  unreachable

99:                                               ; preds = %89
  %100 = call i32* (...) @av_frame_alloc()
  store i32* %100, i32** %12, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %106 = call i32 @exit(i32 1) #4
  unreachable

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %162, %107
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @feof(i32* %109)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br i1 %112, label %113, label %163

113:                                              ; preds = %108
  %114 = load i32, i32* @INBUF_SIZE, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = call i64 @fread(i32* %24, i32 1, i32 %114, i32* %115)
  store i64 %116, i64* %16, align 8
  %117 = load i64, i64* %16, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  br label %163

120:                                              ; preds = %113
  store i32* %24, i32** %15, align 8
  br label %121

121:                                              ; preds = %161, %120
  %122 = load i64, i64* %16, align 8
  %123 = icmp ugt i64 %122, 0
  br i1 %123, label %124, label %162

124:                                              ; preds = %121
  %125 = load i32*, i32** %9, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32*, i32** %15, align 8
  %132 = load i64, i64* %16, align 8
  %133 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %134 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %135 = call i32 @av_parser_parse2(i32* %125, i32* %126, i32* %128, i64* %130, i32* %131, i64 %132, i32 %133, i32 %134, i32 0)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %124
  %139 = load i32, i32* @stderr, align 4
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %141 = call i32 @exit(i32 1) #4
  unreachable

142:                                              ; preds = %124
  %143 = load i32, i32* %17, align 4
  %144 = load i32*, i32** %15, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %15, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %16, align 8
  %150 = sub i64 %149, %148
  store i64 %150, i64* %16, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %142
  %156 = load i32*, i32** %10, align 8
  %157 = load i32*, i32** %12, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @decode(i32* %156, i32* %157, %struct.TYPE_9__* %158, i8* %159)
  br label %161

161:                                              ; preds = %155, %142
  br label %121

162:                                              ; preds = %121
  br label %108

163:                                              ; preds = %119, %108
  %164 = load i32*, i32** %10, align 8
  %165 = load i32*, i32** %12, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = call i32 @decode(i32* %164, i32* %165, %struct.TYPE_9__* null, i8* %166)
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @fclose(i32* %168)
  %170 = load i32*, i32** %9, align 8
  %171 = call i32 @av_parser_close(i32* %170)
  %172 = call i32 @avcodec_free_context(i32** %10)
  %173 = call i32 @av_frame_free(i32** %12)
  %174 = call i32 @av_packet_free(%struct.TYPE_9__** %18)
  store i32 0, i32* %3, align 4
  %175 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local %struct.TYPE_9__* @av_packet_alloc(...) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local %struct.TYPE_10__* @avcodec_find_decoder(i32) #2

declare dso_local i32* @av_parser_init(i32) #2

declare dso_local i32* @avcodec_alloc_context3(%struct.TYPE_10__*) #2

declare dso_local i64 @avcodec_open2(i32*, %struct.TYPE_10__*, i32*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32* @av_frame_alloc(...) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i64 @fread(i32*, i32, i32, i32*) #2

declare dso_local i32 @av_parser_parse2(i32*, i32*, i32*, i64*, i32*, i64, i32, i32, i32) #2

declare dso_local i32 @decode(i32*, i32*, %struct.TYPE_9__*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @av_parser_close(i32*) #2

declare dso_local i32 @avcodec_free_context(i32**) #2

declare dso_local i32 @av_frame_free(i32**) #2

declare dso_local i32 @av_packet_free(%struct.TYPE_9__**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
