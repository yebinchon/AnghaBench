; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_show_codecs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_show_codecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i8*, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [237 x i8] c"Codecs:\0A D..... = Decoding supported\0A .E.... = Encoding supported\0A ..V... = Video codec\0A ..A... = Audio codec\0A ..S... = Subtitle codec\0A ...I.. = Intra frame-only codec\0A ....L. = Lossy compression\0A .....S = Lossless compression\0A -------\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"_deprecated\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@AV_CODEC_PROP_INTRA_ONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@AV_CODEC_PROP_LOSSY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@AV_CODEC_PROP_LOSSLESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c" %-20s %s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_codecs(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = call i32 @get_codecs_sorted(%struct.TYPE_7__*** %7)
  store i32 %12, i32* %9, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %142, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %145

18:                                               ; preds = %14
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %19, i64 %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strstr(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %142

30:                                               ; preds = %18
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @avcodec_find_decoder(i32 %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %39 = call i32 (i8*, ...) @printf(i8* %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @avcodec_find_encoder(i32 %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %47 = call i32 (i8*, ...) @printf(i8* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @get_media_type_char(i32 %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AV_CODEC_PROP_INTRA_ONLY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %61 = call i32 (i8*, ...) @printf(i8* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @AV_CODEC_PROP_LOSSY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %70 = call i32 (i8*, ...) @printf(i8* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AV_CODEC_PROP_LOSSLESS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %79 = call i32 (i8*, ...) @printf(i8* %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %30
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  br label %92

91:                                               ; preds = %30
  br label %92

92:                                               ; preds = %91, %87
  %93 = phi i8* [ %90, %87 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %91 ]
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %82, i8* %93)
  br label %95

95:                                               ; preds = %116, %92
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %100 = call %struct.TYPE_8__* @next_codec_for_id(i32 %98, %struct.TYPE_8__* %99, i32 0)
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %11, align 8
  %101 = icmp ne %struct.TYPE_8__* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @strcmp(i32 %105, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %102
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @print_codecs_for_id(i32 %114, i32 0)
  br label %117

116:                                              ; preds = %102
  br label %95

117:                                              ; preds = %111, %95
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  br label %118

118:                                              ; preds = %139, %117
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %123 = call %struct.TYPE_8__* @next_codec_for_id(i32 %121, %struct.TYPE_8__* %122, i32 1)
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %11, align 8
  %124 = icmp ne %struct.TYPE_8__* %123, null
  br i1 %124, label %125, label %140

125:                                              ; preds = %118
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @strcmp(i32 %128, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %125
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @print_codecs_for_id(i32 %137, i32 1)
  br label %140

139:                                              ; preds = %125
  br label %118

140:                                              ; preds = %134, %118
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %29
  %143 = load i32, i32* %8, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %14

145:                                              ; preds = %14
  %146 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %147 = call i32 @av_free(%struct.TYPE_7__** %146)
  ret i32 0
}

declare dso_local i32 @get_codecs_sorted(%struct.TYPE_7__***) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @avcodec_find_decoder(i32) #1

declare dso_local i64 @avcodec_find_encoder(i32) #1

declare dso_local i32 @get_media_type_char(i32) #1

declare dso_local %struct.TYPE_8__* @next_codec_for_id(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @print_codecs_for_id(i32, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
