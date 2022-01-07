; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_read_ttag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_read_ttag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_DICT_DONT_OVERWRITE = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error reading frame %s, skipped\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TCON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TCO\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ID3v1_GENRE_MAX = common dso_local global i32 0, align 4
@ff_id3v1_genre_str = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"TXXX\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"TXX\00", align 1
@AV_DICT_DONT_STRDUP_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32**, i8*)* @read_ttag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_ttag(i32* %0, i32* %1, i32 %2, i32** %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i32, i32* @AV_DICT_DONT_OVERWRITE, align 4
  %16 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %106

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @avio_r8(i32* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @decode_str(i32* %26, i32* %27, i32 %28, i8** %11, i32* %8)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @av_log(i32* %32, i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %106

36:                                               ; preds = %21
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %40, %36
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @sscanf(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %14)
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %14)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %64

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @ID3v1_GENRE_MAX, align 4
  %55 = icmp ule i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = call i32 @av_freep(i8** %11)
  %58 = load i32*, i32** @ff_id3v1_genre_str, align 8
  %59 = load i32, i32* %14, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @av_strdup(i32 %62)
  store i8* %63, i8** %11, align 8
  br label %97

64:                                               ; preds = %52, %48, %40
  %65 = load i8*, i8** %10, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8*, i8** %10, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %68, %64
  %73 = load i8*, i8** %11, align 8
  store i8* %73, i8** %10, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @decode_str(i32* %74, i32* %75, i32 %76, i8** %11, i32* %8)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @av_log(i32* %80, i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %82)
  %84 = call i32 @av_freep(i8** %10)
  br label %106

85:                                               ; preds = %72
  %86 = load i32, i32* @AV_DICT_DONT_STRDUP_KEY, align 4
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %96

89:                                               ; preds = %68
  %90 = load i8*, i8** %11, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = call i32 @av_freep(i8** %11)
  br label %95

95:                                               ; preds = %93, %89
  br label %96

96:                                               ; preds = %95, %85
  br label %97

97:                                               ; preds = %96, %56
  %98 = load i8*, i8** %11, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32**, i32*** %9, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @av_dict_set(i32** %101, i8* %102, i8* %103, i32 %104)
  br label %106

106:                                              ; preds = %20, %31, %79, %100, %97
  ret void
}

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i64 @decode_str(i32*, i32*, i32, i8**, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i8* @av_strdup(i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
