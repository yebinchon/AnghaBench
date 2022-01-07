; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_set_annotate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_set_annotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.tm = type { i32 }

@MMAL_PARAMETER_ANNOTATE = common dso_local global i32 0, align 4
@MMAL_CAMERA_ANNOTATE_MAX_TEXT_LEN_V4 = common dso_local global i32 0, align 4
@ANNOTATE_APP_TEXT = common dso_local global i32 0, align 4
@ANNOTATE_USER_TEXT = common dso_local global i32 0, align 4
@ANNOTATE_TIME_TEXT = common dso_local global i32 0, align 4
@ANNOTATE_DATE_TEXT = common dso_local global i32 0, align 4
@MMAL_CAMERA_ANNOTATE_MAX_TEXT_LEN_V3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %X\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%X\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@ANNOTATE_SHUTTER_SETTINGS = common dso_local global i32 0, align 4
@MMAL_TRUE = common dso_local global i8* null, align 8
@ANNOTATE_GAIN_SETTINGS = common dso_local global i32 0, align 4
@ANNOTATE_LENS_SETTINGS = common dso_local global i32 0, align 4
@ANNOTATE_CAF_SETTINGS = common dso_local global i32 0, align 4
@ANNOTATE_MOTION_SETTINGS = common dso_local global i32 0, align 4
@ANNOTATE_FRAME_NUMBER = common dso_local global i32 0, align 4
@ANNOTATE_BLACK_BACKGROUND = common dso_local global i32 0, align 4
@MMAL_FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raspicamcontrol_set_annotate(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.tm, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %25 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 144, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %27 = load i32, i32* @MMAL_PARAMETER_ANNOTATE, align 4
  store i32 %27, i32* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %236

30:                                               ; preds = %9
  %31 = call i32 @time(i32* null)
  store i32 %31, i32* %20, align 4
  %32 = call %struct.tm* @localtime(i32* %20)
  %33 = bitcast %struct.tm* %21 to i8*
  %34 = bitcast %struct.tm* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load i32, i32* @MMAL_CAMERA_ANNOTATE_MAX_TEXT_LEN_V4, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %22, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %23, align 8
  store i32 1, i32* %24, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @ANNOTATE_APP_TEXT, align 4
  %42 = load i32, i32* @ANNOTATE_USER_TEXT, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %30
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @ANNOTATE_TIME_TEXT, align 4
  %49 = load i32, i32* @ANNOTATE_DATE_TEXT, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load i8*, i8** %12, align 8
  %55 = call i32* @strchr(i8* %54, i8 signext 37)
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @MMAL_CAMERA_ANNOTATE_MAX_TEXT_LEN_V3, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @strftime(i8* %59, i32 %60, i8* %61, %struct.tm* %21)
  store i32 0, i32* %24, align 4
  br label %69

63:                                               ; preds = %53, %46
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* @MMAL_CAMERA_ANNOTATE_MAX_TEXT_LEN_V3, align 4
  %68 = call i32 @strncpy(i8* %65, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %57
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @MMAL_CAMERA_ANNOTATE_MAX_TEXT_LEN_V3, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %69, %30
  %77 = load i32, i32* %24, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @ANNOTATE_TIME_TEXT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 @strftime(i8* %38, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.tm* %21)
  br label %93

91:                                               ; preds = %84
  %92 = call i32 @strftime(i8* %38, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %21)
  br label %93

93:                                               ; preds = %91, %89
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* @MMAL_CAMERA_ANNOTATE_MAX_TEXT_LEN_V3, align 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = sub nsw i32 %96, %99
  %101 = sub nsw i32 %100, 1
  %102 = call i32 @strncat(i8* %95, i8* %38, i32 %101)
  br label %103

103:                                              ; preds = %93, %79, %76
  %104 = load i32, i32* %24, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @ANNOTATE_DATE_TEXT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 @strftime(i8* %38, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %21)
  br label %120

118:                                              ; preds = %111
  %119 = call i32 @strftime(i8* %38, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %21)
  br label %120

120:                                              ; preds = %118, %116
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* @MMAL_CAMERA_ANNOTATE_MAX_TEXT_LEN_V3, align 4
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = sub nsw i32 %123, %126
  %128 = sub nsw i32 %127, 1
  %129 = call i32 @strncat(i8* %122, i8* %38, i32 %128)
  br label %130

130:                                              ; preds = %120, %106, %103
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @ANNOTATE_SHUTTER_SETTINGS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i8*, i8** @MMAL_TRUE, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 21
  store i8* %136, i8** %137, align 8
  br label %138

138:                                              ; preds = %135, %130
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @ANNOTATE_GAIN_SETTINGS, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i8*, i8** @MMAL_TRUE, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 20
  store i8* %144, i8** %145, align 8
  br label %146

146:                                              ; preds = %143, %138
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @ANNOTATE_LENS_SETTINGS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i8*, i8** @MMAL_TRUE, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 19
  store i8* %152, i8** %153, align 8
  br label %154

154:                                              ; preds = %151, %146
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @ANNOTATE_CAF_SETTINGS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i8*, i8** @MMAL_TRUE, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 18
  store i8* %160, i8** %161, align 8
  br label %162

162:                                              ; preds = %159, %154
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @ANNOTATE_MOTION_SETTINGS, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i8*, i8** @MMAL_TRUE, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 17
  store i8* %168, i8** %169, align 8
  br label %170

170:                                              ; preds = %167, %162
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @ANNOTATE_FRAME_NUMBER, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i8*, i8** @MMAL_TRUE, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 16
  store i8* %176, i8** %177, align 8
  br label %178

178:                                              ; preds = %175, %170
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @ANNOTATE_BLACK_BACKGROUND, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i8*, i8** @MMAL_TRUE, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 15
  store i8* %184, i8** %185, align 8
  br label %186

186:                                              ; preds = %183, %178
  %187 = load i32, i32* %13, align 4
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %187, i32* %188, align 8
  %189 = load i32, i32* %14, align 4
  %190 = icmp ne i32 %189, -1
  br i1 %190, label %191, label %205

191:                                              ; preds = %186
  %192 = load i8*, i8** @MMAL_TRUE, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 14
  store i8* %192, i8** %193, align 8
  %194 = load i32, i32* %14, align 4
  %195 = and i32 %194, 255
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  store i32 %195, i32* %196, align 4
  %197 = load i32, i32* %14, align 4
  %198 = ashr i32 %197, 8
  %199 = and i32 %198, 255
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  store i32 %199, i32* %200, align 8
  %201 = load i32, i32* %14, align 4
  %202 = ashr i32 %201, 16
  %203 = and i32 %202, 255
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  store i32 %203, i32* %204, align 4
  br label %208

205:                                              ; preds = %186
  %206 = load i8*, i8** @MMAL_FALSE, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 14
  store i8* %206, i8** %207, align 8
  br label %208

208:                                              ; preds = %205, %191
  %209 = load i32, i32* %15, align 4
  %210 = icmp ne i32 %209, -1
  br i1 %210, label %211, label %225

211:                                              ; preds = %208
  %212 = load i8*, i8** @MMAL_TRUE, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 13
  store i8* %212, i8** %213, align 8
  %214 = load i32, i32* %15, align 4
  %215 = and i32 %214, 255
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  store i32 %215, i32* %216, align 8
  %217 = load i32, i32* %15, align 4
  %218 = ashr i32 %217, 8
  %219 = and i32 %218, 255
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 7
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* %15, align 4
  %222 = ashr i32 %221, 16
  %223 = and i32 %222, 255
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 8
  store i32 %223, i32* %224, align 8
  br label %228

225:                                              ; preds = %208
  %226 = load i8*, i8** @MMAL_FALSE, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 13
  store i8* %226, i8** %227, align 8
  br label %228

228:                                              ; preds = %225, %211
  %229 = load i32, i32* %16, align 4
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 9
  store i32 %229, i32* %230, align 4
  %231 = load i32, i32* %17, align 4
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 10
  store i32 %231, i32* %232, align 8
  %233 = load i32, i32* %18, align 4
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 11
  store i32 %233, i32* %234, align 4
  %235 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %235)
  br label %238

236:                                              ; preds = %9
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 0, i32* %237, align 8
  br label %238

238:                                              ; preds = %236, %228
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 12
  %243 = call i32 @mmal_port_parameter_set(i32 %241, i32* %242)
  %244 = call i32 @mmal_status_to_int(i32 %243)
  ret i32 %244
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @time(i32*) #2

declare dso_local %struct.tm* @localtime(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @mmal_status_to_int(i32) #2

declare dso_local i32 @mmal_port_parameter_set(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
