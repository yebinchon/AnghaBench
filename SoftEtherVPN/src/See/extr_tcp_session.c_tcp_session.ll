; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_tcp_session.c_tcp_session.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_tcp_session.c_tcp_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i64, i32, i64, i64, i64, %struct.TYPE_7__, %struct.TYPE_7__, i64, %struct.TYPE_7__, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@ACK = common dso_local global i32 0, align 4
@FIN = common dso_local global i32 0, align 4
@SYN = common dso_local global i32 0, align 4
@RST = common dso_local global i32 0, align 4
@MAX_WINDOW = common dso_local global i64 0, align 8
@TME_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tcp_session(i32* %0, i64 %1, %struct.TYPE_9__* %2, %struct.TYPE_10__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i64 @ULONG_AT(i32* %19, i32 12)
  store i64 %20, i64* %12, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 25
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = bitcast i32* %32 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %14, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 6
  %38 = bitcast %struct.TYPE_7__* %35 to i8*
  %39 = bitcast %struct.TYPE_7__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 2147483647, i32* %42, align 4
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %5
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 12
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  br label %72

60:                                               ; preds = %5
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  br label %72

72:                                               ; preds = %60, %48
  %73 = load i32, i32* @ACK, align 4
  %74 = load i32, i32* @FIN, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @SYN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @RST, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %13, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %13, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %524 [
    i32 134, label %85
    i32 128, label %86
    i32 129, label %115
    i32 130, label %188
    i32 133, label %266
    i32 135, label %400
    i32 131, label %401
    i32 132, label %462
    i32 136, label %523
  ]

85:                                               ; preds = %72
  store i64 134, i64* %11, align 8
  br label %525

86:                                               ; preds = %72
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @SYN, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @SW_ULONG_AT(i32* %93, i32 20)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i64 134, i64* %11, align 8
  br label %525

97:                                               ; preds = %90
  store i64 129, i64* %11, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 9
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  %102 = bitcast %struct.TYPE_7__* %99 to i8*
  %103 = bitcast %struct.TYPE_7__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 8 %103, i64 4, i1 false)
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @SW_ULONG_AT(i32* %109, i32 16)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  br label %114

113:                                              ; preds = %86
  store i64 128, i64* %11, align 8
  br label %114

114:                                              ; preds = %113, %97
  br label %525

115:                                              ; preds = %72
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @RST, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i64, i64* %12, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i64 135, i64* %11, align 8
  br label %525

127:                                              ; preds = %120, %115
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @SYN, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = load i64, i64* %12, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %132, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  store i64 129, i64* %11, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = call i64 @SW_ULONG_AT(i32* %140, i32 16)
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  br label %525

144:                                              ; preds = %131, %127
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @SYN, align 4
  %147 = load i32, i32* @ACK, align 4
  %148 = or i32 %146, %147
  %149 = icmp eq i32 %145, %148
  br i1 %149, label %150, label %186

150:                                              ; preds = %144
  %151 = load i64, i64* %12, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %156, label %186

156:                                              ; preds = %150
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = call i64 @SW_ULONG_AT(i32* %159, i32 20)
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 1
  %165 = icmp ne i64 %160, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  store i64 134, i64* %11, align 8
  br label %525

167:                                              ; preds = %156
  store i64 130, i64* %11, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 5
  %172 = bitcast %struct.TYPE_7__* %169 to i8*
  %173 = bitcast %struct.TYPE_7__* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %172, i8* align 8 %173, i64 4, i1 false)
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = call i64 @SW_ULONG_AT(i32* %176, i32 16)
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 7
  store i64 %177, i64* %179, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 1
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 3
  store i64 %183, i64* %185, align 8
  br label %187

186:                                              ; preds = %150, %144
  store i64 134, i64* %11, align 8
  br label %187

187:                                              ; preds = %186, %167
  br label %525

188:                                              ; preds = %72
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @ACK, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %188
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* @RST, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %193
  %199 = load i64, i64* %12, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %199, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %198
  store i64 135, i64* %11, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = call i64 @SW_ULONG_AT(i32* %207, i32 20)
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 4
  store i64 %208, i64* %210, align 8
  br label %525

211:                                              ; preds = %198, %193, %188
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* @ACK, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %248

215:                                              ; preds = %211
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* @SYN, align 4
  %218 = load i32, i32* @FIN, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @RST, align 4
  %221 = or i32 %219, %220
  %222 = and i32 %216, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %248, label %224

224:                                              ; preds = %215
  %225 = load i64, i64* %12, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %225, %228
  br i1 %229, label %230, label %248

230:                                              ; preds = %224
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = call i64 @SW_ULONG_AT(i32* %233, i32 20)
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 7
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, 1
  %239 = icmp ne i64 %234, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %230
  store i64 134, i64* %11, align 8
  br label %525

241:                                              ; preds = %230
  store i64 133, i64* %11, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, 1
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 4
  store i64 %245, i64* %247, align 8
  br label %525

248:                                              ; preds = %224, %215, %211
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* @ACK, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %248
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* @SYN, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %253
  %259 = load i64, i64* %12, align 8
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %259, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  store i64 130, i64* %11, align 8
  br label %525

265:                                              ; preds = %258, %253, %248
  store i64 134, i64* %11, align 8
  br label %525

266:                                              ; preds = %72
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* @SYN, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %322

271:                                              ; preds = %266
  %272 = load i32, i32* %13, align 4
  %273 = load i32, i32* @ACK, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %294

276:                                              ; preds = %271
  %277 = load i64, i64* %12, align 8
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %277, %280
  br i1 %281, label %282, label %294

282:                                              ; preds = %276
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = call i64 @SW_ULONG_AT(i32* %288, i32 20)
  %290 = sub nsw i64 %285, %289
  %291 = load i64, i64* @MAX_WINDOW, align 8
  %292 = icmp slt i64 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %282
  store i64 133, i64* %11, align 8
  br label %525

294:                                              ; preds = %282, %276, %271
  %295 = load i32, i32* %13, align 4
  %296 = load i32, i32* @ACK, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %321, label %299

299:                                              ; preds = %294
  %300 = load i64, i64* %12, align 8
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp eq i64 %300, %303
  br i1 %304, label %305, label %321

305:                                              ; preds = %299
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = call i64 @SW_ULONG_AT(i32* %308, i32 16)
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = icmp eq i64 %309, %312
  br i1 %313, label %314, label %321

314:                                              ; preds = %305
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = call i64 @ULONG_AT(i32* %317, i32 20)
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %314
  store i64 133, i64* %11, align 8
  br label %525

321:                                              ; preds = %314, %305, %299, %294
  store i64 134, i64* %11, align 8
  br label %525

322:                                              ; preds = %266
  %323 = load i32, i32* %13, align 4
  %324 = load i32, i32* @ACK, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %368

327:                                              ; preds = %322
  %328 = load i64, i64* %12, align 8
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = icmp eq i64 %328, %331
  br i1 %332, label %333, label %350

333:                                              ; preds = %327
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = call i64 @SW_ULONG_AT(i32* %336, i32 20)
  store i64 %337, i64* %15, align 8
  %338 = load i64, i64* %15, align 8
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = sub nsw i64 %338, %341
  %343 = load i64, i64* @MAX_WINDOW, align 8
  %344 = icmp slt i64 %342, %343
  br i1 %344, label %345, label %349

345:                                              ; preds = %333
  %346 = load i64, i64* %15, align 8
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 4
  store i64 %346, i64* %348, align 8
  br label %349

349:                                              ; preds = %345, %333
  br label %367

350:                                              ; preds = %327
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = call i64 @SW_ULONG_AT(i32* %353, i32 20)
  store i64 %354, i64* %16, align 8
  %355 = load i64, i64* %16, align 8
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 3
  %358 = load i64, i64* %357, align 8
  %359 = sub nsw i64 %355, %358
  %360 = load i64, i64* @MAX_WINDOW, align 8
  %361 = icmp slt i64 %359, %360
  br i1 %361, label %362, label %366

362:                                              ; preds = %350
  %363 = load i64, i64* %16, align 8
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 3
  store i64 %363, i64* %365, align 8
  br label %366

366:                                              ; preds = %362, %350
  br label %367

367:                                              ; preds = %366, %349
  br label %368

368:                                              ; preds = %367, %322
  %369 = load i32, i32* %13, align 4
  %370 = load i32, i32* @RST, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %368
  store i64 135, i64* %11, align 8
  br label %525

374:                                              ; preds = %368
  %375 = load i32, i32* %13, align 4
  %376 = load i32, i32* @FIN, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %399

379:                                              ; preds = %374
  %380 = load i64, i64* %12, align 8
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = icmp eq i64 %380, %383
  br i1 %384, label %385, label %392

385:                                              ; preds = %379
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 0
  %388 = load i32*, i32** %387, align 8
  %389 = call i64 @SW_ULONG_AT(i32* %388, i32 16)
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 3
  store i64 %389, i64* %391, align 8
  store i64 132, i64* %11, align 8
  br label %525

392:                                              ; preds = %379
  %393 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 0
  %395 = load i32*, i32** %394, align 8
  %396 = call i64 @SW_ULONG_AT(i32* %395, i32 16)
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 4
  store i64 %396, i64* %398, align 8
  store i64 131, i64* %11, align 8
  br label %525

399:                                              ; preds = %374
  store i64 133, i64* %11, align 8
  br label %525

400:                                              ; preds = %72
  store i64 135, i64* %11, align 8
  br label %525

401:                                              ; preds = %72
  %402 = load i32, i32* %13, align 4
  %403 = load i32, i32* @SYN, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %401
  store i64 134, i64* %11, align 8
  br label %525

407:                                              ; preds = %401
  store i64 131, i64* %11, align 8
  %408 = load i32, i32* %13, align 4
  %409 = load i32, i32* @ACK, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %436

412:                                              ; preds = %407
  %413 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = call i64 @SW_ULONG_AT(i32* %415, i32 20)
  store i64 %416, i64* %17, align 8
  %417 = load i64, i64* %12, align 8
  %418 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = icmp ne i64 %417, %420
  br i1 %421, label %422, label %435

422:                                              ; preds = %412
  %423 = load i64, i64* %17, align 8
  %424 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 3
  %426 = load i64, i64* %425, align 8
  %427 = sub nsw i64 %423, %426
  %428 = load i64, i64* @MAX_WINDOW, align 8
  %429 = icmp slt i64 %427, %428
  br i1 %429, label %430, label %434

430:                                              ; preds = %422
  %431 = load i64, i64* %17, align 8
  %432 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 3
  store i64 %431, i64* %433, align 8
  br label %434

434:                                              ; preds = %430, %422
  br label %435

435:                                              ; preds = %434, %412
  br label %436

436:                                              ; preds = %435, %407
  %437 = load i32, i32* %13, align 4
  %438 = load i32, i32* @RST, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %436
  store i64 135, i64* %11, align 8
  br label %461

442:                                              ; preds = %436
  %443 = load i32, i32* %13, align 4
  %444 = load i32, i32* @FIN, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %460

447:                                              ; preds = %442
  %448 = load i64, i64* %12, align 8
  %449 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = icmp eq i64 %448, %451
  br i1 %452, label %453, label %460

453:                                              ; preds = %447
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 0
  %456 = load i32*, i32** %455, align 8
  %457 = call i64 @SW_ULONG_AT(i32* %456, i32 16)
  %458 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 3
  store i64 %457, i64* %459, align 8
  store i64 136, i64* %11, align 8
  br label %460

460:                                              ; preds = %453, %447, %442
  br label %461

461:                                              ; preds = %460, %441
  br label %525

462:                                              ; preds = %72
  %463 = load i32, i32* %13, align 4
  %464 = load i32, i32* @SYN, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %462
  store i64 134, i64* %11, align 8
  br label %525

468:                                              ; preds = %462
  store i64 132, i64* %11, align 8
  %469 = load i32, i32* %13, align 4
  %470 = load i32, i32* @ACK, align 4
  %471 = and i32 %469, %470
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %497

473:                                              ; preds = %468
  %474 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %475 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %474, i32 0, i32 0
  %476 = load i32*, i32** %475, align 8
  %477 = call i64 @SW_ULONG_AT(i32* %476, i32 20)
  store i64 %477, i64* %18, align 8
  %478 = load i64, i64* %12, align 8
  %479 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %480 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = icmp eq i64 %478, %481
  br i1 %482, label %483, label %496

483:                                              ; preds = %473
  %484 = load i64, i64* %18, align 8
  %485 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %486 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %485, i32 0, i32 4
  %487 = load i64, i64* %486, align 8
  %488 = sub nsw i64 %484, %487
  %489 = load i64, i64* @MAX_WINDOW, align 8
  %490 = icmp slt i64 %488, %489
  br i1 %490, label %491, label %495

491:                                              ; preds = %483
  %492 = load i64, i64* %18, align 8
  %493 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %494 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %493, i32 0, i32 4
  store i64 %492, i64* %494, align 8
  br label %495

495:                                              ; preds = %491, %483
  br label %496

496:                                              ; preds = %495, %473
  br label %497

497:                                              ; preds = %496, %468
  %498 = load i32, i32* %13, align 4
  %499 = load i32, i32* @RST, align 4
  %500 = and i32 %498, %499
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %503

502:                                              ; preds = %497
  store i64 135, i64* %11, align 8
  br label %522

503:                                              ; preds = %497
  %504 = load i32, i32* %13, align 4
  %505 = load i32, i32* @FIN, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %521

508:                                              ; preds = %503
  %509 = load i64, i64* %12, align 8
  %510 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = icmp ne i64 %509, %512
  br i1 %513, label %514, label %521

514:                                              ; preds = %508
  %515 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %516 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %515, i32 0, i32 0
  %517 = load i32*, i32** %516, align 8
  %518 = call i64 @SW_ULONG_AT(i32* %517, i32 16)
  %519 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %520 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %519, i32 0, i32 4
  store i64 %518, i64* %520, align 8
  store i64 136, i64* %11, align 8
  br label %521

521:                                              ; preds = %514, %508, %503
  br label %522

522:                                              ; preds = %521, %502
  br label %525

523:                                              ; preds = %72
  store i64 136, i64* %11, align 8
  br label %525

524:                                              ; preds = %72
  store i64 134, i64* %11, align 8
  br label %525

525:                                              ; preds = %524, %523, %522, %467, %461, %406, %400, %399, %392, %385, %373, %321, %320, %293, %265, %264, %241, %240, %204, %187, %166, %137, %126, %114, %96, %85
  %526 = load i64, i64* %11, align 8
  %527 = trunc i64 %526 to i32
  %528 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %529 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %528, i32 0, i32 1
  store i32 %527, i32* %529, align 8
  %530 = load i64, i64* %11, align 8
  %531 = icmp eq i64 %530, 136
  br i1 %531, label %541, label %532

532:                                              ; preds = %525
  %533 = load i64, i64* %11, align 8
  %534 = icmp eq i64 %533, 128
  br i1 %534, label %541, label %535

535:                                              ; preds = %532
  %536 = load i64, i64* %11, align 8
  %537 = icmp eq i64 %536, 135
  br i1 %537, label %541, label %538

538:                                              ; preds = %535
  %539 = load i64, i64* %11, align 8
  %540 = icmp eq i64 %539, 134
  br i1 %540, label %541, label %548

541:                                              ; preds = %538, %535, %532, %525
  %542 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %543 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %542, i32 0, i32 6
  %544 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %545 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %544, i32 0, i32 5
  %546 = bitcast %struct.TYPE_7__* %543 to i8*
  %547 = bitcast %struct.TYPE_7__* %545 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %546, i8* align 8 %547, i64 4, i1 false)
  br label %548

548:                                              ; preds = %541, %538
  %549 = load i64, i64* @TME_SUCCESS, align 8
  ret i64 %549
}

declare dso_local i64 @ULONG_AT(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @SW_ULONG_AT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
