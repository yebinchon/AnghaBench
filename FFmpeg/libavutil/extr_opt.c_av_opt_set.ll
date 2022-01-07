; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_set.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, double, double, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AV_OPT_FLAG_READONLY = common dso_local global i32 0, align 4
@AV_OPT_FLAG_DEPRECATED = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"The \22%s\22 option is deprecated: %s\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to parse option value \22%s\22 as duration\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Value %f for parameter '%s' out of range [%g - %g]\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Unable to parse option value \22%s\22 as channel layout\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Invalid option type.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_opt_set(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_15__, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.TYPE_16__* @av_opt_find2(i8* %17, i8* %18, i32* null, i32 0, i32 %19, i8** %12)
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %13, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %22 = icmp ne %struct.TYPE_16__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %4
  %27 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %27, i32* %5, align 4
  br label %266

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %79, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 130
  br i1 %35, label %36, label %79

36:                                               ; preds = %31
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 133
  br i1 %40, label %41, label %79

41:                                               ; preds = %36
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 131
  br i1 %45, label %46, label %79

46:                                               ; preds = %41
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 136
  br i1 %50, label %51, label %79

51:                                               ; preds = %46
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 128
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 139
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 141
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 142
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 143
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EINVAL, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %5, align 4
  br label %266

79:                                               ; preds = %71, %66, %61, %56, %51, %46, %41, %36, %31, %28
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AV_OPT_FLAG_READONLY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @EINVAL, align 4
  %88 = call i32 @AVERROR(i32 %87)
  store i32 %88, i32* %5, align 4
  br label %266

89:                                               ; preds = %79
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @AV_OPT_FLAG_DEPRECATED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* @AV_LOG_WARNING, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %97, i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %99, i32 %102)
  br label %104

104:                                              ; preds = %96, %89
  %105 = load i8*, i8** %12, align 8
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = bitcast i32* %111 to i8*
  store i8* %112, i8** %11, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %260 [
    i32 143, label %116
    i32 130, label %122
    i32 144, label %128
    i32 138, label %134
    i32 135, label %134
    i32 134, label %134
    i32 129, label %134
    i32 137, label %134
    i32 140, label %134
    i32 132, label %134
    i32 136, label %141
    i32 128, label %147
    i32 133, label %165
    i32 131, label %171
    i32 139, label %177
    i32 141, label %226
    i32 142, label %232
  ]

116:                                              ; preds = %104
  %117 = load i8*, i8** %6, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @set_string_bool(i8* %117, %struct.TYPE_16__* %118, i8* %119, i8* %120)
  store i32 %121, i32* %5, align 4
  br label %266

122:                                              ; preds = %104
  %123 = load i8*, i8** %6, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @set_string(i8* %123, %struct.TYPE_16__* %124, i8* %125, i8* %126)
  store i32 %127, i32* %5, align 4
  br label %266

128:                                              ; preds = %104
  %129 = load i8*, i8** %6, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @set_string_binary(i8* %129, %struct.TYPE_16__* %130, i8* %131, i8* %132)
  store i32 %133, i32* %5, align 4
  br label %266

134:                                              ; preds = %104, %104, %104, %104, %104, %104, %104
  %135 = load i8*, i8** %6, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @set_string_number(i8* %135, i8* %136, %struct.TYPE_16__* %137, i8* %138, i8* %139)
  store i32 %140, i32* %5, align 4
  br label %266

141:                                              ; preds = %104
  %142 = load i8*, i8** %6, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 @set_string_image_size(i8* %142, %struct.TYPE_16__* %143, i8* %144, i8* %145)
  store i32 %146, i32* %5, align 4
  br label %266

147:                                              ; preds = %104
  %148 = load i8*, i8** %6, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @set_string_video_rate(i8* %148, %struct.TYPE_16__* %149, i8* %150, %struct.TYPE_15__* %14)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %5, align 4
  br label %266

156:                                              ; preds = %147
  %157 = load i8*, i8** %6, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @write_number(i8* %157, %struct.TYPE_16__* %158, i8* %159, i32 1, i32 %161, i32 %163)
  store i32 %164, i32* %5, align 4
  br label %266

165:                                              ; preds = %104
  %166 = load i8*, i8** %6, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 @set_string_pixel_fmt(i8* %166, %struct.TYPE_16__* %167, i8* %168, i8* %169)
  store i32 %170, i32* %5, align 4
  br label %266

171:                                              ; preds = %104
  %172 = load i8*, i8** %6, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = call i32 @set_string_sample_fmt(i8* %172, %struct.TYPE_16__* %173, i8* %174, i8* %175)
  store i32 %176, i32* %5, align 4
  br label %266

177:                                              ; preds = %104
  store double 0.000000e+00, double* %15, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %191

180:                                              ; preds = %177
  %181 = load i8*, i8** %8, align 8
  %182 = call i32 @av_parse_time(double* %15, i8* %181, i32 1)
  store i32 %182, i32* %10, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load i8*, i8** %6, align 8
  %186 = load i32, i32* @AV_LOG_ERROR, align 4
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %185, i32 %186, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %187)
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %5, align 4
  br label %266

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190, %177
  %192 = load double, double* %15, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 3
  %195 = load double, double* %194, align 8
  %196 = fcmp olt double %192, %195
  br i1 %196, label %203, label %197

197:                                              ; preds = %191
  %198 = load double, double* %15, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 4
  %201 = load double, double* %200, align 8
  %202 = fcmp ogt double %198, %201
  br i1 %202, label %203, label %222

203:                                              ; preds = %197, %191
  %204 = load i8*, i8** %6, align 8
  %205 = load i32, i32* @AV_LOG_ERROR, align 4
  %206 = load double, double* %15, align 8
  %207 = fdiv double %206, 1.000000e+06
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 3
  %213 = load double, double* %212, align 8
  %214 = fdiv double %213, 1.000000e+06
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 4
  %217 = load double, double* %216, align 8
  %218 = fdiv double %217, 1.000000e+06
  %219 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %204, i32 %205, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), double %207, i32 %210, double %214, double %218)
  %220 = load i32, i32* @ERANGE, align 4
  %221 = call i32 @AVERROR(i32 %220)
  store i32 %221, i32* %5, align 4
  br label %266

222:                                              ; preds = %197
  %223 = load double, double* %15, align 8
  %224 = load i8*, i8** %11, align 8
  %225 = bitcast i8* %224 to double*
  store double %223, double* %225, align 8
  store i32 0, i32* %5, align 4
  br label %266

226:                                              ; preds = %104
  %227 = load i8*, i8** %6, align 8
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = load i8*, i8** %11, align 8
  %231 = call i32 @set_string_color(i8* %227, %struct.TYPE_16__* %228, i8* %229, i8* %230)
  store i32 %231, i32* %5, align 4
  br label %266

232:                                              ; preds = %104
  %233 = load i8*, i8** %8, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load i8*, i8** %8, align 8
  %237 = call i32 @strcmp(i8* %236, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %235, %232
  %240 = load i8*, i8** %11, align 8
  %241 = bitcast i8* %240 to double*
  store double 0.000000e+00, double* %241, align 8
  br label %259

242:                                              ; preds = %235
  %243 = load i8*, i8** %8, align 8
  %244 = call double @av_get_channel_layout(i8* %243)
  store double %244, double* %16, align 8
  %245 = load double, double* %16, align 8
  %246 = fcmp une double %245, 0.000000e+00
  br i1 %246, label %254, label %247

247:                                              ; preds = %242
  %248 = load i8*, i8** %6, align 8
  %249 = load i32, i32* @AV_LOG_ERROR, align 4
  %250 = load i8*, i8** %8, align 8
  %251 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %248, i32 %249, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %250)
  %252 = load i32, i32* @EINVAL, align 4
  %253 = call i32 @AVERROR(i32 %252)
  store i32 %253, i32* %10, align 4
  br label %254

254:                                              ; preds = %247, %242
  %255 = load double, double* %16, align 8
  %256 = load i8*, i8** %11, align 8
  %257 = bitcast i8* %256 to double*
  store double %255, double* %257, align 8
  %258 = load i32, i32* %10, align 4
  store i32 %258, i32* %5, align 4
  br label %266

259:                                              ; preds = %239
  br label %260

260:                                              ; preds = %104, %259
  %261 = load i8*, i8** %6, align 8
  %262 = load i32, i32* @AV_LOG_ERROR, align 4
  %263 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %261, i32 %262, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %264 = load i32, i32* @EINVAL, align 4
  %265 = call i32 @AVERROR(i32 %264)
  store i32 %265, i32* %5, align 4
  br label %266

266:                                              ; preds = %260, %254, %226, %222, %203, %184, %171, %165, %156, %154, %141, %134, %128, %122, %116, %86, %76, %26
  %267 = load i32, i32* %5, align 4
  ret i32 %267
}

declare dso_local %struct.TYPE_16__* @av_opt_find2(i8*, i8*, i32*, i32, i32, i8**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @set_string_bool(i8*, %struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @set_string(i8*, %struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @set_string_binary(i8*, %struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @set_string_number(i8*, i8*, %struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @set_string_image_size(i8*, %struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @set_string_video_rate(i8*, %struct.TYPE_16__*, i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @write_number(i8*, %struct.TYPE_16__*, i8*, i32, i32, i32) #1

declare dso_local i32 @set_string_pixel_fmt(i8*, %struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @set_string_sample_fmt(i8*, %struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @av_parse_time(double*, i8*, i32) #1

declare dso_local i32 @set_string_color(i8*, %struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local double @av_get_channel_layout(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
