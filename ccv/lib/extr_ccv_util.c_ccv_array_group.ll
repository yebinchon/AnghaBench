; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c_ccv_array_group.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c_ccv_array_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_array_group(%struct.TYPE_11__* %0, %struct.TYPE_11__** %1, i64 (i64, i64, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca i64 (i64, i64, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %6, align 8
  store i64 (i64, i64, i8*)* %2, i64 (i64, i64, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 24
  %25 = trunc i64 %24 to i32
  %26 = call i64 @ccmalloc(i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %53, %4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @ccv_array_get(%struct.TYPE_11__* %40, i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store i64 %42, i64* %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %34
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %28

56:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %213, %56
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %216

63:                                               ; preds = %57
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %213

72:                                               ; preds = %63
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %75
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %12, align 8
  br label %77

77:                                               ; preds = %82, %72
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = icmp ne %struct.TYPE_10__* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %12, align 8
  br label %77

86:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %209, %86
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %212

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %208

97:                                               ; preds = %93
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %208

105:                                              ; preds = %97
  %106 = load i64 (i64, i64, i8*)*, i64 (i64, i64, i8*)** %7, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call i64 %106(i64 %112, i64 %118, i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %208

122:                                              ; preds = %105
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 %125
  store %struct.TYPE_10__* %126, %struct.TYPE_10__** %13, align 8
  br label %127

127:                                              ; preds = %132, %122
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = icmp ne %struct.TYPE_10__* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %13, align 8
  br label %127

136:                                              ; preds = %127
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %139 = icmp ne %struct.TYPE_10__* %137, %138
  br i1 %139, label %140, label %207

140:                                              ; preds = %136
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %143, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  store %struct.TYPE_10__* %149, %struct.TYPE_10__** %151, align 8
  br label %170

152:                                              ; preds = %140
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  store %struct.TYPE_10__* %153, %struct.TYPE_10__** %155, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  %163 = zext i1 %162 to i32
  %164 = sext i32 %163 to i64
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, %164
  store i64 %168, i64* %166, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %169, %struct.TYPE_10__** %12, align 8
  br label %170

170:                                              ; preds = %152, %148
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i64 %173
  store %struct.TYPE_10__* %174, %struct.TYPE_10__** %14, align 8
  br label %175

175:                                              ; preds = %180, %170
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = icmp ne %struct.TYPE_10__* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %181, %struct.TYPE_10__** %15, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  store %struct.TYPE_10__* %184, %struct.TYPE_10__** %14, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  store %struct.TYPE_10__* %185, %struct.TYPE_10__** %187, align 8
  br label %175

188:                                              ; preds = %175
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i64 %191
  store %struct.TYPE_10__* %192, %struct.TYPE_10__** %14, align 8
  br label %193

193:                                              ; preds = %198, %188
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = icmp ne %struct.TYPE_10__* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %193
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %199, %struct.TYPE_10__** %16, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  store %struct.TYPE_10__* %202, %struct.TYPE_10__** %14, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  store %struct.TYPE_10__* %203, %struct.TYPE_10__** %205, align 8
  br label %193

206:                                              ; preds = %193
  br label %207

207:                                              ; preds = %206, %136
  br label %208

208:                                              ; preds = %207, %105, %97, %93
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %87

212:                                              ; preds = %87
  br label %213

213:                                              ; preds = %212, %71
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %57

216:                                              ; preds = %57
  %217 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  %219 = icmp eq %struct.TYPE_11__* %218, null
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call %struct.TYPE_11__* @ccv_array_new(i32 4, i32 %223, i32 0)
  %225 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %224, %struct.TYPE_11__** %225, align 8
  br label %230

226:                                              ; preds = %216
  %227 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = call i32 @ccv_array_clear(%struct.TYPE_11__* %228)
  br label %230

230:                                              ; preds = %226, %220
  %231 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  store %struct.TYPE_11__* %232, %struct.TYPE_11__** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %9, align 4
  br label %233

233:                                              ; preds = %279, %230
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %282

239:                                              ; preds = %233
  store i32 -1, i32* %10, align 4
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i64 %242
  store %struct.TYPE_10__* %243, %struct.TYPE_10__** %19, align 8
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %276

248:                                              ; preds = %239
  br label %249

249:                                              ; preds = %254, %248
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = icmp ne %struct.TYPE_10__* %252, null
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %256, align 8
  store %struct.TYPE_10__* %257, %struct.TYPE_10__** %19, align 8
  br label %249

258:                                              ; preds = %249
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp sge i64 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %258
  %264 = load i32, i32* %18, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %18, align 4
  %266 = xor i32 %264, -1
  %267 = sext i32 %266 to i64
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  store i64 %267, i64* %269, align 8
  br label %270

270:                                              ; preds = %263, %258
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = xor i64 %273, -1
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %10, align 4
  br label %276

276:                                              ; preds = %270, %239
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %278 = call i32 @ccv_array_push(%struct.TYPE_11__* %277, i32* %10)
  br label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %233

282:                                              ; preds = %233
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %284 = call i32 @ccfree(%struct.TYPE_10__* %283)
  %285 = load i32, i32* %18, align 4
  ret i32 %285
}

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @ccv_array_clear(%struct.TYPE_11__*) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ccfree(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
