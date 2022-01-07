; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_filter_codec_opts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_filter_codec_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i8*, i32 }

@AV_OPT_FLAG_ENCODING_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_DECODING_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_VIDEO_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_AUDIO_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_SUBTITLE_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@AV_OPT_SEARCH_FAKE_OBJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @filter_codec_opts(i32* %0, i32 %1, %struct.TYPE_17__* %2, %struct.TYPE_16__* %3, %struct.TYPE_19__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %10, align 8
  store i32* null, i32** %11, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %12, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @AV_OPT_FLAG_ENCODING_PARAM, align 4
  br label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @AV_OPT_FLAG_DECODING_PARAM, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %27 = call i32* (...) @avcodec_get_class()
  store i32* %27, i32** %15, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %29 = icmp ne %struct.TYPE_19__* %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.TYPE_19__* @avcodec_find_encoder(i32 %36)
  br label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.TYPE_19__* @avcodec_find_decoder(i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi %struct.TYPE_19__* [ %37, %35 ], [ %40, %38 ]
  store %struct.TYPE_19__* %42, %struct.TYPE_19__** %10, align 8
  br label %43

43:                                               ; preds = %41, %25
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %61 [
    i32 128, label %49
    i32 130, label %53
    i32 129, label %57
  ]

49:                                               ; preds = %43
  store i8 118, i8* %14, align 1
  %50 = load i32, i32* @AV_OPT_FLAG_VIDEO_PARAM, align 4
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %13, align 4
  br label %61

53:                                               ; preds = %43
  store i8 97, i8* %14, align 1
  %54 = load i32, i32* @AV_OPT_FLAG_AUDIO_PARAM, align 4
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %61

57:                                               ; preds = %43
  store i8 115, i8* %14, align 1
  %58 = load i32, i32* @AV_OPT_FLAG_SUBTITLE_PARAM, align 4
  %59 = load i32, i32* %13, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %43, %57, %53, %49
  br label %62

62:                                               ; preds = %155, %83, %61
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %65 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %66 = call %struct.TYPE_18__* @av_dict_get(i32* %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %64, i32 %65)
  store %struct.TYPE_18__* %66, %struct.TYPE_18__** %12, align 8
  %67 = icmp ne %struct.TYPE_18__* %66, null
  br i1 %67, label %68, label %156

68:                                               ; preds = %62
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 58)
  store i8* %72, i8** %16, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i32 @check_stream_specifier(%struct.TYPE_17__* %76, %struct.TYPE_16__* %77, i8* %79)
  switch i32 %80, label %84 [
    i32 1, label %81
    i32 0, label %83
  ]

81:                                               ; preds = %75
  %82 = load i8*, i8** %16, align 8
  store i8 0, i8* %82, align 1
  br label %86

83:                                               ; preds = %75
  br label %62

84:                                               ; preds = %75
  %85 = call i32 @exit_program(i32 1)
  br label %86

86:                                               ; preds = %84, %81
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @AV_OPT_SEARCH_FAKE_OBJ, align 4
  %93 = call i64 @av_opt_find(i32** %15, i8* %90, i32* null, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %87
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %97 = icmp ne %struct.TYPE_19__* %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %121

103:                                              ; preds = %98
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @AV_OPT_SEARCH_FAKE_OBJ, align 4
  %111 = call i64 @av_opt_find(i32** %105, i8* %108, i32* null, i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %103, %95, %87
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @av_dict_set(i32** %11, i8* %116, i32 %119, i32 0)
  br label %150

121:                                              ; preds = %103, %98
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8, i8* %14, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %149

131:                                              ; preds = %121
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @AV_OPT_SEARCH_FAKE_OBJ, align 4
  %138 = call i64 @av_opt_find(i32** %15, i8* %135, i32* null, i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %131
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @av_dict_set(i32** %11, i8* %144, i32 %147, i32 0)
  br label %149

149:                                              ; preds = %140, %131, %121
  br label %150

150:                                              ; preds = %149, %113
  %151 = load i8*, i8** %16, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i8*, i8** %16, align 8
  store i8 58, i8* %154, align 1
  br label %155

155:                                              ; preds = %153, %150
  br label %62

156:                                              ; preds = %62
  %157 = load i32*, i32** %11, align 8
  ret i32* %157
}

declare dso_local i32* @avcodec_get_class(...) #1

declare dso_local %struct.TYPE_19__* @avcodec_find_encoder(i32) #1

declare dso_local %struct.TYPE_19__* @avcodec_find_decoder(i32) #1

declare dso_local %struct.TYPE_18__* @av_dict_get(i32*, i8*, %struct.TYPE_18__*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @check_stream_specifier(%struct.TYPE_17__*, %struct.TYPE_16__*, i8*) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i64 @av_opt_find(i32**, i8*, i32*, i32, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
