; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double, double, double, double, double, i32, double, double, i32, i32, double, double, double, i32, i8*, double, double, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i8*, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32 }
%struct.TYPE_8__ = type { double, double, double, double }
%struct.TYPE_7__ = type { i32, i32, i32 }

@cmdline_commands = common dso_local global i32 0, align 4
@cmdline_commands_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%lf,%lf,%lf,%lf\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%lf,%lf\00", align 1
@MMAL_TRUE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@ANNOTATE_USER_TEXT = common dso_local global i32 0, align 4
@MMAL_CAMERA_ANNOTATE_MAX_TEXT_LEN_V3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"%u,%X,%X,%u,%u,%u\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raspicamcontrol_parse_cmdline(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %340

32:                                               ; preds = %3
  %33 = load i32, i32* @cmdline_commands, align 4
  %34 = load i32, i32* @cmdline_commands_size, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @raspicli_get_command_id(i32 %33, i32 %34, i8* %35, i32* %10)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %32
  store i32 0, i32* %4, align 4
  br label %340

49:                                               ; preds = %45, %42, %39
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %338 [
    i32 135, label %51
    i32 149, label %56
    i32 151, label %61
    i32 137, label %66
    i32 142, label %71
    i32 128, label %76
    i32 146, label %79
    i32 145, label %84
    i32 144, label %89
    i32 156, label %94
    i32 141, label %99
    i32 150, label %104
    i32 140, label %116
    i32 138, label %121
    i32 143, label %126
    i32 129, label %129
    i32 139, label %132
    i32 134, label %183
    i32 152, label %188
    i32 148, label %207
    i32 133, label %212
    i32 154, label %216
    i32 153, label %278
    i32 131, label %293
    i32 132, label %299
    i32 130, label %304
    i32 155, label %309
    i32 147, label %322
    i32 136, label %335
  ]

51:                                               ; preds = %49
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = call i32 (i8*, i8*, ...) @sscanf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double* %54)
  store i32 2, i32* %9, align 4
  br label %338

56:                                               ; preds = %49
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = call i32 (i8*, i8*, ...) @sscanf(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double* %59)
  store i32 2, i32* %9, align 4
  br label %338

61:                                               ; preds = %49
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = call i32 (i8*, i8*, ...) @sscanf(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double* %64)
  store i32 2, i32* %9, align 4
  br label %338

66:                                               ; preds = %49
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = call i32 (i8*, i8*, ...) @sscanf(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double* %69)
  store i32 2, i32* %9, align 4
  br label %338

71:                                               ; preds = %49
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 4
  %75 = call i32 (i8*, i8*, ...) @sscanf(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double* %74)
  store i32 2, i32* %9, align 4
  br label %338

76:                                               ; preds = %49
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 5
  store i32 1, i32* %78, align 8
  store i32 1, i32* %9, align 4
  br label %338

79:                                               ; preds = %49
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 6
  %83 = call i32 (i8*, i8*, ...) @sscanf(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double* %82)
  store i32 2, i32* %9, align 4
  br label %338

84:                                               ; preds = %49
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @exposure_mode_from_string(i8* %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 33
  store i32 %86, i32* %88, align 4
  store i32 2, i32* %9, align 4
  br label %338

89:                                               ; preds = %49
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @flicker_avoid_mode_from_string(i8* %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 32
  store i32 %91, i32* %93, align 8
  store i32 2, i32* %9, align 4
  br label %338

94:                                               ; preds = %49
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @awb_mode_from_string(i8* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 31
  store i32 %96, i32* %98, align 4
  store i32 2, i32* %9, align 4
  br label %338

99:                                               ; preds = %49
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @imagefx_mode_from_string(i8* %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 30
  store i32 %101, i32* %103, align 8
  store i32 2, i32* %9, align 4
  br label %338

104:                                              ; preds = %49
  %105 = load i8*, i8** %7, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 29
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 29
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = call i32 (i8*, i8*, ...) @sscanf(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %108, i32* %111)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 29
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  store i32 2, i32* %9, align 4
  br label %338

116:                                              ; preds = %49
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @metering_mode_from_string(i8* %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 28
  store i32 %118, i32* %120, align 8
  store i32 2, i32* %9, align 4
  br label %338

121:                                              ; preds = %49
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 7
  %125 = call i32 (i8*, i8*, ...) @sscanf(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double* %124)
  store i32 2, i32* %9, align 4
  br label %338

126:                                              ; preds = %49
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 8
  store i32 1, i32* %128, align 8
  store i32 1, i32* %9, align 4
  br label %338

129:                                              ; preds = %49
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 9
  store i32 1, i32* %131, align 4
  store i32 1, i32* %9, align 4
  br label %338

132:                                              ; preds = %49
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 (i8*, i8*, ...) @sscanf(i8* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), double* %11, double* %12, double* %13, double* %14)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 4
  br i1 %136, label %149, label %137

137:                                              ; preds = %132
  %138 = load double, double* %11, align 8
  %139 = fcmp ogt double %138, 1.000000e+00
  br i1 %139, label %149, label %140

140:                                              ; preds = %137
  %141 = load double, double* %12, align 8
  %142 = fcmp ogt double %141, 1.000000e+00
  br i1 %142, label %149, label %143

143:                                              ; preds = %140
  %144 = load double, double* %13, align 8
  %145 = fcmp ogt double %144, 1.000000e+00
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load double, double* %14, align 8
  %148 = fcmp ogt double %147, 1.000000e+00
  br i1 %148, label %149, label %150

149:                                              ; preds = %146, %143, %140, %137, %132
  store i32 0, i32* %4, align 4
  br label %340

150:                                              ; preds = %146
  %151 = load double, double* %11, align 8
  %152 = load double, double* %13, align 8
  %153 = fadd double %151, %152
  %154 = fcmp ogt double %153, 1.000000e+00
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load double, double* %11, align 8
  %157 = fsub double 1.000000e+00, %156
  store double %157, double* %13, align 8
  br label %158

158:                                              ; preds = %155, %150
  %159 = load double, double* %12, align 8
  %160 = load double, double* %14, align 8
  %161 = fadd double %159, %160
  %162 = fcmp ogt double %161, 1.000000e+00
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load double, double* %12, align 8
  %165 = fsub double 1.000000e+00, %164
  store double %165, double* %14, align 8
  br label %166

166:                                              ; preds = %163, %158
  %167 = load double, double* %11, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 27
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  store double %167, double* %170, align 8
  %171 = load double, double* %12, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 27
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store double %171, double* %174, align 8
  %175 = load double, double* %13, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 27
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  store double %175, double* %178, align 8
  %179 = load double, double* %14, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 27
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  store double %179, double* %182, align 8
  store i32 2, i32* %9, align 4
  br label %338

183:                                              ; preds = %49
  %184 = load i8*, i8** %7, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 10
  %187 = call i32 (i8*, i8*, ...) @sscanf(i8* %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double* %186)
  store i32 2, i32* %9, align 4
  br label %338

188:                                              ; preds = %49
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 (i8*, i8*, ...) @sscanf(i8* %189, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), double* %16, double* %17)
  store i32 %190, i32* %18, align 4
  %191 = load i32, i32* %18, align 4
  %192 = icmp ne i32 %191, 2
  br i1 %192, label %199, label %193

193:                                              ; preds = %188
  %194 = load double, double* %16, align 8
  %195 = fcmp ogt double %194, 8.000000e+00
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load double, double* %17, align 8
  %198 = fcmp ogt double %197, 8.000000e+00
  br i1 %198, label %199, label %200

199:                                              ; preds = %196, %193, %188
  store i32 0, i32* %4, align 4
  br label %340

200:                                              ; preds = %196
  %201 = load double, double* %16, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 11
  store double %201, double* %203, align 8
  %204 = load double, double* %17, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 12
  store double %204, double* %206, align 8
  store i32 2, i32* %9, align 4
  br label %338

207:                                              ; preds = %49
  %208 = load i8*, i8** %7, align 8
  %209 = call i32 @drc_mode_from_string(i8* %208)
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 26
  store i32 %209, i32* %211, align 8
  store i32 2, i32* %9, align 4
  br label %338

212:                                              ; preds = %49
  %213 = load i8*, i8** @MMAL_TRUE, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 25
  store i8* %213, i8** %215, align 8
  store i32 1, i32* %9, align 4
  br label %338

216:                                              ; preds = %49
  %217 = load i8*, i8** %7, align 8
  %218 = call i32 (i8*, i8*, ...) @sscanf(i8* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %20, i8* %19)
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load i32, i32* %20, align 4
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 13
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 8
  br label %277

226:                                              ; preds = %216
  %227 = load i32, i32* @ANNOTATE_USER_TEXT, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 13
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  %232 = load i8*, i8** %7, align 8
  store i8* %232, i8** %22, align 8
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 14
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 0
  store i8* %236, i8** %23, align 8
  store i32 0, i32* %24, align 4
  br label %237

237:                                              ; preds = %269, %226
  %238 = load i8*, i8** %22, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %22, align 8
  %240 = load i8, i8* %238, align 1
  store i8 %240, i8* %21, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %237
  %244 = load i32, i32* %24, align 4
  %245 = load i32, i32* @MMAL_CAMERA_ANNOTATE_MAX_TEXT_LEN_V3, align 4
  %246 = sub nsw i32 %245, 1
  %247 = icmp slt i32 %244, %246
  br label %248

248:                                              ; preds = %243, %237
  %249 = phi i1 [ false, %237 ], [ %247, %243 ]
  br i1 %249, label %250, label %275

250:                                              ; preds = %248
  %251 = load i8, i8* %21, align 1
  %252 = zext i8 %251 to i32
  %253 = icmp eq i32 %252, 92
  br i1 %253, label %254, label %269

254:                                              ; preds = %250
  %255 = load i8*, i8** %22, align 8
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %254
  %260 = load i8*, i8** %22, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %22, align 8
  %262 = load i8, i8* %260, align 1
  store i8 %262, i8* %21, align 1
  %263 = zext i8 %262 to i32
  switch i32 %263, label %265 [
    i32 110, label %264
  ]

264:                                              ; preds = %259
  store i8 10, i8* %21, align 1
  br label %268

265:                                              ; preds = %259
  store i8 92, i8* %21, align 1
  %266 = load i8*, i8** %22, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 -1
  store i8* %267, i8** %22, align 8
  br label %268

268:                                              ; preds = %265, %264
  br label %269

269:                                              ; preds = %268, %254, %250
  %270 = load i8, i8* %21, align 1
  %271 = load i8*, i8** %23, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %23, align 8
  store i8 %270, i8* %271, align 1
  %273 = load i32, i32* %24, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %24, align 4
  br label %237

275:                                              ; preds = %248
  %276 = load i8*, i8** %23, align 8
  store i8 0, i8* %276, align 1
  br label %277

277:                                              ; preds = %275, %220
  store i32 2, i32* %9, align 4
  br label %338

278:                                              ; preds = %49
  %279 = load i8*, i8** %7, align 8
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 24
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 23
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 22
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 21
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 20
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 19
  %292 = call i32 (i8*, i8*, ...) @sscanf(i8* %279, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %281, i32* %283, i32* %285, i32* %287, i32* %289, i32* %291)
  store i32 2, i32* %9, align 4
  br label %338

293:                                              ; preds = %49
  %294 = load i8*, i8** %7, align 8
  %295 = call i32 @stereo_mode_from_string(i8* %294)
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 18
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 2
  store i32 %295, i32* %298, align 8
  store i32 2, i32* %9, align 4
  br label %338

299:                                              ; preds = %49
  %300 = load i8*, i8** @MMAL_TRUE, align 8
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 18
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 1
  store i8* %300, i8** %303, align 8
  store i32 1, i32* %9, align 4
  br label %338

304:                                              ; preds = %49
  %305 = load i8*, i8** @MMAL_TRUE, align 8
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 18
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 0
  store i8* %305, i8** %308, align 8
  store i32 1, i32* %9, align 4
  br label %338

309:                                              ; preds = %49
  %310 = load i8*, i8** %7, align 8
  %311 = call i32 (i8*, i8*, ...) @sscanf(i8* %310, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double* %25)
  store i32 %311, i32* %26, align 4
  %312 = load i32, i32* %26, align 4
  %313 = icmp ne i32 %312, 1
  br i1 %313, label %317, label %314

314:                                              ; preds = %309
  %315 = load double, double* %25, align 8
  %316 = fcmp ogt double %315, 1.600000e+01
  br i1 %316, label %317, label %318

317:                                              ; preds = %314, %309
  store i32 0, i32* %4, align 4
  br label %340

318:                                              ; preds = %314
  %319 = load double, double* %25, align 8
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 15
  store double %319, double* %321, align 8
  store i32 2, i32* %9, align 4
  br label %338

322:                                              ; preds = %49
  %323 = load i8*, i8** %7, align 8
  %324 = call i32 (i8*, i8*, ...) @sscanf(i8* %323, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double* %27)
  store i32 %324, i32* %28, align 4
  %325 = load i32, i32* %28, align 4
  %326 = icmp ne i32 %325, 1
  br i1 %326, label %330, label %327

327:                                              ; preds = %322
  %328 = load double, double* %27, align 8
  %329 = fcmp ogt double %328, 6.400000e+01
  br i1 %329, label %330, label %331

330:                                              ; preds = %327, %322
  store i32 0, i32* %4, align 4
  br label %340

331:                                              ; preds = %327
  %332 = load double, double* %27, align 8
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 16
  store double %332, double* %334, align 8
  store i32 2, i32* %9, align 4
  br label %338

335:                                              ; preds = %49
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 17
  store i32 1, i32* %337, align 8
  store i32 1, i32* %9, align 4
  br label %338

338:                                              ; preds = %49, %335, %331, %318, %304, %299, %293, %278, %277, %212, %207, %200, %183, %166, %129, %126, %121, %116, %104, %99, %94, %89, %84, %79, %76, %71, %66, %61, %56, %51
  %339 = load i32, i32* %9, align 4
  store i32 %339, i32* %4, align 4
  br label %340

340:                                              ; preds = %338, %330, %317, %199, %149, %48, %31
  %341 = load i32, i32* %4, align 4
  ret i32 %341
}

declare dso_local i32 @raspicli_get_command_id(i32, i32, i8*, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @exposure_mode_from_string(i8*) #1

declare dso_local i32 @flicker_avoid_mode_from_string(i8*) #1

declare dso_local i32 @awb_mode_from_string(i8*) #1

declare dso_local i32 @imagefx_mode_from_string(i8*) #1

declare dso_local i32 @metering_mode_from_string(i8*) #1

declare dso_local i32 @drc_mode_from_string(i8*) #1

declare dso_local i32 @stereo_mode_from_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
