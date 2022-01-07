; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_preset.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@codec_names = common dso_local global i32 0, align 4
@str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"libx264-lossless\00", align 1
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Please use -preset <speed> -qp 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"File for preset '%s' not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"#\0A\0D\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: Invalid syntax: '%s'\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"ffpreset[%s]: set '%s' = '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"acodec\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"vcodec\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"scodec\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"dcodec\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"%s: Invalid option or argument: '%s', parsed as '%s' = '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @opt_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_preset(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [1000 x i8], align 16
  %10 = alloca [1000 x i8], align 16
  %11 = alloca [1000 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %12, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  store i8 %19, i8* %20, align 16
  %21 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 1
  store i8 0, i8* %21, align 1
  %22 = load i32, i32* @codec_names, align 4
  %23 = load i32, i32* @str, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %26 = call i32 @MATCH_PER_TYPE_OPT(i32 %22, i32 %23, i8* %24, i32* null, i8* %25)
  %27 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 102
  %33 = zext i1 %32 to i32
  %34 = load i8*, i8** %12, align 8
  %35 = call i32* @get_preset_file(i8* %27, i32 1000, i8* %28, i32 %33, i8* %34)
  store i32* %35, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %3
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @AV_LOG_FATAL, align 4
  %44 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @AV_LOG_FATAL, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = call i32 @exit_program(i32 1)
  br label %51

51:                                               ; preds = %49, %3
  br label %52

52:                                               ; preds = %139, %62, %51
  %53 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 0
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @fgets(i8* %53, i32 1000, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %140

57:                                               ; preds = %52
  %58 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  store i8* %58, i8** %13, align 8
  %59 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 0
  %60 = call i64 @strcspn(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %52

63:                                               ; preds = %57
  %64 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %65 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 0
  %66 = call i32 @av_strlcpy(i8* %64, i8* %65, i32 1000)
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 @av_strtok(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %14)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i8*, i8** %14, align 8
  %72 = call i32 @av_strtok(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %15)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70, %63
  %75 = load i32, i32* @AV_LOG_FATAL, align 4
  %76 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %77 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 0
  %78 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %76, i8* %77)
  %79 = call i32 @exit_program(i32 1)
  br label %80

80:                                               ; preds = %74, %70
  %81 = load i32, i32* @AV_LOG_DEBUG, align 4
  %82 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %82, i8* %83, i8* %84)
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %80
  %90 = load i32*, i32** %7, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @opt_audio_codec(i32* %90, i8* %91, i8* %92)
  br label %139

94:                                               ; preds = %80
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = load i32*, i32** %7, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = call i32 @opt_video_codec(i32* %99, i8* %100, i8* %101)
  br label %138

103:                                              ; preds = %94
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = load i32*, i32** %7, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = call i32 @opt_subtitle_codec(i32* %108, i8* %109, i8* %110)
  br label %137

112:                                              ; preds = %103
  %113 = load i8*, i8** %13, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load i32*, i32** %7, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = call i32 @opt_data_codec(i32* %117, i8* %118, i8* %119)
  br label %136

121:                                              ; preds = %112
  %122 = load i32*, i32** %7, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = call i64 @opt_default_new(i32* %122, i8* %123, i8* %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load i32, i32* @AV_LOG_FATAL, align 4
  %129 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %130 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 0
  %131 = load i8*, i8** %13, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %128, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i8* %129, i8* %130, i8* %131, i8* %132)
  %134 = call i32 @exit_program(i32 1)
  br label %135

135:                                              ; preds = %127, %121
  br label %136

136:                                              ; preds = %135, %116
  br label %137

137:                                              ; preds = %136, %107
  br label %138

138:                                              ; preds = %137, %98
  br label %139

139:                                              ; preds = %138, %89
  br label %52

140:                                              ; preds = %52
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @fclose(i32* %141)
  ret i32 0
}

declare dso_local i32 @MATCH_PER_TYPE_OPT(i32, i32, i8*, i32*, i8*) #1

declare dso_local i32* @get_preset_file(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @opt_audio_codec(i32*, i8*, i8*) #1

declare dso_local i32 @opt_video_codec(i32*, i8*, i8*) #1

declare dso_local i32 @opt_subtitle_codec(i32*, i8*, i8*) #1

declare dso_local i32 @opt_data_codec(i32*, i8*, i8*) #1

declare dso_local i64 @opt_default_new(i32*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
