; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_4xm.c_read_huffman_tables.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_4xm.c_read_huffman_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid data in read_huffman_tables\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"ptr overflow in read_huffman_tables\0A\00", align 1
@__const.read_huffman_tables.min_freq = private unnamed_addr constant [2 x i32] [i32 65536, i32 65536], align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"vlc length overflow\0A\00", align 1
@ACDC_VLC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*, i32)* @read_huffman_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_huffman_tables(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [512 x i32], align 16
  %9 = alloca [512 x i32], align 16
  %10 = alloca [512 x i32], align 16
  %11 = alloca [257 x i32], align 16
  %12 = alloca [257 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %25 = bitcast [512 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 2048, i1 false)
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** %15, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %16, align 8
  %31 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %32 = call i32 @memset(i32* %31, i32 -1, i32 2048)
  %33 = load i32*, i32** %15, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %15, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i32*, i32** %15, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %15, align 8
  %38 = load i32, i32* %36, align 4
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %83, %3
  %40 = load i32*, i32** %16, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = sub nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  %50 = call i32 @FFMAX(i32 %49, i32 0)
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %45, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %39
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = call i32 @av_log(i32 %57, i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %277

60:                                               ; preds = %39
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %73, %60
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i32*, i32** %15, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %15, align 8
  %69 = load i32, i32* %67, align 4
  %70 = load i32, i32* %18, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 %71
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %18, align 4
  br label %62

76:                                               ; preds = %62
  %77 = load i32*, i32** %15, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %15, align 8
  %79 = load i32, i32* %77, align 4
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %87

83:                                               ; preds = %76
  %84 = load i32*, i32** %15, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %15, align 8
  %86 = load i32, i32* %84, align 4
  store i32 %86, i32* %14, align 4
  br label %39

87:                                               ; preds = %82
  %88 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 256
  store i32 1, i32* %88, align 16
  br label %89

89:                                               ; preds = %98, %87
  %90 = load i32*, i32** %15, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = and i64 %95, 3
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i32*, i32** %15, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %15, align 8
  br label %89

101:                                              ; preds = %89
  %102 = load i32*, i32** %15, align 8
  %103 = load i32*, i32** %16, align 8
  %104 = icmp ugt i32* %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @AV_LOG_ERROR, align 4
  %110 = call i32 @av_log(i32 %108, i32 %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %277

111:                                              ; preds = %101
  store i32 257, i32* %17, align 4
  br label %112

112:                                              ; preds = %211, %111
  %113 = load i32, i32* %17, align 4
  %114 = icmp slt i32 %113, 512
  br i1 %114, label %115, label %214

115:                                              ; preds = %112
  %116 = bitcast [2 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 bitcast ([2 x i32]* @__const.read_huffman_tables.min_freq to i8*), i64 8, i1 false)
  %117 = bitcast [2 x i32]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %117, i8 0, i64 8, i1 false)
  store i32 0, i32* %21, align 4
  br label %118

118:                                              ; preds = %169, %115
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %172

122:                                              ; preds = %118
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %169

129:                                              ; preds = %122
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %168

137:                                              ; preds = %129
  %138 = load i32, i32* %21, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %137
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 %147, i32* %148, align 4
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* %21, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %21, align 4
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %157, i32* %158, align 4
  br label %167

159:                                              ; preds = %137
  %160 = load i32, i32* %21, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %21, align 4
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %159, %145
  br label %168

168:                                              ; preds = %167, %129
  br label %169

169:                                              ; preds = %168, %128
  %170 = load i32, i32* %21, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %21, align 4
  br label %118

172:                                              ; preds = %118
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 65536
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %214

177:                                              ; preds = %172
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %179, %181
  %183 = load i32, i32* %17, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 %184
  store i32 %182, i32* %185, align 4
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 %188
  store i32 0, i32* %189, align 4
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 %192
  store i32 1, i32* %193, align 4
  %194 = load i32, i32* %17, align 4
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 %197
  store i32 %194, i32* %198, align 4
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 %201
  store i32 %194, i32* %202, align 4
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 %205
  store i32 0, i32* %206, align 4
  %207 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 %209
  store i32 0, i32* %210, align 4
  br label %211

211:                                              ; preds = %177
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %17, align 4
  br label %112

214:                                              ; preds = %176, %112
  store i32 0, i32* %17, align 4
  br label %215

215:                                              ; preds = %260, %214
  %216 = load i32, i32* %17, align 4
  %217 = icmp slt i32 %216, 257
  br i1 %217, label %218, label %263

218:                                              ; preds = %215
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %219 = load i32, i32* %17, align 4
  store i32 %219, i32* %22, align 4
  br label %220

220:                                              ; preds = %246, %218
  %221 = load i32, i32* %22, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, -1
  br i1 %225, label %226, label %251

226:                                              ; preds = %220
  %227 = load i32, i32* %22, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %23, align 4
  %232 = shl i32 %230, %231
  %233 = load i32, i32* %24, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %24, align 4
  %235 = load i32, i32* %23, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %23, align 4
  %237 = load i32, i32* %23, align 4
  %238 = icmp sgt i32 %237, 31
  br i1 %238, label %239, label %245

239:                                              ; preds = %226
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @AV_LOG_ERROR, align 4
  %244 = call i32 @av_log(i32 %242, i32 %243, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %245

245:                                              ; preds = %239, %226
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %22, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %22, align 4
  br label %220

251:                                              ; preds = %220
  %252 = load i32, i32* %24, align 4
  %253 = load i32, i32* %17, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [257 x i32], [257 x i32]* %12, i64 0, i64 %254
  store i32 %252, i32* %255, align 4
  %256 = load i32, i32* %23, align 4
  %257 = load i32, i32* %17, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %258
  store i32 %256, i32* %259, align 4
  br label %260

260:                                              ; preds = %251
  %261 = load i32, i32* %17, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %17, align 4
  br label %215

263:                                              ; preds = %215
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = call i32 @ff_free_vlc(i32* %265)
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load i32, i32* @ACDC_VLC_BITS, align 4
  %270 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 0
  %271 = getelementptr inbounds [257 x i32], [257 x i32]* %12, i64 0, i64 0
  %272 = call i64 @init_vlc(i32* %268, i32 %269, i32 257, i32* %270, i32 1, i32 1, i32* %271, i32 4, i32 4, i32 0)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %263
  store i32* null, i32** %4, align 8
  br label %277

275:                                              ; preds = %263
  %276 = load i32*, i32** %15, align 8
  store i32* %276, i32** %4, align 8
  br label %277

277:                                              ; preds = %275, %274, %105, %54
  %278 = load i32*, i32** %4, align 8
  ret i32* %278
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i32 @av_log(i32, i32, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ff_free_vlc(i32*) #2

declare dso_local i64 @init_vlc(i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
