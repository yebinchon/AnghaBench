; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_csg.c_TryMergeBrushes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_csg.c_TryMergeBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64*, i64*, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i64, i32 }

@TEXINFO_NODE = common dso_local global i64 0, align 8
@mapplanes = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"brush duplicate plane\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @TryMergeBrushes(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %56, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 2
  %36 = icmp sgt i64 %27, %35
  br i1 %36, label %54, label %37

37:                                               ; preds = %20
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 2
  %53 = icmp slt i64 %44, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %37, %20
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %538

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %17

59:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %234, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %237

66:                                               ; preds = %60
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %71
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %11, align 8
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %102, %66
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %73
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i64 %84
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %12, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = xor i32 %91, 1
  %93 = icmp eq i32 %88, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %79
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %538

100:                                              ; preds = %94
  br label %105

101:                                              ; preds = %79
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %73

105:                                              ; preds = %100, %73
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %234

112:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %230, %112
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %233

119:                                              ; preds = %113
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %124
  store %struct.TYPE_12__* %125, %struct.TYPE_12__** %12, align 8
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %149, %119
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %126
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 %137
  store %struct.TYPE_12__* %138, %struct.TYPE_12__** %11, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = xor i32 %144, 1
  %146 = icmp eq i32 %141, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %132
  br label %152

148:                                              ; preds = %132
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %126

152:                                              ; preds = %147, %126
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %230

159:                                              ; preds = %152
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i64 %164
  store %struct.TYPE_12__* %165, %struct.TYPE_12__** %11, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %168, %171
  br i1 %172, label %173, label %195

173:                                              ; preds = %159
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @TEXINFO_NODE, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %173
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @TEXINFO_NODE, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %188, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %538

194:                                              ; preds = %185, %179, %173
  br label %230

195:                                              ; preds = %159
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i64 %200
  store %struct.TYPE_13__* %201, %struct.TYPE_13__** %14, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i64 %206
  store %struct.TYPE_13__* %207, %struct.TYPE_13__** %15, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @WindingsNonConvex(i32 %210, i32 %213, i32 %216, i32 %219, i32 %222, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %195
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %538

229:                                              ; preds = %195
  br label %230

230:                                              ; preds = %229, %194, %158
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %113

233:                                              ; preds = %113
  br label %234

234:                                              ; preds = %233, %111
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %6, align 4
  br label %60

237:                                              ; preds = %60
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %240, %243
  %245 = call %struct.TYPE_14__* @AllocBrush(i32 %244)
  store %struct.TYPE_14__* %245, %struct.TYPE_14__** %16, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 8
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 2
  store i32 0, i32* %252, align 8
  store i32 0, i32* %6, align 4
  br label %253

253:                                              ; preds = %316, %237
  %254 = load i32, i32* %6, align 4
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %319

259:                                              ; preds = %253
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 3
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %261, align 8
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i64 %264
  store %struct.TYPE_12__* %265, %struct.TYPE_12__** %11, align 8
  store i32 0, i32* %9, align 4
  br label %266

266:                                              ; preds = %312, %259
  %267 = load i32, i32* %9, align 4
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = icmp slt i32 %267, %270
  br i1 %271, label %272, label %315

272:                                              ; preds = %266
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i64 %277
  store %struct.TYPE_12__* %278, %struct.TYPE_12__** %12, align 8
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp eq i32 %281, %284
  br i1 %285, label %286, label %311

286:                                              ; preds = %272
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @TEXINFO_NODE, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %286
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 1
  store i64 %295, i64* %297, align 8
  br label %298

298:                                              ; preds = %292, %286
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @TEXINFO_NODE, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %298
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 1
  store i64 %307, i64* %309, align 8
  br label %310

310:                                              ; preds = %304, %298
  br label %311

311:                                              ; preds = %310, %272
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %9, align 4
  br label %266

315:                                              ; preds = %266
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %6, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %6, align 4
  br label %253

319:                                              ; preds = %253
  store i32 0, i32* %6, align 4
  br label %320

320:                                              ; preds = %417, %319
  %321 = load i32, i32* %6, align 4
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = icmp slt i32 %321, %324
  br i1 %325, label %326, label %420

326:                                              ; preds = %320
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 3
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %328, align 8
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i64 %331
  store %struct.TYPE_12__* %332, %struct.TYPE_12__** %11, align 8
  store i32 0, i32* %9, align 4
  br label %333

333:                                              ; preds = %356, %326
  %334 = load i32, i32* %9, align 4
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = icmp slt i32 %334, %337
  br i1 %338, label %339, label %359

339:                                              ; preds = %333
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 3
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** %341, align 8
  %343 = load i32, i32* %9, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i64 %344
  store %struct.TYPE_12__* %345, %struct.TYPE_12__** %12, align 8
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = xor i32 %351, 1
  %353 = icmp eq i32 %348, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %339
  br label %359

355:                                              ; preds = %339
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %9, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %9, align 4
  br label %333

359:                                              ; preds = %354, %333
  %360 = load i32, i32* %9, align 4
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = icmp slt i32 %360, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %359
  br label %417

366:                                              ; preds = %359
  store i32 0, i32* %9, align 4
  br label %367

367:                                              ; preds = %390, %366
  %368 = load i32, i32* %9, align 4
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = icmp slt i32 %368, %371
  br i1 %372, label %373, label %393

373:                                              ; preds = %367
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 3
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %375, align 8
  %377 = load i32, i32* %9, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i64 %378
  store %struct.TYPE_12__* %379, %struct.TYPE_12__** %13, align 8
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = icmp eq i32 %382, %385
  br i1 %386, label %387, label %389

387:                                              ; preds = %373
  %388 = call i32 @Log_Print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %393

389:                                              ; preds = %373
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %9, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %9, align 4
  br label %367

393:                                              ; preds = %387, %367
  %394 = load i32, i32* %9, align 4
  %395 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = icmp slt i32 %394, %397
  br i1 %398, label %399, label %400

399:                                              ; preds = %393
  br label %417

400:                                              ; preds = %393
  %401 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i32 0, i32 3
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %402, align 8
  %404 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i64 %407
  store %struct.TYPE_12__* %408, %struct.TYPE_12__** %13, align 8
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %410, align 8
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %414 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %415 = bitcast %struct.TYPE_12__* %413 to i8*
  %416 = bitcast %struct.TYPE_12__* %414 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %415, i8* align 8 %416, i64 24, i1 false)
  br label %417

417:                                              ; preds = %400, %399, %365
  %418 = load i32, i32* %6, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %6, align 4
  br label %320

420:                                              ; preds = %320
  store i32 0, i32* %7, align 4
  br label %421

421:                                              ; preds = %527, %420
  %422 = load i32, i32* %7, align 4
  %423 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = icmp slt i32 %422, %425
  br i1 %426, label %427, label %530

427:                                              ; preds = %421
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 3
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %429, align 8
  %431 = load i32, i32* %7, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i64 %432
  store %struct.TYPE_12__* %433, %struct.TYPE_12__** %12, align 8
  store i32 0, i32* %9, align 4
  br label %434

434:                                              ; preds = %466, %427
  %435 = load i32, i32* %9, align 4
  %436 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = icmp slt i32 %435, %438
  br i1 %439, label %440, label %469

440:                                              ; preds = %434
  %441 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %441, i32 0, i32 3
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** %442, align 8
  %444 = load i32, i32* %9, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i64 %445
  store %struct.TYPE_12__* %446, %struct.TYPE_12__** %11, align 8
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = icmp eq i32 %449, %452
  br i1 %453, label %454, label %455

454:                                              ; preds = %440
  br label %469

455:                                              ; preds = %440
  %456 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %457 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %460 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = xor i32 %461, 1
  %463 = icmp eq i32 %458, %462
  br i1 %463, label %464, label %465

464:                                              ; preds = %455
  br label %469

465:                                              ; preds = %455
  br label %466

466:                                              ; preds = %465
  %467 = load i32, i32* %9, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %9, align 4
  br label %434

469:                                              ; preds = %464, %454, %434
  %470 = load i32, i32* %9, align 4
  %471 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 8
  %474 = icmp slt i32 %470, %473
  br i1 %474, label %475, label %476

475:                                              ; preds = %469
  br label %527

476:                                              ; preds = %469
  store i32 0, i32* %9, align 4
  br label %477

477:                                              ; preds = %500, %476
  %478 = load i32, i32* %9, align 4
  %479 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %480 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = icmp slt i32 %478, %481
  br i1 %482, label %483, label %503

483:                                              ; preds = %477
  %484 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %485 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %484, i32 0, i32 3
  %486 = load %struct.TYPE_12__*, %struct.TYPE_12__** %485, align 8
  %487 = load i32, i32* %9, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i64 %488
  store %struct.TYPE_12__* %489, %struct.TYPE_12__** %13, align 8
  %490 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %491 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %494 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = icmp eq i32 %492, %495
  br i1 %496, label %497, label %499

497:                                              ; preds = %483
  %498 = call i32 @Log_Print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %503

499:                                              ; preds = %483
  br label %500

500:                                              ; preds = %499
  %501 = load i32, i32* %9, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %9, align 4
  br label %477

503:                                              ; preds = %497, %477
  %504 = load i32, i32* %9, align 4
  %505 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %506 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 8
  %508 = icmp slt i32 %504, %507
  br i1 %508, label %509, label %510

509:                                              ; preds = %503
  br label %527

510:                                              ; preds = %503
  %511 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %512 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %511, i32 0, i32 3
  %513 = load %struct.TYPE_12__*, %struct.TYPE_12__** %512, align 8
  %514 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %515 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %514, i32 0, i32 2
  %516 = load i32, i32* %515, align 8
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i64 %517
  store %struct.TYPE_12__* %518, %struct.TYPE_12__** %13, align 8
  %519 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %520 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %519, i32 0, i32 2
  %521 = load i32, i32* %520, align 8
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %520, align 8
  %523 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %524 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %525 = bitcast %struct.TYPE_12__* %523 to i8*
  %526 = bitcast %struct.TYPE_12__* %524 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %525, i8* align 8 %526, i64 24, i1 false)
  br label %527

527:                                              ; preds = %510, %509, %475
  %528 = load i32, i32* %7, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %7, align 4
  br label %421

530:                                              ; preds = %421
  %531 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %532 = call i32 @BSPBrushWindings(%struct.TYPE_14__* %531)
  %533 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %534 = call i32 @BoundBrush(%struct.TYPE_14__* %533)
  %535 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %536 = call i32 @CheckBSPBrush(%struct.TYPE_14__* %535)
  %537 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %537, %struct.TYPE_14__** %3, align 8
  br label %538

538:                                              ; preds = %530, %228, %193, %99, %54
  %539 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %539
}

declare dso_local i64 @WindingsNonConvex(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @AllocBrush(i32) #1

declare dso_local i32 @Log_Print(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BSPBrushWindings(%struct.TYPE_14__*) #1

declare dso_local i32 @BoundBrush(%struct.TYPE_14__*) #1

declare dso_local i32 @CheckBSPBrush(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
