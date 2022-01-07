; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_update_ps_streams.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_update_ps_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32 }

@st2codec = common dso_local global %struct.TYPE_10__* null, align 8
@U = common dso_local global i64 0, align 8
@P = common dso_local global i64 0, align 8
@V = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32, i32)* @update_ps_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_ps_streams(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @st2codec, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i32 [ %24, %18 ], [ %26, %25 ]
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %237, %27
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %240

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %49, %37
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %113

63:                                               ; preds = %51
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %113

74:                                               ; preds = %63
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @U, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %74
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %240

90:                                               ; preds = %86
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* @P, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %110, label %94

94:                                               ; preds = %90
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* @U, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %110, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %14, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %99, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %98, %94, %90
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %6, align 4
  br label %316

112:                                              ; preds = %98
  br label %240

113:                                              ; preds = %74, %63, %51
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %114, %123
  br i1 %124, label %125, label %177

125:                                              ; preds = %113
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %126, %135
  br i1 %136, label %137, label %177

137:                                              ; preds = %125
  %138 = load i64, i64* %14, align 8
  %139 = load i64, i64* @P, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @U, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  br label %240

154:                                              ; preds = %141, %137
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* @P, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %174, label %158

158:                                              ; preds = %154
  %159 = load i64, i64* %14, align 8
  %160 = load i64, i64* @U, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %174, label %162

162:                                              ; preds = %158
  %163 = load i64, i64* %14, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %163, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %162, %158, %154
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %6, align 4
  br label %316

176:                                              ; preds = %162
  br label %240

177:                                              ; preds = %125, %113
  %178 = load i64, i64* %14, align 8
  %179 = load i64, i64* @V, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %236

181:                                              ; preds = %177
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @V, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %236

193:                                              ; preds = %181
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp sle i32 %194, %203
  br i1 %204, label %205, label %235

205:                                              ; preds = %193
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp sle i32 %206, %215
  br i1 %216, label %217, label %235

217:                                              ; preds = %205
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %219 = call i32 @new_pes(%struct.TYPE_9__* %218)
  store i32 %219, i32* %15, align 4
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = load i32, i32* %15, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i64 %225
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = load i32, i32* %12, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i64 %232
  %234 = call i32 @memcpy(%struct.TYPE_11__* %226, %struct.TYPE_11__* %233, i32 4)
  br label %240

235:                                              ; preds = %205, %193
  br label %236

236:                                              ; preds = %235, %181, %177
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %12, align 4
  br label %30

240:                                              ; preds = %217, %176, %153, %112, %89, %30
  %241 = load i32, i32* %12, align 4
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %241, %245
  br i1 %246, label %247, label %278

247:                                              ; preds = %240
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %249 = call i32 @new_pes(%struct.TYPE_9__* %248)
  store i32 %249, i32* %12, align 4
  %250 = load i32, i32* %13, align 4
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i64 %258
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %262, align 8
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i64 %265
  %267 = call i32 @memcpy(%struct.TYPE_11__* %259, %struct.TYPE_11__* %266, i32 4)
  br label %277

268:                                              ; preds = %247
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %271, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 3
  store i32 -1, i32* %276, align 8
  br label %277

277:                                              ; preds = %268, %252
  br label %278

278:                                              ; preds = %277, %240
  %279 = load i32, i32* %8, align 4
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %282, align 8
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  store i32 %279, i32* %287, align 8
  %288 = load i32, i32* %9, align 4
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %291, align 8
  %293 = load i32, i32* %12, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  store i32 %288, i32* %296, align 4
  %297 = load i32, i32* %10, align 4
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %300, align 8
  %302 = load i32, i32* %12, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 4
  store i32 %297, i32* %305, align 4
  %306 = load i64, i64* %14, align 8
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %309, align 8
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 2
  store i64 %306, i64* %314, align 8
  %315 = load i32, i32* %12, align 4
  store i32 %315, i32* %6, align 4
  br label %316

316:                                              ; preds = %278, %174, %110
  %317 = load i32, i32* %6, align 4
  ret i32 %317
}

declare dso_local i32 @new_pes(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
