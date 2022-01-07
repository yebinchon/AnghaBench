; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_mmalcam.c_test_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_mmalcam.c_test_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@camcorder_behaviour = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@mmalcam_change_table = common dso_local global %struct.TYPE_6__* null, align 8
@sleepy_time = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%u/%u\00", align 1
@MMAL_PARAM_FOCUS_EDOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid command line option (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"usage: %s [options]\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"options list:\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c" -h          : help\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c" -o <file>   : write encoded output to <file>\0A\00", align 1
@.str.7 = private unnamed_addr constant [87 x i8] c" -v <format> : set video resolution and encoding format (defaults to '1280x720:h264')\0A\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c" -r <r>      : put viewfinder at position <r>, given as x,y,width,height\0A\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c" -c <n> <x>  : change camera parameter every <n> seconds.\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"                The parameter changed is defined by <x>, one of\0A\00", align 1
@.str.11 = private unnamed_addr constant [74 x i8] c"                image_effect, rotation, zoom, focus, hdr, drc, contrast,\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"                brightness, saturation, sharpness\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c" -t <n>      : operate camera for <n> seconds\0A\00", align 1
@.str.14 = private unnamed_addr constant [78 x i8] c" -f <n>[/<d>]: set camera frame rate to <n>/<d>, where <d> is 1 if not given\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c" -x          : use tunneling\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c" -z          : use zero copy buffers (default)\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c" -z!         : use full copy buffers\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c" -O          : use opaque images\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c" -b <n>      : use <n> as the bitrate (bits/s)\0A\00", align 1
@.str.20 = private unnamed_addr constant [93 x i8] c" -a <n>      : Set to focus mode <n> (autofocus will cycle). Use MMAL_PARAM_FOCUS_T values.\0A\00", align 1
@.str.21 = private unnamed_addr constant [77 x i8] c" -n <n>      : Set camera number <n>. Use MMAL_PARAMETER_CAMERA_NUM values.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @test_parse_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_parse_cmdline(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %260, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %263

14:                                               ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %260

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 45
  br i1 %34, label %35, label %36

35:                                               ; preds = %25, %22
  br label %260

36:                                               ; preds = %25
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %258 [
    i32 45, label %45
    i32 104, label %46
    i32 111, label %47
    i32 118, label %60
    i32 114, label %73
    i32 99, label %92
    i32 116, label %145
    i32 102, label %164
    i32 120, label %183
    i32 122, label %184
    i32 79, label %195
    i32 98, label %196
    i32 97, label %215
    i32 110, label %239
  ]

45:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  br label %259

46:                                               ; preds = %36
  br label %271

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %4, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %264

53:                                               ; preds = %47
  %54 = load i8**, i8*** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 0), align 8
  br label %259

60:                                               ; preds = %36
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %4, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %264

66:                                               ; preds = %60
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 1), align 8
  br label %259

73:                                               ; preds = %36
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %4, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %264

79:                                               ; preds = %73
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %80, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @test_mmalcam_parse_rect(i8* %85, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 11))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  br label %264

89:                                               ; preds = %79
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %259

92:                                               ; preds = %36
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 2
  %95 = load i32, i32* %4, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %264

98:                                               ; preds = %92
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %99, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 10))
  %106 = icmp ne i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %264

108:                                              ; preds = %98
  store i64 0, i64* %8, align 8
  br label %109

109:                                              ; preds = %130, %108
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmalcam_change_table, align 8
  %112 = call i64 @countof(%struct.TYPE_6__* %111)
  %113 = icmp ult i64 %110, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %109
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmalcam_change_table, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %120, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcmp(i32 %119, i8* %125)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %114
  br label %133

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %8, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %8, align 8
  br label %109

133:                                              ; preds = %128, %109
  %134 = load i64, i64* %8, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmalcam_change_table, align 8
  %136 = call i64 @countof(%struct.TYPE_6__* %135)
  %137 = icmp uge i64 %134, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %264

139:                                              ; preds = %133
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mmalcam_change_table, align 8
  %141 = load i64, i64* %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 9), align 8
  br label %259

145:                                              ; preds = %36
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %4, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %264

151:                                              ; preds = %145
  %152 = load i8**, i8*** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %152, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* @sleepy_time)
  %159 = icmp ne i32 %158, 1
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %264

161:                                              ; preds = %151
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %259

164:                                              ; preds = %36
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  %167 = load i32, i32* %4, align 4
  %168 = icmp sge i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %264

170:                                              ; preds = %164
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 8, i32 0), align 8
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %171, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 8, i32 1), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 8, i32 0))
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %170
  br label %264

180:                                              ; preds = %170
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %259

183:                                              ; preds = %36
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 2), align 8
  br label %259

184:                                              ; preds = %36
  %185 = load i8**, i8*** %5, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 2
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 33
  %194 = zext i1 %193 to i32
  store i32 %194, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 3), align 4
  br label %259

195:                                              ; preds = %36
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 4), align 8
  br label %259

196:                                              ; preds = %36
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 1
  %199 = load i32, i32* %4, align 4
  %200 = icmp sge i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %264

202:                                              ; preds = %196
  %203 = load i8**, i8*** %5, align 8
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %203, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 7))
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %202
  br label %264

212:                                              ; preds = %202
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %6, align 4
  br label %259

215:                                              ; preds = %36
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  %218 = load i32, i32* %4, align 4
  %219 = icmp sge i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %264

221:                                              ; preds = %215
  %222 = load i8**, i8*** %5, align 8
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %222, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %227, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 6))
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  br label %264

231:                                              ; preds = %221
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 6), align 8
  %233 = load i32, i32* @MMAL_PARAM_FOCUS_EDOF, align 4
  %234 = icmp sgt i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  br label %264

236:                                              ; preds = %231
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %6, align 4
  br label %259

239:                                              ; preds = %36
  %240 = load i32, i32* %6, align 4
  %241 = add nsw i32 %240, 1
  %242 = load i32, i32* %4, align 4
  %243 = icmp sge i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %264

245:                                              ; preds = %239
  %246 = load i8**, i8*** %5, align 8
  %247 = load i32, i32* %6, align 4
  %248 = add nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %246, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %251, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @camcorder_behaviour, i32 0, i32 5))
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %245
  br label %264

255:                                              ; preds = %245
  %256 = load i32, i32* %6, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %6, align 4
  br label %259

258:                                              ; preds = %36
  br label %264

259:                                              ; preds = %255, %236, %212, %195, %184, %183, %180, %161, %139, %89, %66, %53, %45
  br label %260

260:                                              ; preds = %259, %35, %21
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  br label %10

263:                                              ; preds = %10
  store i32 0, i32* %3, align 4
  br label %317

264:                                              ; preds = %258, %254, %244, %235, %230, %220, %211, %201, %179, %169, %160, %150, %138, %107, %97, %88, %78, %65, %52
  %265 = load i8**, i8*** %5, align 8
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %265, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %269)
  br label %271

271:                                              ; preds = %264, %46
  %272 = load i8**, i8*** %5, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 0
  %274 = load i8*, i8** %273, align 8
  %275 = call i8* @strrchr(i8* %274, i8 signext 92)
  store i8* %275, i8** %9, align 8
  %276 = load i8*, i8** %9, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %271
  %279 = load i8*, i8** %9, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %9, align 8
  br label %296

281:                                              ; preds = %271
  %282 = load i8**, i8*** %5, align 8
  %283 = getelementptr inbounds i8*, i8** %282, i64 0
  %284 = load i8*, i8** %283, align 8
  %285 = call i8* @strrchr(i8* %284, i8 signext 47)
  store i8* %285, i8** %9, align 8
  %286 = load i8*, i8** %9, align 8
  %287 = icmp ne i8* %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %281
  %289 = load i8*, i8** %9, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %9, align 8
  br label %295

291:                                              ; preds = %281
  %292 = load i8**, i8*** %5, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 0
  %294 = load i8*, i8** %293, align 8
  store i8* %294, i8** %9, align 8
  br label %295

295:                                              ; preds = %291, %288
  br label %296

296:                                              ; preds = %295, %278
  %297 = load i8*, i8** %9, align 8
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %297)
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.7, i64 0, i64 0))
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0))
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0))
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.11, i64 0, i64 0))
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %309 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.14, i64 0, i64 0))
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0))
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0))
  %313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0))
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.20, i64 0, i64 0))
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.21, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %317

317:                                              ; preds = %296, %263
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local i32 @test_mmalcam_parse_rect(i8*, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i64 @countof(%struct.TYPE_6__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
