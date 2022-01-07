; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_InitAudio.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_InitAudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_19__* }
%struct.TYPE_25__ = type { i32, i32*, i32*, %struct.TYPE_24__, i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8*, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i32*, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_23__, i32, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__*, i32, %struct.TYPE_26__*, i32*, %struct.TYPE_18__*, %struct.TYPE_27__* }

@WORK_SYNC_AUDIO = common dso_local global i32 0, align 4
@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@SYNC_MAX_AUDIO_QUEUE_LEN = common dso_local global i32 0, align 4
@SYNC_MIN_AUDIO_QUEUE_LEN = common dso_local global i32 0, align 4
@SYNC_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_FLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sync: audio 0x%x resample init failed\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"sync: audio 0x%x resample update failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i32)* @InitAudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitAudio(%struct.TYPE_26__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  %9 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_18__* @hb_list_item(i32 %13, i32 %14)
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %8, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %322

22:                                               ; preds = %2
  %23 = call %struct.TYPE_27__* @calloc(i32 1, i32 48)
  store %struct.TYPE_27__* %23, %struct.TYPE_27__** %7, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %25 = icmp eq %struct.TYPE_27__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %281

27:                                               ; preds = %22
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WORK_SYNC_AUDIO, align 4
  %34 = call %struct.TYPE_27__* @hb_get_work(i32 %32, i32 %33)
  store %struct.TYPE_27__* %34, %struct.TYPE_27__** %6, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 5
  store %struct.TYPE_27__* %35, %struct.TYPE_27__** %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 4
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %40, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %27
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %69

62:                                               ; preds = %27
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %62, %55
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 2
  store %struct.TYPE_26__* %70, %struct.TYPE_26__** %72, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 1, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i64 %78
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  store %struct.TYPE_25__* %79, %struct.TYPE_25__** %81, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 14
  store %struct.TYPE_26__* %82, %struct.TYPE_26__** %86, align 8
  %87 = call i8* (...) @hb_list_init()
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  store i32* %88, i32** %92, align 8
  %93 = call i8* (...) @hb_list_init()
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 13
  store i8* %93, i8** %97, align 8
  %98 = load i32, i32* @SYNC_MAX_AUDIO_QUEUE_LEN, align 4
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 12
  store i32 %98, i32* %102, align 8
  %103 = load i32, i32* @SYNC_MIN_AUDIO_QUEUE_LEN, align 4
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 11
  store i32 %103, i32* %107, align 4
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %69
  br label %281

115:                                              ; preds = %69
  %116 = call i8* (...) @hb_list_init()
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 2
  store i32* %117, i32** %121, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  br label %281

129:                                              ; preds = %115
  %130 = load i32, i32* @SYNC_TYPE_AUDIO, align 4
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 10
  store i32 %130, i32* %134, align 8
  %135 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 9
  store i64 %135, i64* %139, align 8
  %140 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 8
  store i8* %141, i8** %145, align 8
  %146 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %147 = inttoptr i64 %146 to i8*
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 7
  store i8* %147, i8** %151, align 8
  %152 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 6
  store i8* %153, i8** %157, align 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 0
  store i32 -1, i32* %161, align 8
  %162 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %163 = inttoptr i64 %162 to i8*
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 5
  store i8* %163, i8** %167, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 2
  store %struct.TYPE_18__* %168, %struct.TYPE_18__** %173, align 8
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 4
  store i32 %176, i32* %180, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %263, label %189

189:                                              ; preds = %129
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %194, %199
  br i1 %200, label %201, label %263

201:                                              ; preds = %189
  %202 = load i32, i32* @AV_SAMPLE_FMT_FLT, align 4
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i32* @hb_audio_resample_init(i32 %202, i64 %207, i32 %212, i32 %217)
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  store i32* %218, i32** %223, align 8
  %224 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = icmp eq i32* %229, null
  br i1 %230, label %231, label %236

231:                                              ; preds = %201
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @hb_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %234)
  br label %281

236:                                              ; preds = %201
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @hb_audio_resample_set_sample_rate(i32* %242, i64 %247)
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = call i64 @hb_audio_resample_update(i32* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %236
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @hb_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %260)
  br label %281

262:                                              ; preds = %236
  br label %263

263:                                              ; preds = %262, %189, %129
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = sdiv i32 %268, 20
  %270 = call i32 @pow(i32 10, i32 %269)
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 1
  store i32 %270, i32* %275, align 8
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %280 = call i32 @hb_list_add(i32 %278, %struct.TYPE_27__* %279)
  store i32 0, i32* %3, align 4
  br label %322

281:                                              ; preds = %257, %231, %128, %114, %26
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %283 = icmp ne %struct.TYPE_27__* %282, null
  br i1 %283, label %284, label %317

284:                                              ; preds = %281
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %286, align 8
  %288 = icmp ne %struct.TYPE_25__* %287, null
  br i1 %288, label %289, label %316

289:                                              ; preds = %284
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %297, label %305

297:                                              ; preds = %289
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = call i32 @hb_audio_resample_free(i32* %303)
  br label %305

305:                                              ; preds = %297, %289
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 2
  %310 = call i32 @hb_list_close(i32** %309)
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 1
  %315 = call i32 @hb_list_close(i32** %314)
  br label %316

316:                                              ; preds = %305, %284
  br label %317

317:                                              ; preds = %316, %281
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %319 = call i32 @free(%struct.TYPE_27__* %318)
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %321 = call i32 @free(%struct.TYPE_27__* %320)
  store i32 1, i32* %3, align 4
  br label %322

322:                                              ; preds = %317, %263, %21
  %323 = load i32, i32* %3, align 4
  ret i32 %323
}

declare dso_local %struct.TYPE_18__* @hb_list_item(i32, i32) #1

declare dso_local %struct.TYPE_27__* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_27__* @hb_get_work(i32, i32) #1

declare dso_local i8* @hb_list_init(...) #1

declare dso_local i32* @hb_audio_resample_init(i32, i64, i32, i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

declare dso_local i32 @hb_audio_resample_set_sample_rate(i32*, i64) #1

declare dso_local i64 @hb_audio_resample_update(i32*) #1

declare dso_local i32 @pow(i32, i32) #1

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @hb_audio_resample_free(i32*) #1

declare dso_local i32 @hb_list_close(i32**) #1

declare dso_local i32 @free(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
