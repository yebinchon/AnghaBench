; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_classic.c_classic_ctrl_handshake.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_classic.c_classic_ctrl_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.classic_ctrl_t = type { i32, %struct.TYPE_9__, %struct.TYPE_9__, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"Classic controller handshake appears invalid, trying again.\00", align 1
@WM_EXP_MEM_CALIBR = common dso_local global i32 0, align 4
@EXP_HANDSHAKE_LEN = common dso_local global i32 0, align 4
@wiiuse_handshake_expansion = common dso_local global i32 0, align 4
@WIIUSE_CLASSIC_CTRL_INSERTED = common dso_local global i32 0, align 4
@EXP_CLASSIC = common dso_local global i32 0, align 4
@WIIMOTE_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @classic_ctrl_handshake(%struct.wiimote_t* %0, %struct.classic_ctrl_t* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.wiimote_t*, align 8
  %6 = alloca %struct.classic_ctrl_t*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %5, align 8
  store %struct.classic_ctrl_t* %1, %struct.classic_ctrl_t** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %11 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %13 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %15 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 223
  br i1 %17, label %18, label %56

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 223
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %25 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 255, i32* %27, align 4
  %28 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %29 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 255, i32* %31, align 4
  %32 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %33 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %37 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %41 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32 128, i32* %43, align 4
  %44 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %45 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 128, i32* %47, align 4
  %48 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %49 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %48, i32 0, i32 1
  %50 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %51 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %50, i32 0, i32 2
  %52 = bitcast %struct.TYPE_9__* %49 to i8*
  %53 = bitcast %struct.TYPE_9__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 24, i1 false)
  %54 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %55 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %54, i32 0, i32 0
  store i32 2, i32* %55, align 8
  br label %326

56:                                               ; preds = %18, %4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 255
  br i1 %62, label %63, label %83

63:                                               ; preds = %56
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 16
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 255
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = call i32 @WIIUSE_DEBUG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* @WM_EXP_MEM_CALIBR, align 4
  %76 = load i32, i32* @EXP_HANDSHAKE_LEN, align 4
  %77 = load i32, i32* @wiiuse_handshake_expansion, align 4
  %78 = call i32 @wiiuse_read_data(%struct.wiimote_t* %73, i32* %74, i32 %75, i32 %76, i32 %77)
  br label %82

79:                                               ; preds = %63
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 16
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %71
  br label %83

83:                                               ; preds = %82, %56
  %84 = load i32, i32* %8, align 4
  %85 = icmp sgt i32 %84, 218
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 218
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %93 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %97

94:                                               ; preds = %86, %83
  %95 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %96 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 0, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %103, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %115

107:                                              ; preds = %97
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 0, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %113, 4
  br label %115

115:                                              ; preds = %107, %106
  %116 = phi i32 [ 64, %106 ], [ %114, %107 ]
  %117 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %118 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 1, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sdiv i32 %126, 4
  %128 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %129 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i32 %127, i32* %131, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 2, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %137, 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %115
  br label %149

141:                                              ; preds = %115
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 2, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sdiv i32 %147, 4
  br label %149

149:                                              ; preds = %141, %140
  %150 = phi i32 [ 32, %140 ], [ %148, %141 ]
  %151 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %152 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i32 %150, i32* %154, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 3, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sdiv i32 %160, 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %149
  br label %172

164:                                              ; preds = %149
  %165 = load i32*, i32** %7, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 3, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = sdiv i32 %170, 4
  br label %172

172:                                              ; preds = %164, %163
  %173 = phi i32 [ 64, %163 ], [ %171, %164 ]
  %174 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %175 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i32 %173, i32* %177, align 4
  %178 = load i32*, i32** %7, align 8
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 4, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = sdiv i32 %183, 4
  %185 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %186 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  store i32 %184, i32* %188, align 4
  %189 = load i32*, i32** %7, align 8
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 5, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = sdiv i32 %194, 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %172
  br label %206

198:                                              ; preds = %172
  %199 = load i32*, i32** %7, align 8
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 5, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sdiv i32 %204, 4
  br label %206

206:                                              ; preds = %198, %197
  %207 = phi i32 [ 32, %197 ], [ %205, %198 ]
  %208 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %209 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  store i32 %207, i32* %211, align 4
  %212 = load i32*, i32** %7, align 8
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 6, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = sdiv i32 %217, 8
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %206
  br label %229

221:                                              ; preds = %206
  %222 = load i32*, i32** %7, align 8
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 6, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = sdiv i32 %227, 8
  br label %229

229:                                              ; preds = %221, %220
  %230 = phi i32 [ 32, %220 ], [ %228, %221 ]
  %231 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %232 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  store i32 %230, i32* %234, align 4
  %235 = load i32*, i32** %7, align 8
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 7, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = sdiv i32 %240, 8
  %242 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %243 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  store i32 %241, i32* %245, align 4
  %246 = load i32*, i32** %7, align 8
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 8, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = sdiv i32 %251, 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %229
  br label %263

255:                                              ; preds = %229
  %256 = load i32*, i32** %7, align 8
  %257 = load i32, i32* %9, align 4
  %258 = add nsw i32 8, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = sdiv i32 %261, 8
  br label %263

263:                                              ; preds = %255, %254
  %264 = phi i32 [ 16, %254 ], [ %262, %255 ]
  %265 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %266 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  store i32 %264, i32* %268, align 4
  %269 = load i32*, i32** %7, align 8
  %270 = load i32, i32* %9, align 4
  %271 = add nsw i32 9, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = sdiv i32 %274, 8
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %263
  br label %286

278:                                              ; preds = %263
  %279 = load i32*, i32** %7, align 8
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 9, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = sdiv i32 %284, 8
  br label %286

286:                                              ; preds = %278, %277
  %287 = phi i32 [ 32, %277 ], [ %285, %278 ]
  %288 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %289 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 1
  store i32 %287, i32* %291, align 4
  %292 = load i32*, i32** %7, align 8
  %293 = load i32, i32* %9, align 4
  %294 = add nsw i32 10, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = sdiv i32 %297, 8
  %299 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %300 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 1
  store i32 %298, i32* %302, align 4
  %303 = load i32*, i32** %7, align 8
  %304 = load i32, i32* %9, align 4
  %305 = add nsw i32 11, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %303, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = sdiv i32 %308, 8
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %286
  br label %320

312:                                              ; preds = %286
  %313 = load i32*, i32** %7, align 8
  %314 = load i32, i32* %9, align 4
  %315 = add nsw i32 11, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %313, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = sdiv i32 %318, 8
  br label %320

320:                                              ; preds = %312, %311
  %321 = phi i32 [ 16, %311 ], [ %319, %312 ]
  %322 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %6, align 8
  %323 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 1
  store i32 %321, i32* %325, align 4
  br label %326

326:                                              ; preds = %320, %23
  %327 = load i32, i32* @WIIUSE_CLASSIC_CTRL_INSERTED, align 4
  %328 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %329 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %328, i32 0, i32 2
  store i32 %327, i32* %329, align 4
  %330 = load i32, i32* @EXP_CLASSIC, align 4
  %331 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %332 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 0
  store i32 %330, i32* %333, align 4
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @WIIUSE_DEBUG(i8*) #2

declare dso_local i32 @wiiuse_read_data(%struct.wiimote_t*, i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
