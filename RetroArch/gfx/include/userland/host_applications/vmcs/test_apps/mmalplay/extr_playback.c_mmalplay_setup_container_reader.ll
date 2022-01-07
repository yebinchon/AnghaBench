; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_setup_container_reader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_setup_container_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_19__, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_18__** }
%struct.TYPE_21__ = type { i32, %struct.TYPE_15__, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__, i32 }

@MMAL_PARAMETER_SEEK = common dso_local global i32 0, align 4
@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s doesn't have output ports\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@MMAL_ENOMEM = common dso_local global i64 0, align 8
@MMAL_PARAMETER_URI = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"%s could not open file %s\00", align 1
@MMAL_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@MMAL_ENCODING_JPEG = common dso_local global i64 0, align 8
@MMAL_ENCODING_GIF = common dso_local global i64 0, align 8
@MMAL_ENCODING_PNG = common dso_local global i64 0, align 8
@MMAL_ENCODING_PPM = common dso_local global i64 0, align 8
@MMAL_ENCODING_TGA = common dso_local global i64 0, align 8
@MMAL_ENCODING_BMP = common dso_local global i64 0, align 8
@MMAL_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"no track to decode\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"----Reader input port format-----\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"seek to %fs\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"failed to seek to %fs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, %struct.TYPE_22__*, i8*)* @mmalplay_setup_container_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmalplay_setup_container_reader(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_21__, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %16 = load i32, i32* @MMAL_PARAMETER_SEEK, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  %23 = bitcast %struct.TYPE_17__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %8, align 8
  %24 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %289

34:                                               ; preds = %3
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = add i64 12, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.TYPE_20__* @malloc(i32 %40)
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %8, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = icmp ne %struct.TYPE_20__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %46, i64* %12, align 8
  br label %289

47:                                               ; preds = %34
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @memset(%struct.TYPE_20__* %48, i32 0, i32 %49)
  %51 = load i32, i32* @MMAL_PARAMETER_URI, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %14, align 8
  %64 = add i64 %63, 1
  %65 = call i32 @vcos_safe_strcpy(i32 %61, i8* %62, i64 %64, i32 0)
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = call i64 @mmal_port_parameter_set(i32 %68, %struct.TYPE_15__* %70)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @MMAL_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %47
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @MMAL_ENOSYS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %82, i8* %83)
  br label %289

85:                                               ; preds = %75, %47
  %86 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %86, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %109, %85
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %87
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %96, i64 %98
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MMAL_ES_TYPE_VIDEO, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %112

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %87

112:                                              ; preds = %107, %87
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %162

118:                                              ; preds = %112
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %121, i64 %123
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 3
  store %struct.TYPE_18__* %125, %struct.TYPE_18__** %127, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %13, align 8
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* @MMAL_ENCODING_JPEG, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %158, label %138

138:                                              ; preds = %118
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* @MMAL_ENCODING_GIF, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %158, label %142

142:                                              ; preds = %138
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* @MMAL_ENCODING_PNG, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %158, label %146

146:                                              ; preds = %142
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* @MMAL_ENCODING_PPM, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = load i64, i64* %13, align 8
  %152 = load i64, i64* @MMAL_ENCODING_TGA, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i64, i64* %13, align 8
  %156 = load i64, i64* @MMAL_ENCODING_BMP, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154, %150, %146, %142, %138, %118
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %154
  br label %162

162:                                              ; preds = %161, %112
  store i32 0, i32* %10, align 4
  br label %163

163:                                              ; preds = %185, %162
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ult i32 %164, %167
  br i1 %168, label %169, label %188

169:                                              ; preds = %163
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %172, i64 %174
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @MMAL_ES_TYPE_AUDIO, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %169
  br label %188

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %10, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %163

188:                                              ; preds = %183, %163
  %189 = load i32, i32* %10, align 4
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %189, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %188
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %197, i64 %199
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 2
  store %struct.TYPE_18__* %201, %struct.TYPE_18__** %203, align 8
  br label %204

204:                                              ; preds = %194, %188
  %205 = load i32, i32* %11, align 4
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %205, %208
  br i1 %209, label %210, label %219

210:                                              ; preds = %204
  %211 = load i32, i32* %10, align 4
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %211, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %218 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %218, i64* %12, align 8
  br label %289

219:                                              ; preds = %210, %204
  %220 = call i32 @LOG_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %221, %224
  br i1 %225, label %226, label %237

226:                                              ; preds = %219
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %228, align 8
  %230 = load i32, i32* %11, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %229, i64 %231
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %234, align 8
  %236 = call i32 @log_format(%struct.TYPE_16__* %235, i32 0)
  br label %237

237:                                              ; preds = %226, %219
  %238 = load i32, i32* %10, align 4
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %238, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %237
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 3
  %246 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %246, i64 %248
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %251, align 8
  %253 = call i32 @log_format(%struct.TYPE_16__* %252, i32 0)
  br label %254

254:                                              ; preds = %243, %237
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %288

260:                                              ; preds = %254
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %264)
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @INT64_C(i32 1000000)
  %271 = mul nsw i32 %269, %270
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  store i32 %271, i32* %272, align 4
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %277 = call i64 @mmal_port_parameter_set(i32 %275, %struct.TYPE_15__* %276)
  store i64 %277, i64* %12, align 8
  %278 = load i64, i64* %12, align 8
  %279 = load i64, i64* @MMAL_SUCCESS, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %260
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %285)
  br label %287

287:                                              ; preds = %281, %260
  br label %288

288:                                              ; preds = %287, %254
  br label %289

289:                                              ; preds = %288, %216, %79, %44, %29
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %291 = icmp ne %struct.TYPE_20__* %290, null
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %294 = call i32 @free(%struct.TYPE_20__* %293)
  br label %295

295:                                              ; preds = %292, %289
  %296 = load i64, i64* %12, align 8
  ret i64 %296
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct.TYPE_20__* @malloc(i32) #2

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @vcos_safe_strcpy(i32, i8*, i64, i32) #2

declare dso_local i64 @mmal_port_parameter_set(i32, %struct.TYPE_15__*) #2

declare dso_local i32 @LOG_INFO(i8*) #2

declare dso_local i32 @log_format(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @LOG_DEBUG(i8*, i32) #2

declare dso_local i32 @INT64_C(i32) #2

declare dso_local i32 @free(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
