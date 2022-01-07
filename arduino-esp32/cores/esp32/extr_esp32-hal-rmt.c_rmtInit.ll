; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-rmt.c_rmtInit.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-rmt.c_rmtInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }

@g_rmt_block_lock = common dso_local global i8* null, align 8
@portMAX_DELAY = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@MAX_CHANNELS = common dso_local global i64 0, align 8
@g_rmt_objects = common dso_local global %struct.TYPE_15__* null, align 8
@g_rmt_objlocks = common dso_local global i32** null, align 8
@RMT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@intr_handle = common dso_local global i32 0, align 4
@ETS_RMT_INTR_SOURCE = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_IRAM = common dso_local global i64 0, align 8
@_rmt_isr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @rmtInit(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** @g_rmt_block_lock, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i8* (...) @xSemaphoreCreateMutex()
  store i8* %17, i8** @g_rmt_block_lock, align 8
  br label %18

18:                                               ; preds = %16, %3
  br label %19

19:                                               ; preds = %25, %18
  %20 = load i8*, i8** @g_rmt_block_lock, align 8
  %21 = load i32, i32* @portMAX_DELAY, align 4
  %22 = call i64 @xSemaphoreTake(i8* %20, i32 %21)
  %23 = load i64, i64* @pdPASS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %19

26:                                               ; preds = %19
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %69, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @MAX_CHANNELS, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %27
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %59, %31
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* @MAX_CHANNELS, align 8
  %42 = icmp ult i64 %40, %41
  br label %43

43:                                               ; preds = %37, %32
  %44 = phi i1 [ false, %32 ], [ %42, %37 ]
  br i1 %44, label %45, label %62

45:                                               ; preds = %43
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_rmt_objects, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %47, %48
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  br label %62

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %11, align 8
  br label %32

62:                                               ; preds = %54, %43
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %72

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %27

72:                                               ; preds = %67, %27
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @MAX_CHANNELS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %87, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %77, %78
  %80 = load i64, i64* @MAX_CHANNELS, align 8
  %81 = icmp uge i64 %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = load i64, i64* %11, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ne i64 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82, %76, %72
  %88 = load i8*, i8** @g_rmt_block_lock, align 8
  %89 = call i32 @xSemaphoreGive(i8* %88)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %243

90:                                               ; preds = %82
  %91 = load i32, i32* %5, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call %struct.TYPE_14__* @_rmtAllocate(i32 %91, i64 %92, i32 %93)
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %9, align 8
  %95 = load i8*, i8** @g_rmt_block_lock, align 8
  %96 = call i32 @xSemaphoreGive(i8* %95)
  %97 = load i64, i64* %10, align 8
  store i64 %97, i64* %12, align 8
  %98 = load i32**, i32*** @g_rmt_objlocks, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds i32*, i32** %98, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %116

103:                                              ; preds = %90
  %104 = call i8* (...) @xSemaphoreCreateMutex()
  %105 = bitcast i8* %104 to i32*
  %106 = load i32**, i32*** @g_rmt_objlocks, align 8
  %107 = load i64, i64* %12, align 8
  %108 = getelementptr inbounds i32*, i32** %106, i64 %107
  store i32* %105, i32** %108, align 8
  %109 = load i32**, i32*** @g_rmt_objlocks, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds i32*, i32** %109, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %243

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %90
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @RMT_MUTEX_LOCK(i64 %117)
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i64, i64* %12, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load i64, i64* %12, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @_initPin(i32 %131, i64 %132, i32 %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %136 = load i64, i64* %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  store i32 %140, i32* %145, align 4
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %147 = load i64, i64* %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 5
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %152 = load i64, i64* %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 4
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %157 = load i64, i64* %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 3
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %162 = load i64, i64* %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  store i32 128, i32* %165, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %167 = load i64, i64* %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 10
  store i64 0, i64* %170, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %172 = load i64, i64* %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 9
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %177 = load i64, i64* %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 8
  store i64 0, i64* %180, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %182 = load i64, i64* %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 7
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %187 = load i64, i64* %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 6
  store i64 0, i64* %190, align 8
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %192 = load i64, i64* %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 5
  store i64 0, i64* %195, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %197 = load i64, i64* %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %202 = load i64, i64* %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 4
  store i64 0, i64* %205, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 1, i32 0), align 8
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %116
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %210 = load i64, i64* %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  store i32 0, i32* %213, align 4
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %215 = load i64, i64* %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 2
  store i32 1, i32* %218, align 8
  br label %230

219:                                              ; preds = %116
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %221 = load i64, i64* %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  store i32 1, i32* %224, align 4
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @RMT, i32 0, i32 0), align 8
  %226 = load i64, i64* %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 3
  store i32 1, i32* %229, align 4
  br label %230

230:                                              ; preds = %219, %208
  %231 = load i32, i32* @intr_handle, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* @ETS_RMT_INTR_SOURCE, align 4
  %235 = load i64, i64* @ESP_INTR_FLAG_IRAM, align 8
  %236 = trunc i64 %235 to i32
  %237 = load i32, i32* @_rmt_isr, align 4
  %238 = call i32 @esp_intr_alloc(i32 %234, i32 %236, i32 %237, i32* null, i32* @intr_handle)
  br label %239

239:                                              ; preds = %233, %230
  %240 = load i64, i64* %12, align 8
  %241 = call i32 @RMT_MUTEX_UNLOCK(i64 %240)
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %242, %struct.TYPE_14__** %4, align 8
  br label %243

243:                                              ; preds = %239, %114, %87
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %244
}

declare dso_local i8* @xSemaphoreCreateMutex(...) #1

declare dso_local i64 @xSemaphoreTake(i8*, i32) #1

declare dso_local i32 @xSemaphoreGive(i8*) #1

declare dso_local %struct.TYPE_14__* @_rmtAllocate(i32, i64, i32) #1

declare dso_local i32 @RMT_MUTEX_LOCK(i64) #1

declare dso_local i32 @_initPin(i32, i64, i32) #1

declare dso_local i32 @esp_intr_alloc(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @RMT_MUTEX_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
