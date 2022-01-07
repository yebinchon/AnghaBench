; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_sndopensl.c_SNDOpenSLInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_sndopensl.c_SNDOpenSLInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { i64 (%struct.TYPE_41__**, i32)*, i64 (%struct.TYPE_41__**, i32, %struct.TYPE_39__***)* }
%struct.TYPE_39__ = type { i64 (%struct.TYPE_39__**, %struct.TYPE_40__***, i32, i32*, i32*)*, i64 (%struct.TYPE_39__**, %struct.TYPE_48__***, %struct.TYPE_42__*, %struct.TYPE_43__*, i32, i32*, i32*)* }
%struct.TYPE_40__ = type { i64 (%struct.TYPE_40__**, i32)* }
%struct.TYPE_48__ = type { i64 (%struct.TYPE_48__**, i32)*, i64 (%struct.TYPE_48__**, i32, %struct.TYPE_47__***)* }
%struct.TYPE_47__ = type { i64 (%struct.TYPE_47__**, i32, i32*)*, i64 (%struct.TYPE_47__**, i32)* }
%struct.TYPE_42__ = type { %struct.TYPE_46__*, %struct.TYPE_45__* }
%struct.TYPE_46__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_45__ = type { i32, i32 }
%struct.TYPE_43__ = type { i32*, %struct.TYPE_44__* }
%struct.TYPE_44__ = type { %struct.TYPE_40__**, i32 }

@SL_DATALOCATOR_ANDROIDSIMPLEBUFFERQUEUE = common dso_local global i32 0, align 4
@SL_DATAFORMAT_PCM = common dso_local global i32 0, align 4
@SL_SAMPLINGRATE_44_1 = common dso_local global i32 0, align 4
@SL_PCMSAMPLEFORMAT_FIXED_16 = common dso_local global i32 0, align 4
@SL_SPEAKER_FRONT_LEFT = common dso_local global i32 0, align 4
@SL_SPEAKER_FRONT_RIGHT = common dso_local global i32 0, align 4
@SL_BYTEORDER_LITTLEENDIAN = common dso_local global i32 0, align 4
@engineObject = common dso_local global %struct.TYPE_41__** null, align 8
@SL_RESULT_SUCCESS = common dso_local global i64 0, align 8
@SL_BOOLEAN_FALSE = common dso_local global i32 0, align 4
@SL_IID_ENGINE = common dso_local global i32 0, align 4
@engineEngine = common dso_local global %struct.TYPE_39__** null, align 8
@SL_IID_ENVIRONMENTALREVERB = common dso_local global i32 0, align 4
@outputMixObject = common dso_local global %struct.TYPE_40__** null, align 8
@SL_DATALOCATOR_OUTPUTMIX = common dso_local global i32 0, align 4
@SL_IID_BUFFERQUEUE = common dso_local global i32 0, align 4
@SL_IID_EFFECTSEND = common dso_local global i32 0, align 4
@SL_IID_VOLUME = common dso_local global i32 0, align 4
@SL_BOOLEAN_TRUE = common dso_local global i32 0, align 4
@bqPlayerObject = common dso_local global %struct.TYPE_48__** null, align 8
@SL_IID_PLAY = common dso_local global i32 0, align 4
@bqPlayerPlay = common dso_local global %struct.TYPE_47__** null, align 8
@bqPlayerBufferQueue = common dso_local global %struct.TYPE_47__** null, align 8
@bqPlayerCallback = common dso_local global i32 0, align 4
@bqPlayerEffectSend = common dso_local global %struct.TYPE_47__** null, align 8
@bqPlayerVolume = common dso_local global %struct.TYPE_47__** null, align 8
@SL_PLAYSTATE_PLAYING = common dso_local global i32 0, align 4
@muted = common dso_local global i64 0, align 8
@SL_IID_MUTESOLO = common dso_local global i32 0, align 4
@bqPlayerMuteSolo = common dso_local global %struct.TYPE_47__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @SNDOpenSLInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SNDOpenSLInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_45__, align 4
  %3 = alloca %struct.TYPE_46__, align 4
  %4 = alloca %struct.TYPE_42__, align 8
  %5 = alloca i64, align 8
  %6 = alloca [1 x i32], align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca %struct.TYPE_44__, align 8
  %9 = alloca %struct.TYPE_43__, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca [3 x i32], align 4
  %12 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %2, i32 0, i32 0
  %13 = load i32, i32* @SL_DATALOCATOR_ANDROIDSIMPLEBUFFERQUEUE, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %2, i32 0, i32 1
  store i32 2, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %3, i32 0, i32 0
  %16 = load i32, i32* @SL_DATAFORMAT_PCM, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %3, i32 0, i32 1
  store i32 2, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %3, i32 0, i32 2
  %19 = load i32, i32* @SL_SAMPLINGRATE_44_1, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %3, i32 0, i32 3
  %21 = load i32, i32* @SL_PCMSAMPLEFORMAT_FIXED_16, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %3, i32 0, i32 4
  %23 = load i32, i32* @SL_PCMSAMPLEFORMAT_FIXED_16, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %3, i32 0, i32 5
  %25 = load i32, i32* @SL_SPEAKER_FRONT_LEFT, align 4
  %26 = load i32, i32* @SL_SPEAKER_FRONT_RIGHT, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %3, i32 0, i32 6
  %29 = load i32, i32* @SL_BYTEORDER_LITTLEENDIAN, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 0
  %31 = bitcast %struct.TYPE_45__* %2 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %31, %struct.TYPE_46__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 1
  %33 = bitcast %struct.TYPE_46__* %3 to %struct.TYPE_45__*
  store %struct.TYPE_45__* %33, %struct.TYPE_45__** %32, align 8
  %34 = call i64 @slCreateEngine(%struct.TYPE_41__*** @engineObject, i32 0, i32* null, i32 0, i32* null, i32* null)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_41__**, %struct.TYPE_41__*** @engineObject, align 8
  %41 = load %struct.TYPE_41__*, %struct.TYPE_41__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %41, i32 0, i32 0
  %43 = load i64 (%struct.TYPE_41__**, i32)*, i64 (%struct.TYPE_41__**, i32)** %42, align 8
  %44 = load %struct.TYPE_41__**, %struct.TYPE_41__*** @engineObject, align 8
  %45 = load i32, i32* @SL_BOOLEAN_FALSE, align 4
  %46 = call i64 %43(%struct.TYPE_41__** %44, i32 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_41__**, %struct.TYPE_41__*** @engineObject, align 8
  %53 = load %struct.TYPE_41__*, %struct.TYPE_41__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %53, i32 0, i32 1
  %55 = load i64 (%struct.TYPE_41__**, i32, %struct.TYPE_39__***)*, i64 (%struct.TYPE_41__**, i32, %struct.TYPE_39__***)** %54, align 8
  %56 = load %struct.TYPE_41__**, %struct.TYPE_41__*** @engineObject, align 8
  %57 = load i32, i32* @SL_IID_ENGINE, align 4
  %58 = call i64 %55(%struct.TYPE_41__** %56, i32 %57, %struct.TYPE_39__*** @engineEngine)
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %65 = load i32, i32* @SL_IID_ENVIRONMENTALREVERB, align 4
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %67 = load i32, i32* @SL_BOOLEAN_FALSE, align 4
  store i32 %67, i32* %66, align 4
  %68 = load %struct.TYPE_39__**, %struct.TYPE_39__*** @engineEngine, align 8
  %69 = load %struct.TYPE_39__*, %struct.TYPE_39__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %69, i32 0, i32 0
  %71 = load i64 (%struct.TYPE_39__**, %struct.TYPE_40__***, i32, i32*, i32*)*, i64 (%struct.TYPE_39__**, %struct.TYPE_40__***, i32, i32*, i32*)** %70, align 8
  %72 = load %struct.TYPE_39__**, %struct.TYPE_39__*** @engineEngine, align 8
  %73 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %74 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %75 = call i64 %71(%struct.TYPE_39__** %72, %struct.TYPE_40__*** @outputMixObject, i32 1, i32* %73, i32* %74)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_40__**, %struct.TYPE_40__*** @outputMixObject, align 8
  %82 = load %struct.TYPE_40__*, %struct.TYPE_40__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %82, i32 0, i32 0
  %84 = load i64 (%struct.TYPE_40__**, i32)*, i64 (%struct.TYPE_40__**, i32)** %83, align 8
  %85 = load %struct.TYPE_40__**, %struct.TYPE_40__*** @outputMixObject, align 8
  %86 = load i32, i32* @SL_BOOLEAN_FALSE, align 4
  %87 = call i64 %84(%struct.TYPE_40__** %85, i32 %86)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %89 = load i64, i64* %5, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %8, i32 0, i32 0
  %94 = load i32, i32* @SL_DATALOCATOR_OUTPUTMIX, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to %struct.TYPE_40__**
  store %struct.TYPE_40__** %96, %struct.TYPE_40__*** %93, align 8
  %97 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %8, i32 0, i32 1
  %98 = load %struct.TYPE_40__**, %struct.TYPE_40__*** @outputMixObject, align 8
  %99 = ptrtoint %struct.TYPE_40__** %98 to i32
  store i32 %99, i32* %97, align 8
  %100 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %9, i32 0, i32 0
  %101 = bitcast %struct.TYPE_44__* %8 to i32*
  store i32* %101, i32** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %9, i32 0, i32 1
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %102, align 8
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %104 = load i32, i32* @SL_IID_BUFFERQUEUE, align 4
  store i32 %104, i32* %103, align 4
  %105 = getelementptr inbounds i32, i32* %103, i64 1
  %106 = load i32, i32* @SL_IID_EFFECTSEND, align 4
  store i32 %106, i32* %105, align 4
  %107 = getelementptr inbounds i32, i32* %105, i64 1
  %108 = load i32, i32* @SL_IID_VOLUME, align 4
  store i32 %108, i32* %107, align 4
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %110 = load i32, i32* @SL_BOOLEAN_TRUE, align 4
  store i32 %110, i32* %109, align 4
  %111 = getelementptr inbounds i32, i32* %109, i64 1
  %112 = load i32, i32* @SL_BOOLEAN_TRUE, align 4
  store i32 %112, i32* %111, align 4
  %113 = getelementptr inbounds i32, i32* %111, i64 1
  %114 = load i32, i32* @SL_BOOLEAN_TRUE, align 4
  store i32 %114, i32* %113, align 4
  %115 = load %struct.TYPE_39__**, %struct.TYPE_39__*** @engineEngine, align 8
  %116 = load %struct.TYPE_39__*, %struct.TYPE_39__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %116, i32 0, i32 1
  %118 = load i64 (%struct.TYPE_39__**, %struct.TYPE_48__***, %struct.TYPE_42__*, %struct.TYPE_43__*, i32, i32*, i32*)*, i64 (%struct.TYPE_39__**, %struct.TYPE_48__***, %struct.TYPE_42__*, %struct.TYPE_43__*, i32, i32*, i32*)** %117, align 8
  %119 = load %struct.TYPE_39__**, %struct.TYPE_39__*** @engineEngine, align 8
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %122 = call i64 %118(%struct.TYPE_39__** %119, %struct.TYPE_48__*** @bqPlayerObject, %struct.TYPE_42__* %4, %struct.TYPE_43__* %9, i32 3, i32* %120, i32* %121)
  store i64 %122, i64* %5, align 8
  %123 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %124 = load i64, i64* %5, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load %struct.TYPE_48__**, %struct.TYPE_48__*** @bqPlayerObject, align 8
  %129 = load %struct.TYPE_48__*, %struct.TYPE_48__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %129, i32 0, i32 0
  %131 = load i64 (%struct.TYPE_48__**, i32)*, i64 (%struct.TYPE_48__**, i32)** %130, align 8
  %132 = load %struct.TYPE_48__**, %struct.TYPE_48__*** @bqPlayerObject, align 8
  %133 = load i32, i32* @SL_BOOLEAN_FALSE, align 4
  %134 = call i64 %131(%struct.TYPE_48__** %132, i32 %133)
  store i64 %134, i64* %5, align 8
  %135 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %136 = load i64, i64* %5, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load %struct.TYPE_48__**, %struct.TYPE_48__*** @bqPlayerObject, align 8
  %141 = load %struct.TYPE_48__*, %struct.TYPE_48__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %141, i32 0, i32 1
  %143 = load i64 (%struct.TYPE_48__**, i32, %struct.TYPE_47__***)*, i64 (%struct.TYPE_48__**, i32, %struct.TYPE_47__***)** %142, align 8
  %144 = load %struct.TYPE_48__**, %struct.TYPE_48__*** @bqPlayerObject, align 8
  %145 = load i32, i32* @SL_IID_PLAY, align 4
  %146 = call i64 %143(%struct.TYPE_48__** %144, i32 %145, %struct.TYPE_47__*** @bqPlayerPlay)
  store i64 %146, i64* %5, align 8
  %147 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %148 = load i64, i64* %5, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load %struct.TYPE_48__**, %struct.TYPE_48__*** @bqPlayerObject, align 8
  %153 = load %struct.TYPE_48__*, %struct.TYPE_48__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %153, i32 0, i32 1
  %155 = load i64 (%struct.TYPE_48__**, i32, %struct.TYPE_47__***)*, i64 (%struct.TYPE_48__**, i32, %struct.TYPE_47__***)** %154, align 8
  %156 = load %struct.TYPE_48__**, %struct.TYPE_48__*** @bqPlayerObject, align 8
  %157 = load i32, i32* @SL_IID_BUFFERQUEUE, align 4
  %158 = call i64 %155(%struct.TYPE_48__** %156, i32 %157, %struct.TYPE_47__*** @bqPlayerBufferQueue)
  store i64 %158, i64* %5, align 8
  %159 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %160 = load i64, i64* %5, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load %struct.TYPE_47__**, %struct.TYPE_47__*** @bqPlayerBufferQueue, align 8
  %165 = load %struct.TYPE_47__*, %struct.TYPE_47__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %165, i32 0, i32 0
  %167 = load i64 (%struct.TYPE_47__**, i32, i32*)*, i64 (%struct.TYPE_47__**, i32, i32*)** %166, align 8
  %168 = load %struct.TYPE_47__**, %struct.TYPE_47__*** @bqPlayerBufferQueue, align 8
  %169 = load i32, i32* @bqPlayerCallback, align 4
  %170 = call i64 %167(%struct.TYPE_47__** %168, i32 %169, i32* null)
  store i64 %170, i64* %5, align 8
  %171 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %172 = load i64, i64* %5, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load %struct.TYPE_48__**, %struct.TYPE_48__*** @bqPlayerObject, align 8
  %177 = load %struct.TYPE_48__*, %struct.TYPE_48__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %177, i32 0, i32 1
  %179 = load i64 (%struct.TYPE_48__**, i32, %struct.TYPE_47__***)*, i64 (%struct.TYPE_48__**, i32, %struct.TYPE_47__***)** %178, align 8
  %180 = load %struct.TYPE_48__**, %struct.TYPE_48__*** @bqPlayerObject, align 8
  %181 = load i32, i32* @SL_IID_EFFECTSEND, align 4
  %182 = call i64 %179(%struct.TYPE_48__** %180, i32 %181, %struct.TYPE_47__*** @bqPlayerEffectSend)
  store i64 %182, i64* %5, align 8
  %183 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %184 = load i64, i64* %5, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load %struct.TYPE_48__**, %struct.TYPE_48__*** @bqPlayerObject, align 8
  %189 = load %struct.TYPE_48__*, %struct.TYPE_48__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %189, i32 0, i32 1
  %191 = load i64 (%struct.TYPE_48__**, i32, %struct.TYPE_47__***)*, i64 (%struct.TYPE_48__**, i32, %struct.TYPE_47__***)** %190, align 8
  %192 = load %struct.TYPE_48__**, %struct.TYPE_48__*** @bqPlayerObject, align 8
  %193 = load i32, i32* @SL_IID_VOLUME, align 4
  %194 = call i64 %191(%struct.TYPE_48__** %192, i32 %193, %struct.TYPE_47__*** @bqPlayerVolume)
  store i64 %194, i64* %5, align 8
  %195 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %196 = load i64, i64* %5, align 8
  %197 = icmp eq i64 %195, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  %200 = call i32 (...) @InitSoundBuff()
  %201 = load %struct.TYPE_47__**, %struct.TYPE_47__*** @bqPlayerPlay, align 8
  %202 = load %struct.TYPE_47__*, %struct.TYPE_47__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %202, i32 0, i32 1
  %204 = load i64 (%struct.TYPE_47__**, i32)*, i64 (%struct.TYPE_47__**, i32)** %203, align 8
  %205 = load %struct.TYPE_47__**, %struct.TYPE_47__*** @bqPlayerPlay, align 8
  %206 = load i32, i32* @SL_PLAYSTATE_PLAYING, align 4
  %207 = call i64 %204(%struct.TYPE_47__** %205, i32 %206)
  store i64 %207, i64* %5, align 8
  %208 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %209 = load i64, i64* %5, align 8
  %210 = icmp eq i64 %208, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  store i64 0, i64* @muted, align 8
  ret i32 0
}

declare dso_local i64 @slCreateEngine(%struct.TYPE_41__***, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @InitSoundBuff(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
