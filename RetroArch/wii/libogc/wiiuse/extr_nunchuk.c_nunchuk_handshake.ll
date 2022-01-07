; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_nunchuk.c_nunchuk_handshake.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_nunchuk.c_nunchuk_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { %struct.TYPE_9__, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.nunchuk_t = type { %struct.TYPE_13__, %struct.TYPE_16__, i32*, i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@WM_EXP_MEM_CALIBR = common dso_local global i32 0, align 4
@EXP_HANDSHAKE_LEN = common dso_local global i32 0, align 4
@wiiuse_handshake_expansion = common dso_local global i32 0, align 4
@WIIUSE_NUNCHUK_INSERTED = common dso_local global i32 0, align 4
@EXP_NUNCHUK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nunchuk_handshake(%struct.wiimote_t* %0, %struct.nunchuk_t* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.wiimote_t*, align 8
  %6 = alloca %struct.nunchuk_t*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %5, align 8
  store %struct.nunchuk_t* %1, %struct.nunchuk_t** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %11 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %13 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %15 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %17 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %16, i32 0, i32 3
  %18 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %19 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %21 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %20, i32 0, i32 1
  %22 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %23 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %22, i32 0, i32 2
  %24 = bitcast %struct.TYPE_16__* %21 to i8*
  %25 = bitcast %struct.TYPE_16__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 4 %25, i64 24, i1 false)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 255
  br i1 %31, label %32, label %51

32:                                               ; preds = %4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 16
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @WM_EXP_MEM_CALIBR, align 4
  %44 = load i32, i32* @EXP_HANDSHAKE_LEN, align 4
  %45 = load i32, i32* @wiiuse_handshake_expansion, align 4
  %46 = call i32 @wiiuse_read_data(%struct.wiimote_t* %41, i32* %42, i32 %43, i32 %44, i32 %45)
  br label %50

47:                                               ; preds = %32
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 16
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 0
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 2
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 4
  %66 = and i32 %65, 3
  %67 = or i32 %58, %66
  %68 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %69 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 2
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 2
  %86 = and i32 %85, 3
  %87 = or i32 %78, %86
  %88 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %89 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 2
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 3
  %106 = or i32 %98, %105
  %107 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %108 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  store i32 %106, i32* %110, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 2
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 7
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 4
  %125 = and i32 %124, 3
  %126 = or i32 %117, %125
  %127 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %128 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  store i32 %126, i32* %130, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 5
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 2
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 7
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 2
  %145 = and i32 %144, 3
  %146 = or i32 %137, %145
  %147 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %148 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  store i32 %146, i32* %150, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 6
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 2
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 7
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 3
  %165 = or i32 %157, %164
  %166 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %167 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  store i32 %165, i32* %169, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %177 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i32 %175, i32* %179, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 9
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %187 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 8
  %190 = load i32*, i32** %7, align 8
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 10
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %197 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  store i32 %195, i32* %199, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 11
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %207 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  store i32 %205, i32* %209, align 4
  %210 = load i32*, i32** %7, align 8
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, 12
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %217 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  store i32 %215, i32* %219, align 4
  %220 = load i32*, i32** %7, align 8
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 13
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %227 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  store i32 %225, i32* %229, align 4
  %230 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %231 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %51
  %237 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %238 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  store i32 499, i32* %240, align 4
  br label %241

241:                                              ; preds = %236, %51
  %242 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %243 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %241
  %249 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %250 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 1
  store i32 509, i32* %252, align 4
  br label %253

253:                                              ; preds = %248, %241
  %254 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %255 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %253
  %261 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %262 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 2
  store i32 507, i32* %264, align 4
  br label %265

265:                                              ; preds = %260, %253
  %266 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %267 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %265
  %273 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %274 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 0
  store i32 703, i32* %276, align 8
  br label %277

277:                                              ; preds = %272, %265
  %278 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %279 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %277
  %285 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %286 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 1
  store i32 709, i32* %288, align 4
  br label %289

289:                                              ; preds = %284, %277
  %290 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %291 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %289
  %297 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %298 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 2
  store i32 709, i32* %300, align 8
  br label %301

301:                                              ; preds = %296, %289
  %302 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %303 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %301
  %309 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %310 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 0
  store i32 223, i32* %312, align 8
  br label %313

313:                                              ; preds = %308, %301
  %314 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %315 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %313
  %321 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %322 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  store i32 27, i32* %324, align 8
  br label %325

325:                                              ; preds = %320, %313
  %326 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %327 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %325
  %333 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %334 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 0
  store i32 126, i32* %336, align 8
  br label %337

337:                                              ; preds = %332, %325
  %338 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %339 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %337
  %345 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %346 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 1
  store i32 222, i32* %348, align 4
  br label %349

349:                                              ; preds = %344, %337
  %350 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %351 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %349
  %357 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %358 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 1
  store i32 30, i32* %360, align 4
  br label %361

361:                                              ; preds = %356, %349
  %362 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %363 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %361
  %369 = load %struct.nunchuk_t*, %struct.nunchuk_t** %6, align 8
  %370 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 1
  store i32 131, i32* %372, align 4
  br label %373

373:                                              ; preds = %368, %361
  %374 = load i32, i32* @WIIUSE_NUNCHUK_INSERTED, align 4
  %375 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %376 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %375, i32 0, i32 1
  store i32 %374, i32* %376, align 4
  %377 = load i32, i32* @EXP_NUNCHUK, align 4
  %378 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %379 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i32 0, i32 0
  store i32 %377, i32* %380, align 4
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wiiuse_read_data(%struct.wiimote_t*, i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
