; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_enctheora.c_enctheoraInit.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_enctheora.c_enctheoraInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_25__*, %struct.TYPE_28__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_27__** }
%struct.TYPE_27__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i32, i8*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i32, i64, i32, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { double, i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@HB_PASS_ENCODE_1ST = common dso_local global i64 0, align 8
@HB_PASS_ENCODE_2ND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"theroa.log\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@TH_CS_UNSPECIFIED = common dso_local global i32 0, align 4
@TH_PF_420 = common dso_local global i32 0, align 4
@HB_INVALID_VIDEO_QUALITY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"theora: keyint: %i\00", align 1
@TH_ENCCTL_SET_KEYFRAME_FREQUENCY_FORCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"theora: Could not set keyframe interval to %d\00", align 1
@TH_RATECTL_CAP_UNDERFLOW = common dso_local global i32 0, align 4
@TH_ENCCTL_SET_RATE_FLAGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"theora: Could not set soft ratecontrol\00", align 1
@TH_ENCCTL_SET_RATE_BUFFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"theora: Could not set rate control buffer\00", align 1
@TH_ENCCTL_2PASS_OUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"Could not set up the first pass of two-pass mode.\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Did you remember to specify an estimated bitrate?\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Unable to write to two-pass data file.\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"enctheora: init 2nd pass\00", align 1
@TH_ENCCTL_2PASS_IN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [59 x i8] c"theora: Could not set up the second pass of two-pass mode.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enctheoraInit(%struct.TYPE_29__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_26__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_27__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %20 = call %struct.TYPE_28__* @calloc(i32 1, i32 24)
  store %struct.TYPE_28__* %20, %struct.TYPE_28__** %9, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 1
  store %struct.TYPE_28__* %21, %struct.TYPE_28__** %23, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 2
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %26, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HB_PASS_ENCODE_1ST, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %2
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HB_PASS_ENCODE_2ND, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %32, %2
  %39 = call i8* @hb_get_temporary_filename(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %39, i8** %10, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HB_PASS_ENCODE_1ST, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8
  %47 = call i8* @hb_fopen(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %55

50:                                               ; preds = %38
  %51 = load i8*, i8** %10, align 8
  %52 = call i8* @hb_fopen(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @free(i8* %56)
  br label %58

58:                                               ; preds = %55, %32
  %59 = call i32 @th_info_init(%struct.TYPE_26__* %11)
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 15
  %72 = and i32 %71, -16
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  store i32 %72, i32* %73, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 15
  %78 = and i32 %77, -16
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 13
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 14
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 12
  store i32 %85, i32* %86, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 11
  store i32 %90, i32* %91, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 10
  store i32 %95, i32* %96, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 9
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @TH_CS_UNSPECIFIED, align 4
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 8
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* @TH_PF_420, align 4
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 7
  store i32 %104, i32* %105, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HB_INVALID_VIDEO_QUALITY, align 8
  %110 = icmp sle i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %58
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %114, 1000
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 4
  store i32 %115, i32* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 5
  store i64 0, i64* %117, align 8
  br label %124

118:                                              ; preds = %58
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 4
  store i32 0, i32* %119, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 5
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %118, %111
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = sitofp i64 %128 to double
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load double, double* %132, align 8
  %134 = fdiv double %129, %133
  %135 = fadd double %134, 5.000000e-01
  %136 = fmul double %135, 1.000000e+01
  %137 = fptosi double %136 to i32
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %6, align 4
  %141 = sub nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %148, %124
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32, i32* %14, align 4
  %147 = ashr i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %142

151:                                              ; preds = %142
  %152 = load i32, i32* %7, align 4
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 6
  store i32 %152, i32* %153, align 8
  %154 = call i32 @th_encode_alloc(%struct.TYPE_26__* %11)
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = call i32 @th_info_clear(%struct.TYPE_26__* %11)
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @TH_ENCCTL_SET_KEYFRAME_FREQUENCY_FORCE, align 4
  %162 = call i32 (i32, i32, ...) @th_encode_ctl(i32 %160, i32 %161, i32* %6, i64 4)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %151
  %166 = load i32, i32* %6, align 4
  %167 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %165, %151
  %169 = load i32, i32* @TH_RATECTL_CAP_UNDERFLOW, align 4
  store i32 %169, i32* %15, align 4
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @TH_ENCCTL_SET_RATE_FLAGS, align 4
  %174 = call i32 (i32, i32, ...) @th_encode_ctl(i32 %172, i32 %173, i32* %15, i64 4)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %168
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @HB_PASS_ENCODE_1ST, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %179
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @HB_PASS_ENCODE_2ND, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %185, %179
  %192 = load i32, i32* %6, align 4
  %193 = mul nsw i32 %192, 7
  %194 = ashr i32 %193, 1
  store i32 %194, i32* %15, align 4
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @TH_ENCCTL_SET_RATE_BUFFER, align 4
  %199 = call i32 (i32, i32, ...) @th_encode_ctl(i32 %197, i32 %198, i32* %15, i64 4)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %191
  %203 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202, %191
  br label %205

205:                                              ; preds = %204, %185
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @HB_PASS_ENCODE_1ST, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %238

211:                                              ; preds = %205
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @TH_ENCCTL_2PASS_OUT, align 4
  %216 = call i32 (i32, i32, ...) @th_encode_ctl(i32 %214, i32 %215, i8** %16, i64 8)
  store i32 %216, i32* %17, align 4
  %217 = load i32, i32* %17, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %211
  %220 = call i32 @hb_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %221 = call i32 @hb_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

222:                                              ; preds = %211
  %223 = load i8*, i8** %16, align 8
  %224 = load i32, i32* %17, align 4
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @fwrite(i8* %223, i32 1, i32 %224, i8* %227)
  %229 = load i32, i32* %17, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %222
  %232 = call i32 @hb_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

233:                                              ; preds = %222
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @fflush(i8* %236)
  br label %238

238:                                              ; preds = %233, %205
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @HB_PASS_ENCODE_2ND, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %255

244:                                              ; preds = %238
  %245 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @TH_ENCCTL_2PASS_IN, align 4
  %250 = call i32 (i32, i32, ...) @th_encode_ctl(i32 %248, i32 %249, i8* null, i32 0)
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %244
  %253 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

254:                                              ; preds = %244
  br label %255

255:                                              ; preds = %254, %238
  %256 = call i32 @th_comment_init(i32* %12)
  store i32 0, i32* %19, align 4
  br label %257

257:                                              ; preds = %298, %255
  %258 = load i32, i32* %19, align 4
  %259 = icmp slt i32 %258, 3
  br i1 %259, label %260, label %301

260:                                              ; preds = %257
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @th_encode_flushheader(i32 %263, i32* %12, %struct.TYPE_27__* %13)
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %269, align 8
  %271 = load i32, i32* %19, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %270, i64 %272
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** %273, align 8
  store %struct.TYPE_27__* %274, %struct.TYPE_27__** %18, align 8
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %276 = call i32 @memcpy(%struct.TYPE_27__* %275, %struct.TYPE_27__* %13, i32 16)
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %281, align 8
  %283 = load i32, i32* %19, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %282, i64 %284
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i64 16
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 1
  store %struct.TYPE_27__* %287, %struct.TYPE_27__** %289, align 8
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @memcpy(%struct.TYPE_27__* %292, %struct.TYPE_27__* %294, i32 %296)
  br label %298

298:                                              ; preds = %260
  %299 = load i32, i32* %19, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %19, align 4
  br label %257

301:                                              ; preds = %257
  %302 = call i32 @th_comment_clear(i32* %12)
  store i32 0, i32* %3, align 4
  br label %303

303:                                              ; preds = %301, %252, %231, %219
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local %struct.TYPE_28__* @calloc(i32, i32) #1

declare dso_local i8* @hb_get_temporary_filename(i8*) #1

declare dso_local i8* @hb_fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @th_info_init(%struct.TYPE_26__*) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i32 @th_encode_alloc(%struct.TYPE_26__*) #1

declare dso_local i32 @th_info_clear(%struct.TYPE_26__*) #1

declare dso_local i32 @th_encode_ctl(i32, i32, ...) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i8*) #1

declare dso_local i32 @fflush(i8*) #1

declare dso_local i32 @th_comment_init(i32*) #1

declare dso_local i32 @th_encode_flushheader(i32, i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @th_comment_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
