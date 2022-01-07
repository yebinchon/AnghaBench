; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_open_url.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_open_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"crypto\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [189 x i8] c"Filename extension of '%s' is not a common multimedia extension, blocked for security reasons.\0AIf you wish to override this adjust allowed_extensions, you can set it to 'ALL' to allow all\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"file,\00", align 1
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@AVFMT_FLAG_CUSTOM_IO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"cookies\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32**, i8*, i32*, i32*, i32*)* @open_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_url(%struct.TYPE_6__* %0, i32** %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %14, align 8
  store i32* null, i32** %15, align 8
  store i8* null, i8** %16, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @av_dict_copy(i32** %15, i32* %22, i32 0)
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @av_dict_copy(i32** %15, i32* %24, i32 0)
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @av_strstart(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %6
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 6
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 6
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 58
  br i1 %40, label %41, label %45

41:                                               ; preds = %35, %29
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 7
  %44 = call i8* @avio_find_protocol_name(i8* %43)
  store i8* %44, i8** %16, align 8
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45, %6
  %47 = load i8*, i8** %16, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %10, align 8
  %51 = call i8* @avio_find_protocol_name(i8* %50)
  store i8* %51, i8** %16, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i8*, i8** %16, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %56, i32* %7, align 4
  br label %184

57:                                               ; preds = %52
  %58 = load i8*, i8** %16, align 8
  %59 = call i32 @av_strstart(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @av_match_ext(i8* %68, i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %67
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @av_log(%struct.TYPE_6__* %75, i32 %76, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %7, align 4
  br label %184

80:                                               ; preds = %67, %61
  br label %89

81:                                               ; preds = %57
  %82 = load i8*, i8** %16, align 8
  %83 = call i32 @av_strstart(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %87, i32* %7, align 4
  br label %184

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %88, %80
  %90 = load i8*, i8** %16, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = call i32 @strncmp(i8* %90, i8* %91, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %89
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 58
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %141

106:                                              ; preds = %96, %89
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @av_strstart(i8* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = load i8*, i8** %16, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 7
  %114 = load i8*, i8** %16, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = call i32 @strncmp(i8* %111, i8* %113, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %110
  %119 = load i8*, i8** %10, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = call i32 @strlen(i8* %120)
  %122 = add nsw i32 7, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 58
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %140

129:                                              ; preds = %118, %110, %106
  %130 = load i8*, i8** %16, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 @strncmp(i8* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %133, %129
  %138 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %138, i32* %7, align 4
  br label %184

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %128
  br label %141

141:                                              ; preds = %140, %105
  %142 = load i32**, i32*** %9, align 8
  %143 = call i32 @av_freep(i32** %142)
  %144 = load i32**, i32*** %9, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = load i32, i32* @AVIO_FLAG_READ, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @avio_open2(i32** %144, i8* %145, i32 %146, i32 %149, i32** %15)
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %174

153:                                              ; preds = %141
  store i8* null, i8** %18, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @AVFMT_FLAG_CUSTOM_IO, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %153
  %161 = load i32**, i32*** %9, align 8
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %164 = bitcast i8** %18 to i32**
  %165 = call i32 @av_opt_get(i32* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %163, i32** %164)
  br label %166

166:                                              ; preds = %160, %153
  %167 = load i8*, i8** %18, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i8*, i8** %18, align 8
  %171 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %172 = call i32 @av_dict_set(i32** %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %166
  br label %174

174:                                              ; preds = %173, %141
  %175 = call i32 @av_dict_free(i32** %15)
  %176 = load i32*, i32** %13, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load i8*, i8** %16, align 8
  %180 = call i32 @av_strstart(i8* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %181 = load i32*, i32** %13, align 8
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %178, %174
  %183 = load i32, i32* %17, align 4
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %182, %137, %86, %74, %55
  %185 = load i32, i32* %7, align 4
  ret i32 %185
}

declare dso_local i32 @av_dict_copy(i32**, i32*, i32) #1

declare dso_local i32 @av_strstart(i8*, i8*, i32*) #1

declare dso_local i8* @avio_find_protocol_name(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_match_ext(i8*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @avio_open2(i32**, i8*, i32, i32, i32**) #1

declare dso_local i32 @av_opt_get(i32*, i8*, i32, i32**) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
