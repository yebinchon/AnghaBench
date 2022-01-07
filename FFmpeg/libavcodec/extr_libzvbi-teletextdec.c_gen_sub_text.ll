; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libzvbi-teletextdec.c_gen_sub_text.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libzvbi-teletextdec.c_gen_sub_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32, i64 }

@TEXT_MAXSZ = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"vbi_print error\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@SUBTITLE_ASS = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"subtext:%s:txetbus\0A\00", align 1
@SUBTITLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_16__*, i32)* @gen_sub_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_sub_text(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* @TEXT_MAXSZ, align 8
  %17 = call i8* @av_malloc(i64 %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %170

23:                                               ; preds = %4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i64, i64* @TEXT_MAXSZ, align 8
  %27 = sub nsw i64 %26, 1
  %28 = load i32, i32* @TRUE, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %36, %38
  %40 = call i32 @vbi_print_page_region(%struct.TYPE_16__* %24, i8* %25, i64 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 0, i32 %30, i32 %33, i64 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %23
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %44, i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @av_free(i8* %47)
  %49 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %49, i32* %5, align 4
  br label %170

50:                                               ; preds = %23
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %12, align 8
  store i8* %55, i8** %10, align 8
  %56 = load i64, i64* @TEXT_MAXSZ, align 8
  %57 = call i32 @av_bprint_init(%struct.TYPE_19__* %11, i32 0, i64 %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %123

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %110, %62
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @strspn(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i8*, i8** %10, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %10, align 8
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %99, %63
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %69
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %84, label %98

84:                                               ; preds = %76
  %85 = load i32, i32* %14, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = and i32 %94, 128
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %87, %84
  br label %102

98:                                               ; preds = %87, %76
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %69

102:                                              ; preds = %97, %69
  %103 = load i8*, i8** %10, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %102
  br label %122

110:                                              ; preds = %102
  %111 = load i8*, i8** %10, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @chop_spaces_utf8(i8* %111, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @av_bprint_append_data(%struct.TYPE_19__* %11, i8* %114, i32 %115)
  %117 = call i32 (%struct.TYPE_19__*, i8*, ...) @av_bprintf(%struct.TYPE_19__* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* %14, align 4
  %119 = load i8*, i8** %10, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %10, align 8
  br label %63

122:                                              ; preds = %109
  br label %126

123:                                              ; preds = %50
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 (%struct.TYPE_19__*, i8*, ...) @av_bprintf(%struct.TYPE_19__* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %123, %122
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 @av_free(i8* %127)
  %129 = call i32 @av_bprint_is_complete(%struct.TYPE_19__* %11)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = call i32 @av_bprint_finalize(%struct.TYPE_19__* %11, i32* null)
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = call i32 @AVERROR(i32 %133)
  store i32 %134, i32* %5, align 4
  br label %170

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %164

139:                                              ; preds = %135
  %140 = load i32, i32* @SUBTITLE_ASS, align 4
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @create_ass_text(%struct.TYPE_17__* %143, i32 %145)
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %139
  %154 = call i32 @av_bprint_finalize(%struct.TYPE_19__* %11, i32* null)
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = call i32 @AVERROR(i32 %155)
  store i32 %156, i32* %5, align 4
  br label %170

157:                                              ; preds = %139
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %159 = load i32, i32* @AV_LOG_DEBUG, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %158, i32 %159, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %162)
  br label %168

164:                                              ; preds = %135
  %165 = load i32, i32* @SUBTITLE_NONE, align 4
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %164, %157
  %169 = call i32 @av_bprint_finalize(%struct.TYPE_19__* %11, i32* null)
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %168, %153, %131, %43, %20
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @vbi_print_page_region(%struct.TYPE_16__*, i8*, i64, i8*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @chop_spaces_utf8(i8*, i32) #1

declare dso_local i32 @av_bprint_append_data(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local i32 @av_bprint_is_complete(%struct.TYPE_19__*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @create_ass_text(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
