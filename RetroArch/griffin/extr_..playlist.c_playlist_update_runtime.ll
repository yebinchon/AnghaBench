; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_playlist_update_runtime.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_playlist_update_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, %struct.playlist_entry* }
%struct.playlist_entry = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_update_runtime(%struct.TYPE_3__* %0, i64 %1, %struct.playlist_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.playlist_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.playlist_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.playlist_entry* %2, %struct.playlist_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.playlist_entry* null, %struct.playlist_entry** %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %4
  br label %464

19:                                               ; preds = %12
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load %struct.playlist_entry*, %struct.playlist_entry** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i64 %23
  store %struct.playlist_entry* %24, %struct.playlist_entry** %9, align 8
  %25 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %26 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %25, i32 0, i32 13
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %69

29:                                               ; preds = %19
  %30 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %31 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %30, i32 0, i32 13
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %34 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %33, i32 0, i32 13
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %32, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %29
  %38 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %39 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %38, i32 0, i32 13
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %44 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %43, i32 0, i32 13
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @free(i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %49 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %48, i32 0, i32 13
  store i32* null, i32** %49, align 8
  %50 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %51 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %50, i32 0, i32 13
  %52 = load i32*, i32** %51, align 8
  %53 = call i8* @strdup(i32* %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %56 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %55, i32 0, i32 13
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %61, %47
  %65 = phi i1 [ true, %47 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %64, %29, %19
  %70 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %71 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %70, i32 0, i32 12
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %114

74:                                               ; preds = %69
  %75 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %76 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %75, i32 0, i32 12
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %79 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %78, i32 0, i32 12
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %77, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %74
  %83 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %84 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %83, i32 0, i32 12
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %89 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %88, i32 0, i32 12
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @free(i32* %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %94 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %93, i32 0, i32 12
  store i32* null, i32** %94, align 8
  %95 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %96 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %95, i32 0, i32 12
  %97 = load i32*, i32** %96, align 8
  %98 = call i8* @strdup(i32* %97)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %101 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %100, i32 0, i32 12
  store i32* %99, i32** %101, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %106, %92
  %110 = phi i1 [ true, %92 ], [ %108, %106 ]
  %111 = zext i1 %110 to i32
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %109, %74, %69
  %115 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %116 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %119 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %114
  %123 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %124 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %127 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br label %135

135:                                              ; preds = %132, %122
  %136 = phi i1 [ true, %122 ], [ %134, %132 ]
  %137 = zext i1 %136 to i32
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %135, %114
  %141 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %142 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %145 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %143, %146
  br i1 %147, label %148, label %166

148:                                              ; preds = %140
  %149 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %150 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %153 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %148
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br label %161

161:                                              ; preds = %158, %148
  %162 = phi i1 [ true, %148 ], [ %160, %158 ]
  %163 = zext i1 %162 to i32
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %161, %140
  %167 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %168 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %171 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %166
  %175 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %176 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %179 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %174
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br label %187

187:                                              ; preds = %184, %174
  %188 = phi i1 [ true, %174 ], [ %186, %184 ]
  %189 = zext i1 %188 to i32
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %187, %166
  %193 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %194 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %197 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %195, %198
  br i1 %199, label %200, label %218

200:                                              ; preds = %192
  %201 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %202 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %205 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %204, i32 0, i32 3
  store i64 %203, i64* %205, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %200
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br label %213

213:                                              ; preds = %210, %200
  %214 = phi i1 [ true, %200 ], [ %212, %210 ]
  %215 = zext i1 %214 to i32
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %213, %192
  %219 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %220 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %223 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %221, %224
  br i1 %225, label %226, label %244

226:                                              ; preds = %218
  %227 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %228 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %231 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %230, i32 0, i32 4
  store i64 %229, i64* %231, align 8
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %226
  %237 = load i32, i32* %8, align 4
  %238 = icmp ne i32 %237, 0
  br label %239

239:                                              ; preds = %236, %226
  %240 = phi i1 [ true, %226 ], [ %238, %236 ]
  %241 = zext i1 %240 to i32
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %239, %218
  %245 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %246 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %245, i32 0, i32 5
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %249 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %248, i32 0, i32 5
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %247, %250
  br i1 %251, label %252, label %270

252:                                              ; preds = %244
  %253 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %254 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %253, i32 0, i32 5
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %257 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %256, i32 0, i32 5
  store i64 %255, i64* %257, align 8
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %252
  %263 = load i32, i32* %8, align 4
  %264 = icmp ne i32 %263, 0
  br label %265

265:                                              ; preds = %262, %252
  %266 = phi i1 [ true, %252 ], [ %264, %262 ]
  %267 = zext i1 %266 to i32
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 8
  br label %270

270:                                              ; preds = %265, %244
  %271 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %272 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %271, i32 0, i32 6
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %275 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %274, i32 0, i32 6
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %273, %276
  br i1 %277, label %278, label %296

278:                                              ; preds = %270
  %279 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %280 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %279, i32 0, i32 6
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %283 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %282, i32 0, i32 6
  store i64 %281, i64* %283, align 8
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %278
  %289 = load i32, i32* %8, align 4
  %290 = icmp ne i32 %289, 0
  br label %291

291:                                              ; preds = %288, %278
  %292 = phi i1 [ true, %278 ], [ %290, %288 ]
  %293 = zext i1 %292 to i32
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 8
  br label %296

296:                                              ; preds = %291, %270
  %297 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %298 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %297, i32 0, i32 7
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %301 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %300, i32 0, i32 7
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %299, %302
  br i1 %303, label %304, label %322

304:                                              ; preds = %296
  %305 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %306 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %305, i32 0, i32 7
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %309 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %308, i32 0, i32 7
  store i64 %307, i64* %309, align 8
  %310 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %304
  %315 = load i32, i32* %8, align 4
  %316 = icmp ne i32 %315, 0
  br label %317

317:                                              ; preds = %314, %304
  %318 = phi i1 [ true, %304 ], [ %316, %314 ]
  %319 = zext i1 %318 to i32
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 1
  store i32 %319, i32* %321, align 8
  br label %322

322:                                              ; preds = %317, %296
  %323 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %324 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %323, i32 0, i32 8
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %327 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %326, i32 0, i32 8
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %325, %328
  br i1 %329, label %330, label %348

330:                                              ; preds = %322
  %331 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %332 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %331, i32 0, i32 8
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %335 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %334, i32 0, i32 8
  store i64 %333, i64* %335, align 8
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %330
  %341 = load i32, i32* %8, align 4
  %342 = icmp ne i32 %341, 0
  br label %343

343:                                              ; preds = %340, %330
  %344 = phi i1 [ true, %330 ], [ %342, %340 ]
  %345 = zext i1 %344 to i32
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 8
  br label %348

348:                                              ; preds = %343, %322
  %349 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %350 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %349, i32 0, i32 9
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %353 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %352, i32 0, i32 9
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %351, %354
  br i1 %355, label %356, label %374

356:                                              ; preds = %348
  %357 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %358 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %357, i32 0, i32 9
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %361 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %360, i32 0, i32 9
  store i64 %359, i64* %361, align 8
  %362 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %369, label %366

366:                                              ; preds = %356
  %367 = load i32, i32* %8, align 4
  %368 = icmp ne i32 %367, 0
  br label %369

369:                                              ; preds = %366, %356
  %370 = phi i1 [ true, %356 ], [ %368, %366 ]
  %371 = zext i1 %370 to i32
  %372 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %372, i32 0, i32 1
  store i32 %371, i32* %373, align 8
  br label %374

374:                                              ; preds = %369, %348
  %375 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %376 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %375, i32 0, i32 11
  %377 = load i32*, i32** %376, align 8
  %378 = icmp ne i32* %377, null
  br i1 %378, label %379, label %419

379:                                              ; preds = %374
  %380 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %381 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %380, i32 0, i32 11
  %382 = load i32*, i32** %381, align 8
  %383 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %384 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %383, i32 0, i32 11
  %385 = load i32*, i32** %384, align 8
  %386 = icmp ne i32* %382, %385
  br i1 %386, label %387, label %419

387:                                              ; preds = %379
  %388 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %389 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %388, i32 0, i32 11
  %390 = load i32*, i32** %389, align 8
  %391 = icmp ne i32* %390, null
  br i1 %391, label %392, label %397

392:                                              ; preds = %387
  %393 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %394 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %393, i32 0, i32 11
  %395 = load i32*, i32** %394, align 8
  %396 = call i32 @free(i32* %395)
  br label %397

397:                                              ; preds = %392, %387
  %398 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %399 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %398, i32 0, i32 11
  store i32* null, i32** %399, align 8
  %400 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %401 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %400, i32 0, i32 11
  %402 = load i32*, i32** %401, align 8
  %403 = call i8* @strdup(i32* %402)
  %404 = bitcast i8* %403 to i32*
  %405 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %406 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %405, i32 0, i32 11
  store i32* %404, i32** %406, align 8
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %397
  %412 = load i32, i32* %8, align 4
  %413 = icmp ne i32 %412, 0
  br label %414

414:                                              ; preds = %411, %397
  %415 = phi i1 [ true, %397 ], [ %413, %411 ]
  %416 = zext i1 %415 to i32
  %417 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 1
  store i32 %416, i32* %418, align 8
  br label %419

419:                                              ; preds = %414, %379, %374
  %420 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %421 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %420, i32 0, i32 10
  %422 = load i32*, i32** %421, align 8
  %423 = icmp ne i32* %422, null
  br i1 %423, label %424, label %464

424:                                              ; preds = %419
  %425 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %426 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %425, i32 0, i32 10
  %427 = load i32*, i32** %426, align 8
  %428 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %429 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %428, i32 0, i32 10
  %430 = load i32*, i32** %429, align 8
  %431 = icmp ne i32* %427, %430
  br i1 %431, label %432, label %464

432:                                              ; preds = %424
  %433 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %434 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %433, i32 0, i32 10
  %435 = load i32*, i32** %434, align 8
  %436 = icmp ne i32* %435, null
  br i1 %436, label %437, label %442

437:                                              ; preds = %432
  %438 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %439 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %438, i32 0, i32 10
  %440 = load i32*, i32** %439, align 8
  %441 = call i32 @free(i32* %440)
  br label %442

442:                                              ; preds = %437, %432
  %443 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %444 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %443, i32 0, i32 10
  store i32* null, i32** %444, align 8
  %445 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %446 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %445, i32 0, i32 10
  %447 = load i32*, i32** %446, align 8
  %448 = call i8* @strdup(i32* %447)
  %449 = bitcast i8* %448 to i32*
  %450 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %451 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %450, i32 0, i32 10
  store i32* %449, i32** %451, align 8
  %452 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 8
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %459, label %456

456:                                              ; preds = %442
  %457 = load i32, i32* %8, align 4
  %458 = icmp ne i32 %457, 0
  br label %459

459:                                              ; preds = %456, %442
  %460 = phi i1 [ true, %442 ], [ %458, %456 ]
  %461 = zext i1 %460 to i32
  %462 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i32 0, i32 1
  store i32 %461, i32* %463, align 8
  br label %464

464:                                              ; preds = %18, %459, %424, %419
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @strdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
