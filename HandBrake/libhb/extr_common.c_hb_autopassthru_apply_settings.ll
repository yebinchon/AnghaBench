; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_autopassthru_apply_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_autopassthru_apply_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@HB_ACODEC_AUTO_PASS = common dso_local global i32 0, align 4
@HB_ACODEC_NONE = common dso_local global i32 0, align 4
@HB_ACODEC_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"Auto Passthru: passthru not possible and no valid fallback specified, dropping track %d\00", align 1
@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Auto Passthru: passthru not possible for track %d, using fallback\00", align 1
@HB_INVALID_AUDIO_QUALITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Auto Passthru: using %s for track %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_autopassthru_apply_settings(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %327, %69, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hb_list_count(i32 %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %334

15:                                               ; preds = %8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.TYPE_19__* @hb_list_item(i32 %18, i32 %19)
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %3, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HB_ACODEC_AUTO_PASS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %327

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %33 = call i32 @hb_autopassthru_print_settings(%struct.TYPE_17__* %32)
  br label %34

34:                                               ; preds = %31, %28
  store i32 1, i32* %5, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @hb_autopassthru_get_encoder(i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HB_ACODEC_NONE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %34
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @HB_ACODEC_INVALID, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %61, %34
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %80 = call i32 @hb_list_rem(i32 %78, %struct.TYPE_19__* %79)
  %81 = call i32 @hb_audio_close(%struct.TYPE_19__** %3)
  br label %8

82:                                               ; preds = %61
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %299, label %91

91:                                               ; preds = %82
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp sle i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %91
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @hb_mixdown_get_default(i32 %109, i32 %114)
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  store i64 %115, i64* %119, align 8
  br label %141

120:                                              ; preds = %91
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @hb_mixdown_get_best(i32 %125, i32 %130, i64 %135)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  store i64 %136, i64* %140, align 8
  br label %141

141:                                              ; preds = %120, %104
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp sle i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %141
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 3
  store i64 %153, i64* %157, align 8
  br label %158

158:                                              ; preds = %148, %141
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @hb_audio_samplerate_find_closest(i64 %163, i32 %168)
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 3
  store i64 %169, i64* %173, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @hb_audio_quality_get_default(i32 %178)
  %180 = load i64, i64* @HB_INVALID_AUDIO_QUALITY, align 8
  %181 = icmp eq i64 %179, %180
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %6, align 4
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %215

189:                                              ; preds = %158
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = call i64 @hb_audio_bitrate_get_best(i32 %194, i64 %199, i64 %204, i64 %209)
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 4
  store i64 %210, i64* %214, align 8
  br label %264

215:                                              ; preds = %158
  %216 = load i32, i32* %6, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %226, label %218

218:                                              ; preds = %215
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @HB_INVALID_AUDIO_QUALITY, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %247

226:                                              ; preds = %218, %215
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = call i64 @hb_audio_bitrate_get_default(i32 %231, i64 %236, i64 %241)
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 4
  store i64 %242, i64* %246, align 8
  br label %263

247:                                              ; preds = %218
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = call i64 @hb_audio_quality_get_best(i32 %252, i64 %257)
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 5
  store i64 %258, i64* %262, align 8
  br label %263

263:                                              ; preds = %247, %226
  br label %264

264:                                              ; preds = %263, %189
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 6
  %269 = load i64, i64* %268, align 8
  %270 = icmp slt i64 %269, 0
  br i1 %270, label %271, label %282

271:                                              ; preds = %264
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i64 @hb_audio_compression_get_default(i32 %276)
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 6
  store i64 %277, i64* %281, align 8
  br label %298

282:                                              ; preds = %264
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 6
  %292 = load i64, i64* %291, align 8
  %293 = call i64 @hb_audio_compression_get_best(i32 %287, i64 %292)
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 6
  store i64 %293, i64* %297, align 8
  br label %298

298:                                              ; preds = %282, %271
  br label %326

299:                                              ; preds = %82
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  br label %300

300:                                              ; preds = %324, %299
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %302 = call %struct.TYPE_18__* @hb_audio_encoder_get_next(%struct.TYPE_18__* %301)
  store %struct.TYPE_18__* %302, %struct.TYPE_18__** %7, align 8
  %303 = icmp ne %struct.TYPE_18__* %302, null
  br i1 %303, label %304, label %325

304:                                              ; preds = %300
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp eq i32 %307, %312
  br i1 %313, label %314, label %324

314:                                              ; preds = %304
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = call i32 (i8*, i32, ...) @hb_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %317, i32 %322)
  br label %325

324:                                              ; preds = %304
  br label %300

325:                                              ; preds = %314, %300
  br label %326

326:                                              ; preds = %325, %298
  br label %327

327:                                              ; preds = %326, %15
  %328 = load i32, i32* %4, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %4, align 4
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 1
  store i32 %329, i32* %333, align 4
  br label %8

334:                                              ; preds = %8
  ret void
}

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_19__* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_autopassthru_print_settings(%struct.TYPE_17__*) #1

declare dso_local i32 @hb_autopassthru_get_encoder(i32, i32, i32, i32) #1

declare dso_local i32 @hb_log(i8*, i32, ...) #1

declare dso_local i32 @hb_list_rem(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @hb_audio_close(%struct.TYPE_19__**) #1

declare dso_local i64 @hb_mixdown_get_default(i32, i32) #1

declare dso_local i64 @hb_mixdown_get_best(i32, i32, i64) #1

declare dso_local i64 @hb_audio_samplerate_find_closest(i64, i32) #1

declare dso_local i64 @hb_audio_quality_get_default(i32) #1

declare dso_local i64 @hb_audio_bitrate_get_best(i32, i64, i64, i64) #1

declare dso_local i64 @hb_audio_bitrate_get_default(i32, i64, i64) #1

declare dso_local i64 @hb_audio_quality_get_best(i32, i64) #1

declare dso_local i64 @hb_audio_compression_get_default(i32) #1

declare dso_local i64 @hb_audio_compression_get_best(i32, i64) #1

declare dso_local %struct.TYPE_18__* @hb_audio_encoder_get_next(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
