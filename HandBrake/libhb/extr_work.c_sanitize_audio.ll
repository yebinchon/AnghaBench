; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_sanitize_audio.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_sanitize_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32, float, float, i32, i64, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@HB_ACODEC_AUTO_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Auto Passthru error, dropping track %d\00", align 1
@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@HB_ACODEC_PASS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [96 x i8] c"Passthru requested and input codec is not the same as output codec for track %d, dropping track\00", align 1
@HB_ACODEC_VORBIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"work: sanitizing track %d unsupported samplerate %d Hz to %s kHz\00", align 1
@HB_AMIXDOWN_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"work: mixdown not specified, track %d setting mixdown %s\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"work: sanitizing track %d mixdown %s to %s\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"work: compression level not specified, track %d setting compression level %.2f\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"work: track %d, compression level not supported by codec\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"work: sanitizing track %d compression level %.2f to %.2f\00", align 1
@HB_INVALID_AUDIO_QUALITY = common dso_local global float 0.000000e+00, align 4
@.str.8 = private unnamed_addr constant [52 x i8] c"work: track %d, quality mode not supported by codec\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"work: sanitizing track %d quality %.2f to %.2f\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"work: bitrate not specified, track %d setting bitrate %d Kbps\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"work: sanitizing track %d bitrate %d to %d Kbps\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"work: track %d, dithering not supported by codec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @sanitize_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitize_audio(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %594

16:                                               ; preds = %1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %18 = call i32 @hb_autopassthru_apply_settings(%struct.TYPE_22__* %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %91, %77, %39, %16
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @hb_list_count(i32 %23)
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %98

26:                                               ; preds = %19
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call %struct.TYPE_23__* @hb_list_item(i32 %29, i32 %30)
  store %struct.TYPE_23__* %31, %struct.TYPE_23__** %5, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HB_ACODEC_AUTO_PASS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %26
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %50 = call i32 @hb_list_rem(i32 %48, %struct.TYPE_23__* %49)
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %52 = call i32 @free(%struct.TYPE_23__* %51)
  br label %19

53:                                               ; preds = %26
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %53
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %67, %72
  %74 = load i32, i32* @HB_ACODEC_PASS_MASK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %62
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %88 = call i32 @hb_list_rem(i32 %86, %struct.TYPE_23__* %87)
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %90 = call i32 @free(%struct.TYPE_23__* %89)
  br label %19

91:                                               ; preds = %62, %53
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 4
  br label %19

98:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %590, %98
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @hb_list_count(i32 %103)
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %593

106:                                              ; preds = %99
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call %struct.TYPE_23__* @hb_list_item(i32 %109, i32 %110)
  store %struct.TYPE_23__* %111, %struct.TYPE_23__** %5, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %106
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 8
  store i32 %125, i32* %129, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 2
  store i32 %134, i32* %138, align 8
  br label %590

139:                                              ; preds = %106
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @HB_ACODEC_VORBIS, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %139
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  store i32 %152, i32* %157, align 8
  br label %158

158:                                              ; preds = %147, %139
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 2
  store i32 %170, i32* %174, align 8
  br label %175

175:                                              ; preds = %165, %158
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @hb_audio_samplerate_find_closest(i32 %180, i32 %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %187, %192
  br i1 %193, label %194, label %213

194:                                              ; preds = %175
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @hb_audio_samplerate_get_name(i32 %205)
  %207 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %199, i32 %204, i32 %206)
  %208 = load i32, i32* %8, align 4
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 2
  store i32 %208, i32* %212, align 8
  br label %213

213:                                              ; preds = %194, %175
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @HB_AMIXDOWN_NONE, align 4
  %220 = icmp sle i32 %218, %219
  br i1 %220, label %221, label %249

221:                                              ; preds = %213
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @hb_mixdown_get_default(i32 %226, i32 %231)
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 3
  store i32 %232, i32* %236, align 4
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @hb_mixdown_get_name(i32 %246)
  %248 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %241, i32 %247)
  br label %294

249:                                              ; preds = %213
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @hb_mixdown_get_best(i32 %254, i32 %259, i32 %264)
  store i32 %265, i32* %6, align 4
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %6, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %293

273:                                              ; preds = %249
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @hb_mixdown_get_name(i32 %283)
  %285 = load i32, i32* %6, align 4
  %286 = call i32 @hb_mixdown_get_name(i32 %285)
  %287 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %278, i32 %284, i32 %286)
  %288 = load i32, i32* %6, align 4
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 3
  store i32 %288, i32* %292, align 4
  br label %293

293:                                              ; preds = %273, %249
  br label %294

294:                                              ; preds = %293, %221
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 4
  %299 = load float, float* %298, align 8
  %300 = fcmp olt float %299, 0.000000e+00
  br i1 %300, label %301, label %332

301:                                              ; preds = %294
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = call float @hb_audio_compression_get_default(i32 %306)
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 4
  store float %307, float* %311, align 8
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 4
  %316 = load float, float* %315, align 8
  %317 = fcmp oge float %316, 0.000000e+00
  br i1 %317, label %318, label %331

318:                                              ; preds = %301
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 4
  %328 = load float, float* %327, align 8
  %329 = fpext float %328 to double
  %330 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %323, double %329)
  br label %331

331:                                              ; preds = %318, %301
  br label %383

332:                                              ; preds = %294
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 4
  %342 = load float, float* %341, align 8
  %343 = call float @hb_audio_compression_get_best(i32 %337, float %342)
  store float %343, float* %9, align 4
  %344 = load float, float* %9, align 4
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 4
  %349 = load float, float* %348, align 8
  %350 = fcmp une float %344, %349
  br i1 %350, label %351, label %382

351:                                              ; preds = %332
  %352 = load float, float* %9, align 4
  %353 = fcmp oeq float %352, -1.000000e+00
  br i1 %353, label %354, label %361

354:                                              ; preds = %351
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %359)
  br label %376

361:                                              ; preds = %351
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i32 0, i32 4
  %371 = load float, float* %370, align 8
  %372 = fpext float %371 to double
  %373 = load float, float* %9, align 4
  %374 = fpext float %373 to double
  %375 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %366, double %372, double %374)
  br label %376

376:                                              ; preds = %361, %354
  %377 = load float, float* %9, align 4
  %378 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %380, i32 0, i32 4
  store float %377, float* %381, align 8
  br label %382

382:                                              ; preds = %376, %332
  br label %383

383:                                              ; preds = %382, %331
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %386, i32 0, i32 5
  %388 = load float, float* %387, align 4
  %389 = load float, float* @HB_INVALID_AUDIO_QUALITY, align 4
  %390 = fcmp une float %388, %389
  br i1 %390, label %391, label %443

391:                                              ; preds = %383
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %399, i32 0, i32 5
  %401 = load float, float* %400, align 4
  %402 = call float @hb_audio_quality_get_best(i32 %396, float %401)
  store float %402, float* %10, align 4
  %403 = load float, float* %10, align 4
  %404 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %406, i32 0, i32 5
  %408 = load float, float* %407, align 4
  %409 = fcmp une float %403, %408
  br i1 %409, label %410, label %442

410:                                              ; preds = %391
  %411 = load float, float* %10, align 4
  %412 = load float, float* @HB_INVALID_AUDIO_QUALITY, align 4
  %413 = fcmp oeq float %411, %412
  br i1 %413, label %414, label %421

414:                                              ; preds = %410
  %415 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %419)
  br label %436

421:                                              ; preds = %410
  %422 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %429, i32 0, i32 5
  %431 = load float, float* %430, align 4
  %432 = fpext float %431 to double
  %433 = load float, float* %10, align 4
  %434 = fpext float %433 to double
  %435 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %426, double %432, double %434)
  br label %436

436:                                              ; preds = %421, %414
  %437 = load float, float* %10, align 4
  %438 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %440, i32 0, i32 5
  store float %437, float* %441, align 4
  br label %442

442:                                              ; preds = %436, %391
  br label %443

443:                                              ; preds = %442, %383
  %444 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %446, i32 0, i32 5
  %448 = load float, float* %447, align 4
  %449 = load float, float* @HB_INVALID_AUDIO_QUALITY, align 4
  %450 = fcmp oeq float %448, %449
  br i1 %450, label %451, label %550

451:                                              ; preds = %443
  %452 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %454, i32 0, i32 6
  %456 = load i32, i32* %455, align 8
  %457 = icmp sle i32 %456, 0
  br i1 %457, label %458, label %498

458:                                              ; preds = %451
  %459 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 8
  %469 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %471, i32 0, i32 3
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @hb_audio_bitrate_get_default(i32 %463, i32 %468, i32 %473)
  %475 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %477, i32 0, i32 6
  store i32 %474, i32* %478, align 8
  %479 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %480 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %481, i32 0, i32 6
  %483 = load i32, i32* %482, align 8
  %484 = icmp sgt i32 %483, 0
  br i1 %484, label %485, label %497

485:                                              ; preds = %458
  %486 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %493, i32 0, i32 6
  %495 = load i32, i32* %494, align 8
  %496 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i32 %490, i32 %495)
  br label %497

497:                                              ; preds = %485, %458
  br label %549

498:                                              ; preds = %451
  %499 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %500 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %505 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %506, i32 0, i32 6
  %508 = load i32, i32* %507, align 8
  %509 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %510 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %515 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %516, i32 0, i32 3
  %518 = load i32, i32* %517, align 4
  %519 = call i32 @hb_audio_bitrate_get_best(i32 %503, i32 %508, i32 %513, i32 %518)
  store i32 %519, i32* %7, align 4
  %520 = load i32, i32* %7, align 4
  %521 = icmp sgt i32 %520, 0
  br i1 %521, label %522, label %543

522:                                              ; preds = %498
  %523 = load i32, i32* %7, align 4
  %524 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %525 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %526, i32 0, i32 6
  %528 = load i32, i32* %527, align 8
  %529 = icmp ne i32 %523, %528
  br i1 %529, label %530, label %543

530:                                              ; preds = %522
  %531 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %532 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 4
  %536 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %538, i32 0, i32 6
  %540 = load i32, i32* %539, align 8
  %541 = load i32, i32* %7, align 4
  %542 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i32 %535, i32 %540, i32 %541)
  br label %543

543:                                              ; preds = %530, %522, %498
  %544 = load i32, i32* %7, align 4
  %545 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %546 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %547, i32 0, i32 6
  store i32 %544, i32* %548, align 8
  br label %549

549:                                              ; preds = %543, %497
  br label %550

550:                                              ; preds = %549, %443
  %551 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %552 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = call i64 @hb_audio_dither_is_supported(i32 %555)
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %573

558:                                              ; preds = %550
  %559 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %560 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %561, i32 0, i32 7
  %563 = load i64, i64* %562, align 8
  %564 = call i64 (...) @hb_audio_dither_get_default()
  %565 = icmp eq i64 %563, %564
  br i1 %565, label %566, label %572

566:                                              ; preds = %558
  %567 = call i64 (...) @hb_audio_dither_get_default_method()
  %568 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %569 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %569, i32 0, i32 0
  %571 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %570, i32 0, i32 7
  store i64 %567, i64* %571, align 8
  br label %572

572:                                              ; preds = %566, %558
  br label %589

573:                                              ; preds = %550
  %574 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %576, i32 0, i32 7
  %578 = load i64, i64* %577, align 8
  %579 = call i64 (...) @hb_audio_dither_get_default()
  %580 = icmp ne i64 %578, %579
  br i1 %580, label %581, label %588

581:                                              ; preds = %573
  %582 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %583 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %584, i32 0, i32 1
  %586 = load i32, i32* %585, align 4
  %587 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 %586)
  br label %588

588:                                              ; preds = %581, %573
  br label %589

589:                                              ; preds = %588, %572
  br label %590

590:                                              ; preds = %589, %120
  %591 = load i32, i32* %4, align 4
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* %4, align 4
  br label %99

593:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %594

594:                                              ; preds = %593, %15
  %595 = load i32, i32* %2, align 4
  ret i32 %595
}

declare dso_local i32 @hb_autopassthru_apply_settings(%struct.TYPE_22__*) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_23__* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_log(i8*, i32, ...) #1

declare dso_local i32 @hb_list_rem(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @free(%struct.TYPE_23__*) #1

declare dso_local i32 @hb_audio_samplerate_find_closest(i32, i32) #1

declare dso_local i32 @hb_audio_samplerate_get_name(i32) #1

declare dso_local i32 @hb_mixdown_get_default(i32, i32) #1

declare dso_local i32 @hb_mixdown_get_name(i32) #1

declare dso_local i32 @hb_mixdown_get_best(i32, i32, i32) #1

declare dso_local float @hb_audio_compression_get_default(i32) #1

declare dso_local float @hb_audio_compression_get_best(i32, float) #1

declare dso_local float @hb_audio_quality_get_best(i32, float) #1

declare dso_local i32 @hb_audio_bitrate_get_default(i32, i32, i32) #1

declare dso_local i32 @hb_audio_bitrate_get_best(i32, i32, i32, i32) #1

declare dso_local i64 @hb_audio_dither_is_supported(i32) #1

declare dso_local i64 @hb_audio_dither_get_default(...) #1

declare dso_local i64 @hb_audio_dither_get_default_method(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
