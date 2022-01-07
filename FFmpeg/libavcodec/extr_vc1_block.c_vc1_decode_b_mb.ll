; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_b_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_b_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32*, i32, i64, i32, i64, %struct.TYPE_17__, i32, i32, i64**, i64, i64, %struct.TYPE_15__*, %struct.TYPE_21__, i64, i64 }
%struct.TYPE_17__ = type { i32 (i32*)* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32*, i64*, i32, i64*, i32**, i32, %struct.TYPE_19__*, i64*, %struct.TYPE_18__, i32, i64, i64**, %struct.TYPE_16__, i32, i8* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 (i32*, i64, i32)* }
%struct.TYPE_16__ = type { i32* }

@BMV_TYPE_BACKWARD = common dso_local global i32 0, align 4
@B_FRACTION_DEN = common dso_local global i32 0, align 4
@BMV_TYPE_FORWARD = common dso_local global i32 0, align 4
@BMV_TYPE_INTERPOLATED = common dso_local global i32 0, align 4
@VC1_CBPCY_P_VLC_BITS = common dso_local global i32 0, align 4
@ff_vc1_ttmb_vlc = common dso_local global %struct.TYPE_14__* null, align 8
@VC1_TTMB_VLC_BITS = common dso_local global i32 0, align 4
@CONFIG_GRAY = common dso_local global i64 0, align 8
@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @vc1_decode_b_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc1_decode_b_mb(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [2 x i32], align 4
  %24 = alloca [2 x i32], align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 14
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %4, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 16
  store i32* %30, i32** %5, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %36, %39
  %41 = add nsw i32 %33, %40
  store i32 %41, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %18, align 4
  %45 = load i32, i32* @BMV_TYPE_BACKWARD, align 4
  store i32 %45, i32* %25, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 13
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 16
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %1
  %56 = load i32*, i32** %5, align 8
  %57 = call i8* @get_bits1(i32* %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %22, align 4
  br label %67

59:                                               ; preds = %1
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %22, align 4
  br label %67

67:                                               ; preds = %59, %55
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 15
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32*, i32** %5, align 8
  %74 = call i8* @get_bits1(i32* %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %21, align 4
  br label %85

76:                                               ; preds = %67
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 14
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %21, align 4
  br label %85

85:                                               ; preds = %76, %72
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  store i32 0, i32* %86, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 0, i32* %87, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  store i32 0, i32* %88, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  store i32 0, i32* %89, align 4
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %120, %85
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 6
  br i1 %92, label %93, label %123

93:                                               ; preds = %90
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 10
  %96 = load i64**, i64*** %95, align 8
  %97 = getelementptr inbounds i64*, i64** %96, i64 0
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 4
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i64, i64* %98, i64 %105
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 14
  %109 = load i64**, i64*** %108, align 8
  %110 = getelementptr inbounds i64*, i64** %109, i64 0
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 4
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i64, i64* %111, i64 %118
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %93
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %90

123:                                              ; preds = %90
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 15
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 0, i32* %130, align 4
  %131 = load i32, i32* %22, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %192, label %133

133:                                              ; preds = %123
  %134 = load i32, i32* %21, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @GET_MVDATA(i32 %138, i32 %140)
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  store i32 %143, i32* %144, align 4
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %136, %133
  %149 = load i32, i32* %21, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 13
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %191, label %156

156:                                              ; preds = %151, %148
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @decode012(i32* %157)
  store i32 %158, i32* %25, align 4
  %159 = load i32, i32* %25, align 4
  switch i32 %159, label %190 [
    i32 0, label %160
    i32 1, label %173
    i32 2, label %186
  ]

160:                                              ; preds = %156
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @B_FRACTION_DEN, align 4
  %165 = sdiv i32 %164, 2
  %166 = icmp sge i32 %163, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* @BMV_TYPE_BACKWARD, align 4
  br label %171

169:                                              ; preds = %160
  %170 = load i32, i32* @BMV_TYPE_FORWARD, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  store i32 %172, i32* %25, align 4
  br label %190

173:                                              ; preds = %156
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @B_FRACTION_DEN, align 4
  %178 = sdiv i32 %177, 2
  %179 = icmp sge i32 %176, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %173
  %181 = load i32, i32* @BMV_TYPE_FORWARD, align 4
  br label %184

182:                                              ; preds = %173
  %183 = load i32, i32* @BMV_TYPE_BACKWARD, align 4
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  store i32 %185, i32* %25, align 4
  br label %190

186:                                              ; preds = %156
  %187 = load i32, i32* @BMV_TYPE_INTERPOLATED, align 4
  store i32 %187, i32* %25, align 4
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 0, i32* %188, align 4
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  store i32 0, i32* %189, align 4
  br label %190

190:                                              ; preds = %186, %156, %184, %171
  br label %191

191:                                              ; preds = %190, %151
  br label %192

192:                                              ; preds = %191, %123
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %213, %192
  %194 = load i32, i32* %6, align 4
  %195 = icmp slt i32 %194, 6
  br i1 %195, label %196, label %216

196:                                              ; preds = %193
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 13
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 10
  %202 = load i64**, i64*** %201, align 8
  %203 = getelementptr inbounds i64*, i64** %202, i64 0
  %204 = load i64*, i64** %203, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 4
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i64, i64* %204, i64 %211
  store i64 %199, i64* %212, align 8
  br label %213

213:                                              ; preds = %196
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %6, align 4
  br label %193

216:                                              ; preds = %193
  %217 = load i32, i32* %21, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %216
  %220 = load i32, i32* %22, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = load i32, i32* @BMV_TYPE_INTERPOLATED, align 4
  store i32 %223, i32* %25, align 4
  br label %224

224:                                              ; preds = %222, %219
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %226 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %228 = load i32, i32* %22, align 4
  %229 = load i32, i32* %25, align 4
  %230 = call i32 @ff_vc1_pred_b_mv(%struct.TYPE_20__* %225, i32* %226, i32* %227, i32 %228, i32 %229)
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %234 = load i32, i32* %22, align 4
  %235 = load i32, i32* %25, align 4
  %236 = call i32 @vc1_b_mc(%struct.TYPE_20__* %231, i32* %232, i32* %233, i32 %234, i32 %235)
  store i32 0, i32* %2, align 4
  br label %769

237:                                              ; preds = %216
  %238 = load i32, i32* %22, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %294

240:                                              ; preds = %237
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 14
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 16
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 13
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @VC1_CBPCY_P_VLC_BITS, align 4
  %250 = call i32 @get_vlc2(i32* %243, i32 %248, i32 %249, i32 2)
  store i32 %250, i32* %9, align 4
  %251 = call i32 (...) @GET_MQUANT()
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 13
  store i64 0, i64* %253, align 8
  %254 = load i32, i32* %11, align 4
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 15
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 %254, i32* %261, align 4
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %277, label %266

266:                                              ; preds = %240
  %267 = load i32*, i32** %5, align 8
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ff_vc1_ttmb_vlc, align 8
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @VC1_TTMB_VLC_BITS, align 4
  %276 = call i32 @get_vlc2(i32* %267, i32 %274, i32 %275, i32 2)
  store i32 %276, i32* %12, align 4
  br label %277

277:                                              ; preds = %266, %240
  %278 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  store i32 0, i32* %278, align 4
  %279 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  store i32 0, i32* %279, align 4
  %280 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 0, i32* %280, align 4
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  store i32 0, i32* %281, align 4
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %283 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %284 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %285 = load i32, i32* %22, align 4
  %286 = load i32, i32* %25, align 4
  %287 = call i32 @ff_vc1_pred_b_mv(%struct.TYPE_20__* %282, i32* %283, i32* %284, i32 %285, i32 %286)
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %289 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %290 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %291 = load i32, i32* %22, align 4
  %292 = load i32, i32* %25, align 4
  %293 = call i32 @vc1_b_mc(%struct.TYPE_20__* %288, i32* %289, i32* %290, i32 %291, i32 %292)
  br label %442

294:                                              ; preds = %237
  %295 = load i32, i32* %13, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %315, label %297

297:                                              ; preds = %294
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 13
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %315, label %302

302:                                              ; preds = %297
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %304 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %305 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %306 = load i32, i32* %22, align 4
  %307 = load i32, i32* %25, align 4
  %308 = call i32 @ff_vc1_pred_b_mv(%struct.TYPE_20__* %303, i32* %304, i32* %305, i32 %306, i32 %307)
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %311 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %312 = load i32, i32* %22, align 4
  %313 = load i32, i32* %25, align 4
  %314 = call i32 @vc1_b_mc(%struct.TYPE_20__* %309, i32* %310, i32* %311, i32 %312, i32 %313)
  store i32 0, i32* %2, align 4
  br label %769

315:                                              ; preds = %297, %294
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 13
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %343

320:                                              ; preds = %315
  %321 = load i32, i32* %13, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %343, label %323

323:                                              ; preds = %320
  %324 = call i32 (...) @GET_MQUANT()
  %325 = load i32, i32* %11, align 4
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 15
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %8, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32 %325, i32* %332, align 4
  %333 = load i32*, i32** %5, align 8
  %334 = call i8* @get_bits1(i32* %333)
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 17
  store i8* %334, i8** %336, align 8
  store i32 0, i32* %9, align 4
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %338 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %339 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %340 = load i32, i32* %22, align 4
  %341 = load i32, i32* %25, align 4
  %342 = call i32 @ff_vc1_pred_b_mv(%struct.TYPE_20__* %337, i32* %338, i32* %339, i32 %340, i32 %341)
  br label %441

343:                                              ; preds = %320, %315
  %344 = load i32, i32* %25, align 4
  %345 = load i32, i32* @BMV_TYPE_INTERPOLATED, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %369

347:                                              ; preds = %343
  %348 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %349 = load i32, i32* %348, align 4
  %350 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @GET_MVDATA(i32 %349, i32 %351)
  %353 = load i32, i32* %13, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %368, label %355

355:                                              ; preds = %347
  %356 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %357 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %358 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %359 = load i32, i32* %22, align 4
  %360 = load i32, i32* %25, align 4
  %361 = call i32 @ff_vc1_pred_b_mv(%struct.TYPE_20__* %356, i32* %357, i32* %358, i32 %359, i32 %360)
  %362 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %363 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %364 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %365 = load i32, i32* %22, align 4
  %366 = load i32, i32* %25, align 4
  %367 = call i32 @vc1_b_mc(%struct.TYPE_20__* %362, i32* %363, i32* %364, i32 %365, i32 %366)
  store i32 0, i32* %2, align 4
  br label %769

368:                                              ; preds = %347
  br label %369

369:                                              ; preds = %368, %343
  %370 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %371 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %372 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %373 = load i32, i32* %22, align 4
  %374 = load i32, i32* %25, align 4
  %375 = call i32 @ff_vc1_pred_b_mv(%struct.TYPE_20__* %370, i32* %371, i32* %372, i32 %373, i32 %374)
  %376 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %376, i32 0, i32 13
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %387, label %380

380:                                              ; preds = %369
  %381 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %382 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %383 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %384 = load i32, i32* %22, align 4
  %385 = load i32, i32* %25, align 4
  %386 = call i32 @vc1_b_mc(%struct.TYPE_20__* %381, i32* %382, i32* %383, i32 %384, i32 %385)
  br label %387

387:                                              ; preds = %380, %369
  %388 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %388, i32 0, i32 13
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %387
  %393 = load i32*, i32** %5, align 8
  %394 = call i8* @get_bits1(i32* %393)
  %395 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %395, i32 0, i32 17
  store i8* %394, i8** %396, align 8
  br label %397

397:                                              ; preds = %392, %387
  %398 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %398, i32 0, i32 14
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %399, i32 0, i32 16
  %401 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %401, i32 0, i32 13
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* @VC1_CBPCY_P_VLC_BITS, align 4
  %407 = call i32 @get_vlc2(i32* %400, i32 %405, i32 %406, i32 2)
  store i32 %407, i32* %9, align 4
  %408 = call i32 (...) @GET_MQUANT()
  %409 = load i32, i32* %11, align 4
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i32 0, i32 15
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %8, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  store i32 %409, i32* %416, align 4
  %417 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %417, i32 0, i32 5
  %419 = load i32, i32* %418, align 8
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %440, label %421

421:                                              ; preds = %397
  %422 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i32 0, i32 13
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %440, label %426

426:                                              ; preds = %421
  %427 = load i32, i32* %13, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %440

429:                                              ; preds = %426
  %430 = load i32*, i32** %5, align 8
  %431 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ff_vc1_ttmb_vlc, align 8
  %432 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %432, i32 0, i32 4
  %434 = load i64, i64* %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @VC1_TTMB_VLC_BITS, align 4
  %439 = call i32 @get_vlc2(i32* %430, i32 %437, i32 %438, i32 2)
  store i32 %439, i32* %12, align 4
  br label %440

440:                                              ; preds = %429, %426, %421, %397
  br label %441

441:                                              ; preds = %440, %323
  br label %442

442:                                              ; preds = %441, %277
  store i32 0, i32* %19, align 4
  store i32 0, i32* %6, align 4
  br label %443

443:                                              ; preds = %765, %442
  %444 = load i32, i32* %6, align 4
  %445 = icmp slt i32 %444, 6
  br i1 %445, label %446, label %768

446:                                              ; preds = %443
  %447 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %447, i32 0, i32 14
  %449 = load i64**, i64*** %448, align 8
  %450 = getelementptr inbounds i64*, i64** %449, i64 0
  %451 = load i64*, i64** %450, align 8
  %452 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %452, i32 0, i32 4
  %454 = load i64*, i64** %453, align 8
  %455 = load i32, i32* %6, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i64, i64* %454, i64 %456
  %458 = load i64, i64* %457, align 8
  %459 = getelementptr inbounds i64, i64* %451, i64 %458
  store i64 0, i64* %459, align 8
  %460 = load i32, i32* %6, align 4
  %461 = ashr i32 %460, 2
  %462 = load i32, i32* %19, align 4
  %463 = add nsw i32 %462, %461
  store i32 %463, i32* %19, align 4
  %464 = load i32, i32* %9, align 4
  %465 = load i32, i32* %6, align 4
  %466 = sub nsw i32 5, %465
  %467 = ashr i32 %464, %466
  %468 = and i32 %467, 1
  store i32 %468, i32* %16, align 4
  %469 = load i32, i32* %6, align 4
  %470 = and i32 %469, 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %473

472:                                              ; preds = %446
  br label %485

473:                                              ; preds = %446
  %474 = load i32, i32* %6, align 4
  %475 = and i32 %474, 1
  %476 = mul nsw i32 %475, 8
  %477 = load i32, i32* %6, align 4
  %478 = and i32 %477, 2
  %479 = mul nsw i32 %478, 4
  %480 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %480, i32 0, i32 5
  %482 = load i32, i32* %481, align 8
  %483 = mul nsw i32 %479, %482
  %484 = add nsw i32 %476, %483
  br label %485

485:                                              ; preds = %473, %472
  %486 = phi i32 [ 0, %472 ], [ %484, %473 ]
  store i32 %486, i32* %20, align 4
  %487 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %488 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %487, i32 0, i32 13
  %489 = load i64, i64* %488, align 8
  %490 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %490, i32 0, i32 10
  %492 = load i64**, i64*** %491, align 8
  %493 = getelementptr inbounds i64*, i64** %492, i64 0
  %494 = load i64*, i64** %493, align 8
  %495 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %496 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %495, i32 0, i32 4
  %497 = load i64*, i64** %496, align 8
  %498 = load i32, i32* %6, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i64, i64* %497, i64 %499
  %501 = load i64, i64* %500, align 8
  %502 = getelementptr inbounds i64, i64* %494, i64 %501
  store i64 %489, i64* %502, align 8
  %503 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %503, i32 0, i32 13
  %505 = load i64, i64* %504, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %691

507:                                              ; preds = %485
  %508 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %508, i32 0, i32 11
  store i64 0, i64* %509, align 8
  %510 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %511 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %510, i32 0, i32 12
  store i64 0, i64* %511, align 8
  %512 = load i32, i32* %6, align 4
  %513 = icmp eq i32 %512, 2
  br i1 %513, label %522, label %514

514:                                              ; preds = %507
  %515 = load i32, i32* %6, align 4
  %516 = icmp eq i32 %515, 3
  br i1 %516, label %522, label %517

517:                                              ; preds = %514
  %518 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %519 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %518, i32 0, i32 12
  %520 = load i32, i32* %519, align 8
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %547, label %522

522:                                              ; preds = %517, %514, %507
  %523 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %524 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %523, i32 0, i32 10
  %525 = load i64**, i64*** %524, align 8
  %526 = getelementptr inbounds i64*, i64** %525, i64 0
  %527 = load i64*, i64** %526, align 8
  %528 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %529 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %528, i32 0, i32 4
  %530 = load i64*, i64** %529, align 8
  %531 = load i32, i32* %6, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i64, i64* %530, i64 %532
  %534 = load i64, i64* %533, align 8
  %535 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %536 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %535, i32 0, i32 6
  %537 = load i64*, i64** %536, align 8
  %538 = load i32, i32* %6, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i64, i64* %537, i64 %539
  %541 = load i64, i64* %540, align 8
  %542 = sub i64 %534, %541
  %543 = getelementptr inbounds i64, i64* %527, i64 %542
  %544 = load i64, i64* %543, align 8
  %545 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %546 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %545, i32 0, i32 12
  store i64 %544, i64* %546, align 8
  br label %547

547:                                              ; preds = %522, %517
  %548 = load i32, i32* %6, align 4
  %549 = icmp eq i32 %548, 1
  br i1 %549, label %558, label %550

550:                                              ; preds = %547
  %551 = load i32, i32* %6, align 4
  %552 = icmp eq i32 %551, 3
  br i1 %552, label %558, label %553

553:                                              ; preds = %550
  %554 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %555 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %576

558:                                              ; preds = %553, %550, %547
  %559 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %560 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %559, i32 0, i32 10
  %561 = load i64**, i64*** %560, align 8
  %562 = getelementptr inbounds i64*, i64** %561, i64 0
  %563 = load i64*, i64** %562, align 8
  %564 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %565 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %564, i32 0, i32 4
  %566 = load i64*, i64** %565, align 8
  %567 = load i32, i32* %6, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i64, i64* %566, i64 %568
  %570 = load i64, i64* %569, align 8
  %571 = sub i64 %570, 1
  %572 = getelementptr inbounds i64, i64* %563, i64 %571
  %573 = load i64, i64* %572, align 8
  %574 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %574, i32 0, i32 11
  store i64 %573, i64* %575, align 8
  br label %576

576:                                              ; preds = %558, %553
  %577 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %578 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %579 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %578, i32 0, i32 7
  %580 = load i32**, i32*** %579, align 8
  %581 = load i32, i32* %6, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i32*, i32** %580, i64 %582
  %584 = load i32*, i32** %583, align 8
  %585 = load i32, i32* %6, align 4
  %586 = load i32, i32* %16, align 4
  %587 = load i32, i32* %11, align 4
  %588 = load i32, i32* %6, align 4
  %589 = and i32 %588, 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %595

591:                                              ; preds = %576
  %592 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %593 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %592, i32 0, i32 9
  %594 = load i32, i32* %593, align 4
  br label %599

595:                                              ; preds = %576
  %596 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %597 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %596, i32 0, i32 8
  %598 = load i32, i32* %597, align 8
  br label %599

599:                                              ; preds = %595, %591
  %600 = phi i32 [ %594, %591 ], [ %598, %595 ]
  %601 = call i32 @vc1_decode_intra_block(%struct.TYPE_20__* %577, i32* %584, i32 %585, i32 %586, i32 %587, i32 %600)
  %602 = load i64, i64* @CONFIG_GRAY, align 8
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %604, label %617

604:                                              ; preds = %599
  %605 = load i32, i32* %6, align 4
  %606 = icmp sgt i32 %605, 3
  br i1 %606, label %607, label %617

607:                                              ; preds = %604
  %608 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %609 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %608, i32 0, i32 9
  %610 = load %struct.TYPE_19__*, %struct.TYPE_19__** %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 4
  %613 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %614 = and i32 %612, %613
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %617

616:                                              ; preds = %607
  br label %765

617:                                              ; preds = %607, %604, %599
  %618 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %619 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %618, i32 0, i32 7
  %620 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %619, i32 0, i32 0
  %621 = load i32 (i32*)*, i32 (i32*)** %620, align 8
  %622 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %623 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %622, i32 0, i32 7
  %624 = load i32**, i32*** %623, align 8
  %625 = load i32, i32* %6, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i32*, i32** %624, i64 %626
  %628 = load i32*, i32** %627, align 8
  %629 = call i32 %621(i32* %628)
  %630 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %631 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %630, i32 0, i32 6
  %632 = load i64, i64* %631, align 8
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %634, label %655

634:                                              ; preds = %617
  store i32 0, i32* %7, align 4
  br label %635

635:                                              ; preds = %651, %634
  %636 = load i32, i32* %7, align 4
  %637 = icmp slt i32 %636, 64
  br i1 %637, label %638, label %654

638:                                              ; preds = %635
  %639 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %640 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %639, i32 0, i32 7
  %641 = load i32**, i32*** %640, align 8
  %642 = load i32, i32* %6, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i32*, i32** %641, i64 %643
  %645 = load i32*, i32** %644, align 8
  %646 = load i32, i32* %7, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds i32, i32* %645, i64 %647
  %649 = load i32, i32* %648, align 4
  %650 = mul nsw i32 %649, 2
  store i32 %650, i32* %648, align 4
  br label %651

651:                                              ; preds = %638
  %652 = load i32, i32* %7, align 4
  %653 = add nsw i32 %652, 1
  store i32 %653, i32* %7, align 4
  br label %635

654:                                              ; preds = %635
  br label %655

655:                                              ; preds = %654, %617
  %656 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %657 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %656, i32 0, i32 11
  %658 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %657, i32 0, i32 0
  %659 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %658, align 8
  %660 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %661 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %660, i32 0, i32 7
  %662 = load i32**, i32*** %661, align 8
  %663 = load i32, i32* %6, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i32*, i32** %662, i64 %664
  %666 = load i32*, i32** %665, align 8
  %667 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %668 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %667, i32 0, i32 10
  %669 = load i64*, i64** %668, align 8
  %670 = load i32, i32* %19, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i64, i64* %669, i64 %671
  %673 = load i64, i64* %672, align 8
  %674 = load i32, i32* %20, align 4
  %675 = sext i32 %674 to i64
  %676 = add nsw i64 %673, %675
  %677 = load i32, i32* %6, align 4
  %678 = and i32 %677, 4
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %684

680:                                              ; preds = %655
  %681 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %682 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %681, i32 0, i32 8
  %683 = load i32, i32* %682, align 8
  br label %688

684:                                              ; preds = %655
  %685 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %686 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %685, i32 0, i32 5
  %687 = load i32, i32* %686, align 8
  br label %688

688:                                              ; preds = %684, %680
  %689 = phi i32 [ %683, %680 ], [ %687, %684 ]
  %690 = call i32 %659(i32* %666, i64 %676, i32 %689)
  br label %764

691:                                              ; preds = %485
  %692 = load i32, i32* %16, align 4
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %694, label %763

694:                                              ; preds = %691
  %695 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %696 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %697 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %696, i32 0, i32 7
  %698 = load i32**, i32*** %697, align 8
  %699 = load i32, i32* %6, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i32*, i32** %698, i64 %700
  %702 = load i32*, i32** %701, align 8
  %703 = load i32, i32* %6, align 4
  %704 = load i32, i32* %11, align 4
  %705 = load i32, i32* %12, align 4
  %706 = load i32, i32* %18, align 4
  %707 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %708 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %707, i32 0, i32 10
  %709 = load i64*, i64** %708, align 8
  %710 = load i32, i32* %19, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i64, i64* %709, i64 %711
  %713 = load i64, i64* %712, align 8
  %714 = load i32, i32* %20, align 4
  %715 = sext i32 %714 to i64
  %716 = add nsw i64 %713, %715
  %717 = load i32, i32* %6, align 4
  %718 = and i32 %717, 4
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %720, label %724

720:                                              ; preds = %694
  %721 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %722 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %721, i32 0, i32 8
  %723 = load i32, i32* %722, align 8
  br label %728

724:                                              ; preds = %694
  %725 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %726 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %725, i32 0, i32 5
  %727 = load i32, i32* %726, align 8
  br label %728

728:                                              ; preds = %724, %720
  %729 = phi i32 [ %723, %720 ], [ %727, %724 ]
  %730 = load i64, i64* @CONFIG_GRAY, align 8
  %731 = icmp ne i64 %730, 0
  br i1 %731, label %732, label %745

732:                                              ; preds = %728
  %733 = load i32, i32* %6, align 4
  %734 = and i32 %733, 4
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %736, label %745

736:                                              ; preds = %732
  %737 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %738 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %737, i32 0, i32 9
  %739 = load %struct.TYPE_19__*, %struct.TYPE_19__** %738, align 8
  %740 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %739, i32 0, i32 0
  %741 = load i32, i32* %740, align 4
  %742 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %743 = and i32 %741, %742
  %744 = icmp ne i32 %743, 0
  br label %745

745:                                              ; preds = %736, %732, %728
  %746 = phi i1 [ false, %732 ], [ false, %728 ], [ %744, %736 ]
  %747 = zext i1 %746 to i32
  %748 = call i32 @vc1_decode_p_block(%struct.TYPE_20__* %695, i32* %702, i32 %703, i32 %704, i32 %705, i32 %706, i64 %716, i32 %729, i32 %747, i32* null)
  store i32 %748, i32* %26, align 4
  %749 = load i32, i32* %26, align 4
  %750 = icmp slt i32 %749, 0
  br i1 %750, label %751, label %753

751:                                              ; preds = %745
  %752 = load i32, i32* %26, align 4
  store i32 %752, i32* %2, align 4
  br label %769

753:                                              ; preds = %745
  %754 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %755 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %754, i32 0, i32 5
  %756 = load i32, i32* %755, align 8
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %762, label %758

758:                                              ; preds = %753
  %759 = load i32, i32* %12, align 4
  %760 = icmp slt i32 %759, 8
  br i1 %760, label %761, label %762

761:                                              ; preds = %758
  store i32 -1, i32* %12, align 4
  br label %762

762:                                              ; preds = %761, %758, %753
  store i32 0, i32* %18, align 4
  br label %763

763:                                              ; preds = %762, %691
  br label %764

764:                                              ; preds = %763, %688
  br label %765

765:                                              ; preds = %764, %616
  %766 = load i32, i32* %6, align 4
  %767 = add nsw i32 %766, 1
  store i32 %767, i32* %6, align 4
  br label %443

768:                                              ; preds = %443
  store i32 0, i32* %2, align 4
  br label %769

769:                                              ; preds = %768, %751, %355, %302, %224
  %770 = load i32, i32* %2, align 4
  ret i32 %770
}

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @GET_MVDATA(i32, i32) #1

declare dso_local i32 @decode012(i32*) #1

declare dso_local i32 @ff_vc1_pred_b_mv(%struct.TYPE_20__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @vc1_b_mc(%struct.TYPE_20__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @GET_MQUANT(...) #1

declare dso_local i32 @vc1_decode_intra_block(%struct.TYPE_20__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @vc1_decode_p_block(%struct.TYPE_20__*, i32*, i32, i32, i32, i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
