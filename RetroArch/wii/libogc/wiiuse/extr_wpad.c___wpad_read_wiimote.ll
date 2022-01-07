; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_read_wiimote.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_read_wiimote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32*, i32, %struct.TYPE_22__, %struct.TYPE_19__, %struct.TYPE_16__, %struct.TYPE_15__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_17__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i64, %struct.TYPE_19__, %struct.TYPE_16__, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct._wpad_thresh = type { i32, i32, i32 }

@WPAD_ERR_TRANSFER = common dso_local global i32 0, align 4
@WIIMOTE_STATE_CONNECTED = common dso_local global i32 0, align 4
@WIIMOTE_STATE_HANDSHAKE_COMPLETE = common dso_local global i32 0, align 4
@WPAD_DATA_BUTTONS = common dso_local global i64 0, align 8
@WPAD_DATA_ACCEL = common dso_local global i64 0, align 8
@WPAD_DATA_IR = common dso_local global i64 0, align 8
@WPAD_MAX_IR_DOTS = common dso_local global i32 0, align 4
@WPAD_DATA_EXPANSION = common dso_local global i64 0, align 8
@WPAD_ERR_NONE = common dso_local global i32 0, align 4
@WPAD_ERR_NOT_READY = common dso_local global i32 0, align 4
@WPAD_ERR_NO_CONTROLLER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_t*, %struct.TYPE_13__*, i64*, %struct._wpad_thresh*)* @__wpad_read_wiimote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wpad_read_wiimote(%struct.wiimote_t* %0, %struct.TYPE_13__* %1, i64* %2, %struct._wpad_thresh* %3) #0 {
  %5 = alloca %struct.wiimote_t*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct._wpad_thresh*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct._wpad_thresh* %3, %struct._wpad_thresh** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @WPAD_ERR_TRANSFER, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %17 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %22 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %29 = icmp ne %struct.wiimote_t* %28, null
  br i1 %29, label %30, label %256

30:                                               ; preds = %4
  %31 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %32 = load i32, i32* @WIIMOTE_STATE_CONNECTED, align 4
  %33 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %256

35:                                               ; preds = %30
  %36 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %37 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE_COMPLETE, align 4
  %38 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %251

40:                                               ; preds = %35
  %41 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %42 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %69 [
    i32 134, label %46
    i32 133, label %46
    i32 131, label %46
    i32 129, label %46
    i32 132, label %46
    i32 128, label %46
    i32 130, label %46
  ]

46:                                               ; preds = %40, %40, %40, %40, %40, %40, %40
  %47 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %48 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 65535
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* @WPAD_DATA_BUTTONS, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = or i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct._wpad_thresh*, %struct._wpad_thresh** %8, align 8
  %59 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %62 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %65 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @STATE_CHECK_SIMPLE(i32 %60, i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %46, %40
  %70 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %71 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %126 [
    i32 133, label %75
    i32 131, label %75
    i32 132, label %75
    i32 130, label %75
  ]

75:                                               ; preds = %69, %69, %69, %69
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 4
  %78 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %79 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %78, i32 0, i32 4
  %80 = bitcast %struct.TYPE_16__* %77 to i8*
  %81 = bitcast %struct.TYPE_16__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 12, i1 false)
  %82 = load i64, i64* @WPAD_DATA_ACCEL, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = or i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct._wpad_thresh*, %struct._wpad_thresh** %8, align 8
  %88 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %91 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %95 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @STATE_CHECK(i32 %89, i32 %93, i32 %98)
  %100 = load %struct._wpad_thresh*, %struct._wpad_thresh** %8, align 8
  %101 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %104 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %108 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @STATE_CHECK(i32 %102, i32 %106, i32 %111)
  %113 = load %struct._wpad_thresh*, %struct._wpad_thresh** %8, align 8
  %114 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %117 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %121 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @STATE_CHECK(i32 %115, i32 %119, i32 %124)
  br label %126

126:                                              ; preds = %75, %69
  %127 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %128 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  switch i32 %131, label %222 [
    i32 131, label %132
    i32 130, label %132
  ]

132:                                              ; preds = %126, %126
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 3
  %135 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %136 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %135, i32 0, i32 3
  %137 = bitcast %struct.TYPE_19__* %134 to i8*
  %138 = bitcast %struct.TYPE_19__* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 8, i1 false)
  %139 = load i64, i64* @WPAD_DATA_IR, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = or i64 %142, %139
  store i64 %143, i64* %141, align 8
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %218, %132
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @WPAD_MAX_IR_DOTS, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %221

148:                                              ; preds = %144
  %149 = load %struct._wpad_thresh*, %struct._wpad_thresh** %8, align 8
  %150 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %153 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %162 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @STATE_CHECK_SIMPLE(i32 %151, i32 %160, i32 %170)
  %172 = load %struct._wpad_thresh*, %struct._wpad_thresh** %8, align 8
  %173 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %176 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %185 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @STATE_CHECK(i32 %174, i32 %183, i32 %193)
  %195 = load %struct._wpad_thresh*, %struct._wpad_thresh** %8, align 8
  %196 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %199 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %208 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @STATE_CHECK(i32 %197, i32 %206, i32 %216)
  br label %218

218:                                              ; preds = %148
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %9, align 4
  br label %144

221:                                              ; preds = %144
  br label %222

222:                                              ; preds = %221, %126
  %223 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %224 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  switch i32 %227, label %240 [
    i32 129, label %228
    i32 132, label %228
    i32 128, label %228
    i32 130, label %228
  ]

228:                                              ; preds = %222, %222, %222, %222
  %229 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %231 = load %struct._wpad_thresh*, %struct._wpad_thresh** %8, align 8
  %232 = call i32 @__wpad_read_expansion(%struct.wiimote_t* %229, %struct.TYPE_13__* %230, %struct._wpad_thresh* %231)
  %233 = load i32, i32* %10, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %10, align 4
  %235 = load i64, i64* @WPAD_DATA_EXPANSION, align 8
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = or i64 %238, %235
  store i64 %239, i64* %237, align 8
  br label %240

240:                                              ; preds = %228, %222
  %241 = load i32, i32* @WPAD_ERR_NONE, align 4
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %240
  %247 = load i64*, i64** %7, align 8
  store i64 0, i64* %247, align 8
  %248 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %249 = call i32 @__save_state(%struct.wiimote_t* %248)
  br label %250

250:                                              ; preds = %246, %240
  br label %255

251:                                              ; preds = %35
  %252 = load i32, i32* @WPAD_ERR_NOT_READY, align 4
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  store i32 %252, i32* %254, align 4
  br label %255

255:                                              ; preds = %251, %250
  br label %260

256:                                              ; preds = %30, %4
  %257 = load i32, i32* @WPAD_ERR_NO_CONTROLLER, align 4
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  br label %260

260:                                              ; preds = %256, %255
  ret void
}

declare dso_local i64 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @STATE_CHECK_SIMPLE(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @STATE_CHECK(i32, i32, i32) #1

declare dso_local i32 @__wpad_read_expansion(%struct.wiimote_t*, %struct.TYPE_13__*, %struct._wpad_thresh*) #1

declare dso_local i32 @__save_state(%struct.wiimote_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
