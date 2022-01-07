; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_open_url.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_open_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32**, i8*, i32, i32**)*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"crypto\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [189 x i8] c"Filename extension of '%s' is not a common multimedia extension, blocked for security reasons.\0AIf you wish to override this adjust allowed_extensions, you can set it to 'ALL' to allow all\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"file,\00", align 1
@AVERROR_EXIT = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [99 x i8] c"keepalive request failed for '%s' with error: '%s' when opening url, retrying with new connection\0A\00", align 1
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@AVFMT_FLAG_CUSTOM_IO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"cookies\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**, i8*, i32*, i32*, i32*)* @open_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_url(%struct.TYPE_8__* %0, i32** %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %14, align 8
  store i32* null, i32** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %18, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = call i64 @av_strstart(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %6
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 6
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 43
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 6
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 58
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %26
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 7
  %41 = call i8* @avio_find_protocol_name(i8* %40)
  store i8* %41, i8** %16, align 8
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %6
  %44 = load i8*, i8** %16, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %10, align 8
  %48 = call i8* @avio_find_protocol_name(i8* %47)
  store i8* %48, i8** %16, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i8*, i8** %16, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %7, align 4
  br label %234

54:                                               ; preds = %49
  %55 = load i8*, i8** %16, align 8
  %56 = call i64 @av_strstart(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @av_match_ext(i8* %65, i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 (%struct.TYPE_8__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_8__* %72, i32 %73, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %76, i32* %7, align 4
  br label %234

77:                                               ; preds = %64, %58
  br label %86

78:                                               ; preds = %54
  %79 = load i8*, i8** %16, align 8
  %80 = call i64 @av_strstart(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %18, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %84, i32* %7, align 4
  br label %234

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %85, %77
  %87 = load i8*, i8** %16, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i8*, i8** %16, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = call i32 @strncmp(i8* %87, i8* %88, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %86
  %94 = load i8*, i8** %10, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 58
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %138

103:                                              ; preds = %93, %86
  %104 = load i8*, i8** %10, align 8
  %105 = call i64 @av_strstart(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %103
  %108 = load i8*, i8** %16, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 7
  %111 = load i8*, i8** %16, align 8
  %112 = call i32 @strlen(i8* %111)
  %113 = call i32 @strncmp(i8* %108, i8* %110, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %107
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = add nsw i32 7, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %116, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 58
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %137

126:                                              ; preds = %115, %107, %103
  %127 = load i8*, i8** %16, align 8
  %128 = call i64 @strcmp(i8* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @strncmp(i8* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130, %126
  %135 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %135, i32* %7, align 4
  br label %234

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %125
  br label %138

138:                                              ; preds = %137, %102
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @av_dict_copy(i32** %15, i32* %139, i32 0)
  %141 = load i32*, i32** %12, align 8
  %142 = call i32 @av_dict_copy(i32** %15, i32* %141, i32 0)
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %192

145:                                              ; preds = %138
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %192

150:                                              ; preds = %145
  %151 = load i32**, i32*** %9, align 8
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %192

154:                                              ; preds = %150
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32**, i32*** %9, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = call i32 @open_url_keepalive(i32 %157, i32** %158, i8* %159, i32** %15)
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* @AVERROR_EXIT, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %154
  %165 = call i32 @av_dict_free(i32** %15)
  %166 = load i32, i32* %17, align 4
  store i32 %166, i32* %7, align 4
  br label %234

167:                                              ; preds = %154
  %168 = load i32, i32* %17, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %167
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* @AVERROR_EOF, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %176 = load i32, i32* @AV_LOG_WARNING, align 4
  %177 = load i8*, i8** %10, align 8
  %178 = load i32, i32* %17, align 4
  %179 = call i32 @av_err2str(i32 %178)
  %180 = call i32 (%struct.TYPE_8__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_8__* %175, i32 %176, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.6, i64 0, i64 0), i8* %177, i32 %179)
  br label %181

181:                                              ; preds = %174, %170
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32 (%struct.TYPE_8__*, i32**, i8*, i32, i32**)*, i32 (%struct.TYPE_8__*, i32**, i8*, i32, i32**)** %183, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %186 = load i32**, i32*** %9, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = load i32, i32* @AVIO_FLAG_READ, align 4
  %189 = call i32 %184(%struct.TYPE_8__* %185, i32** %186, i8* %187, i32 %188, i32** %15)
  store i32 %189, i32* %17, align 4
  br label %190

190:                                              ; preds = %181, %167
  br label %191

191:                                              ; preds = %190
  br label %201

192:                                              ; preds = %150, %145, %138
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32 (%struct.TYPE_8__*, i32**, i8*, i32, i32**)*, i32 (%struct.TYPE_8__*, i32**, i8*, i32, i32**)** %194, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %197 = load i32**, i32*** %9, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = load i32, i32* @AVIO_FLAG_READ, align 4
  %200 = call i32 %195(%struct.TYPE_8__* %196, i32** %197, i8* %198, i32 %199, i32** %15)
  store i32 %200, i32* %17, align 4
  br label %201

201:                                              ; preds = %192, %191
  %202 = load i32, i32* %17, align 4
  %203 = icmp sge i32 %202, 0
  br i1 %203, label %204, label %225

204:                                              ; preds = %201
  store i8* null, i8** %19, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @AVFMT_FLAG_CUSTOM_IO, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %204
  %212 = load i32**, i32*** %9, align 8
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %215 = bitcast i8** %19 to i32**
  %216 = call i32 @av_opt_get(i32* %213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %214, i32** %215)
  br label %217

217:                                              ; preds = %211, %204
  %218 = load i8*, i8** %19, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load i8*, i8** %19, align 8
  %222 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %223 = call i32 @av_dict_set(i32** %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %221, i32 %222)
  br label %224

224:                                              ; preds = %220, %217
  br label %225

225:                                              ; preds = %224, %201
  %226 = call i32 @av_dict_free(i32** %15)
  %227 = load i32*, i32** %13, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32, i32* %18, align 4
  %231 = load i32*, i32** %13, align 8
  store i32 %230, i32* %231, align 4
  br label %232

232:                                              ; preds = %229, %225
  %233 = load i32, i32* %17, align 4
  store i32 %233, i32* %7, align 4
  br label %234

234:                                              ; preds = %232, %164, %134, %83, %71, %52
  %235 = load i32, i32* %7, align 4
  ret i32 %235
}

declare dso_local i64 @av_strstart(i8*, i8*, i32*) #1

declare dso_local i8* @avio_find_protocol_name(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_match_ext(i8*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @av_dict_copy(i32**, i32*, i32) #1

declare dso_local i32 @open_url_keepalive(i32, i32**, i8*, i32**) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @av_opt_get(i32*, i8*, i32, i32**) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
