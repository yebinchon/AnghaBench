; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_init_input_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_init_input_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, %struct.TYPE_32__** }
%struct.TYPE_32__ = type { i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_30__ = type { i64, i32, %struct.TYPE_24__**, %struct.TYPE_29__*, i32, i64, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i32, i32, i32, i32, %struct.TYPE_31__*, %struct.TYPE_30__* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_24__**, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_22__ = type { i8*, %struct.TYPE_27__*, i64 }
%struct.TYPE_27__ = type { i32, i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Only video and audio filters supported currently.\0A\00", align 1
@nb_input_files = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Invalid file index %d in filtergraph description %s.\0A\00", align 1
@input_files = common dso_local global %struct.TYPE_23__** null, align 8
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"Stream specifier '%s' in filtergraph description %s matches no streams.\0A\00", align 1
@input_streams = common dso_local global %struct.TYPE_30__** null, align 8
@AVDISCARD_ALL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [86 x i8] c"Stream specifier '%s' in filtergraph description %s matches a disabled input stream.\0A\00", align 1
@nb_input_streams = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [71 x i8] c"Cannot find a matching stream for unlabeled input pad %d on filter %s\0A\00", align 1
@DECODING_FOR_FILTER = common dso_local global i32 0, align 4
@AVDISCARD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*, %struct.TYPE_22__*)* @init_input_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_input_filter(%struct.TYPE_31__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %5, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @avfilter_pad_get_type(i32 %17, i8* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @AV_LOG_FATAL, align 4
  %31 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @exit_program(i32 1)
  br label %33

33:                                               ; preds = %29, %25, %2
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %169

38:                                               ; preds = %33
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %9, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @strtol(i64 %41, i8** %10, i32 0)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @nb_input_files, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45, %38
  %50 = load i32, i32* @AV_LOG_FATAL, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %50, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  %56 = call i32 @exit_program(i32 1)
  br label %57

57:                                               ; preds = %49, %45
  %58 = load %struct.TYPE_23__**, %struct.TYPE_23__*** @input_files, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %58, i64 %60
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %63, align 8
  store %struct.TYPE_33__* %64, %struct.TYPE_33__** %8, align 8
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %126, %57
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %129

71:                                               ; preds = %65
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %74, i64 %76
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %71
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %95, label %94

94:                                               ; preds = %90, %86
  br label %126

95:                                               ; preds = %90, %71
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %99, i64 %101
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %102, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 58
  br i1 %107, label %108, label %111

108:                                              ; preds = %95
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  br label %113

111:                                              ; preds = %95
  %112 = load i8*, i8** %10, align 8
  br label %113

113:                                              ; preds = %111, %108
  %114 = phi i8* [ %110, %108 ], [ %112, %111 ]
  %115 = call i32 @check_stream_specifier(%struct.TYPE_33__* %96, %struct.TYPE_32__* %103, i8* %114)
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %120, i64 %122
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %123, align 8
  store %struct.TYPE_32__* %124, %struct.TYPE_32__** %9, align 8
  br label %129

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %94
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %65

129:                                              ; preds = %117, %65
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %131 = icmp ne %struct.TYPE_32__* %130, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @AV_LOG_FATAL, align 4
  %134 = load i8*, i8** %10, align 8
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %133, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8* %134, i32 %137)
  %139 = call i32 @exit_program(i32 1)
  br label %140

140:                                              ; preds = %132, %129
  %141 = load %struct.TYPE_30__**, %struct.TYPE_30__*** @input_streams, align 8
  %142 = load %struct.TYPE_23__**, %struct.TYPE_23__*** @input_files, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %142, i64 %144
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %148, %151
  %153 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %141, i64 %152
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %153, align 8
  store %struct.TYPE_30__* %154, %struct.TYPE_30__** %5, align 8
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @AVDISCARD_ALL, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %140
  %161 = load i32, i32* @AV_LOG_FATAL, align 4
  %162 = load i8*, i8** %10, align 8
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %161, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0), i8* %162, i32 %165)
  %167 = call i32 @exit_program(i32 1)
  br label %168

168:                                              ; preds = %160, %140
  br label %221

169:                                              ; preds = %33
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %201, %169
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @nb_input_streams, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %204

174:                                              ; preds = %170
  %175 = load %struct.TYPE_30__**, %struct.TYPE_30__*** @input_streams, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %175, i64 %177
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %178, align 8
  store %struct.TYPE_30__* %179, %struct.TYPE_30__** %5, align 8
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @AVDISCARD_ALL, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %174
  br label %201

186:                                              ; preds = %174
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 6
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %186
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %204

200:                                              ; preds = %194, %186
  br label %201

201:                                              ; preds = %200, %185
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %170

204:                                              ; preds = %199, %170
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @nb_input_streams, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %220

208:                                              ; preds = %204
  %209 = load i32, i32* @AV_LOG_FATAL, align 4
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %209, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i8* %212, i32 %217)
  %219 = call i32 @exit_program(i32 1)
  br label %220

220:                                              ; preds = %208, %204
  br label %221

221:                                              ; preds = %220, %168
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %223 = call i32 @av_assert0(%struct.TYPE_30__* %222)
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 5
  store i64 0, i64* %225, align 8
  %226 = load i32, i32* @DECODING_FOR_FILTER, align 4
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  %231 = load i32, i32* @AVDISCARD_NONE, align 4
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 1
  store i32 %231, i32* %235, align 8
  %236 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %237, align 8
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @GROW_ARRAY(%struct.TYPE_24__** %238, i32 %241)
  %243 = call %struct.TYPE_24__* @av_mallocz(i32 32)
  %244 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %245, align 8
  %247 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %246, i64 %251
  store %struct.TYPE_24__* %243, %struct.TYPE_24__** %252, align 8
  %253 = icmp ne %struct.TYPE_24__* %243, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %221
  %255 = call i32 @exit_program(i32 1)
  br label %256

256:                                              ; preds = %254, %221
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %258 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %259, align 8
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = sub nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %260, i64 %265
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 5
  store %struct.TYPE_30__* %257, %struct.TYPE_30__** %268, align 8
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %270 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %271, align 8
  %273 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %272, i64 %277
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 4
  store %struct.TYPE_31__* %269, %struct.TYPE_31__** %280, align 8
  %281 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %282, align 8
  %284 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %283, i64 %288
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 0
  store i32 -1, i32* %291, align 8
  %292 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i32 0, i32 3
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %300, align 8
  %302 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = sub nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %301, i64 %306
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 3
  store i32 %298, i32* %309, align 4
  %310 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %312 = call i32 @describe_filter_link(%struct.TYPE_31__* %310, %struct.TYPE_22__* %311, i32 1)
  %313 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %313, i32 0, i32 1
  %315 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %314, align 8
  %316 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = sub nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %315, i64 %320
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 2
  store i32 %312, i32* %323, align 8
  %324 = call i32 @av_fifo_alloc(i32 64)
  %325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %326, align 8
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = sub nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %327, i64 %332
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 1
  store i32 %324, i32* %335, align 4
  %336 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %337, align 8
  %339 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = sub nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %338, i64 %343
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %351, label %349

349:                                              ; preds = %256
  %350 = call i32 @exit_program(i32 1)
  br label %351

351:                                              ; preds = %349, %256
  %352 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %352, i32 0, i32 2
  %354 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %353, align 8
  %355 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @GROW_ARRAY(%struct.TYPE_24__** %354, i32 %357)
  %359 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %360, align 8
  %362 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = sub nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %361, i64 %366
  %368 = load %struct.TYPE_24__*, %struct.TYPE_24__** %367, align 8
  %369 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %369, i32 0, i32 2
  %371 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %370, align 8
  %372 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 8
  %375 = sub nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %371, i64 %376
  store %struct.TYPE_24__* %368, %struct.TYPE_24__** %377, align 8
  ret void
}

declare dso_local i32 @avfilter_pad_get_type(i32, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @strtol(i64, i8**, i32) #1

declare dso_local i32 @check_stream_specifier(%struct.TYPE_33__*, %struct.TYPE_32__*, i8*) #1

declare dso_local i32 @av_assert0(%struct.TYPE_30__*) #1

declare dso_local i32 @GROW_ARRAY(%struct.TYPE_24__**, i32) #1

declare dso_local %struct.TYPE_24__* @av_mallocz(i32) #1

declare dso_local i32 @describe_filter_link(%struct.TYPE_31__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @av_fifo_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
