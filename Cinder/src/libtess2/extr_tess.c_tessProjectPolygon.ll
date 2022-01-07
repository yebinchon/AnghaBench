; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_tess.c_tessProjectPolygon.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_tess.c_tessProjectPolygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i32*, i64*, i64*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32*, i64, %struct.TYPE_8__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_UNIT_X = common dso_local global i32 0, align 4
@S_UNIT_Y = common dso_local global i32 0, align 4
@w = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tessProjectPolygon(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %4, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %1
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %48 = call i32 @ComputeNormal(%struct.TYPE_9__* %46, i32* %47)
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %45, %41, %37, %1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %6, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %7, align 8
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %58 = call i32 @LongAxis(i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* @S_UNIT_X, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = srem i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load i32, i32* @S_UNIT_Y, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 2
  %74 = srem i32 %73, 3
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %50
  %87 = load i32, i32* @S_UNIT_Y, align 4
  %88 = sub nsw i32 0, %87
  br label %91

89:                                               ; preds = %50
  %90 = load i32, i32* @S_UNIT_Y, align 4
  br label %91

91:                                               ; preds = %89, %86
  %92 = phi i32 [ %88, %86 ], [ %90, %89 ]
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  %96 = srem i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = load i32, i32* @S_UNIT_X, align 4
  br label %109

106:                                              ; preds = %91
  %107 = load i32, i32* @S_UNIT_X, align 4
  %108 = sub nsw i32 0, %107
  br label %109

109:                                              ; preds = %106, %104
  %110 = phi i32 [ %105, %104 ], [ %108, %106 ]
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 2
  %114 = srem i32 %113, 3
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  store i32 %110, i32* %116, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  store %struct.TYPE_8__* %119, %struct.TYPE_8__** %3, align 8
  br label %120

120:                                              ; preds = %141, %109
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = icmp ne %struct.TYPE_8__* %121, %122
  br i1 %123, label %124, label %145

124:                                              ; preds = %120
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = call i8* @Dot(i32* %127, i32* %128)
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = call i8* @Dot(i32* %135, i32* %136)
  %138 = ptrtoint i8* %137 to i64
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %124
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  store %struct.TYPE_8__* %144, %struct.TYPE_8__** %3, align 8
  br label %120

145:                                              ; preds = %120
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %150 = call i32 @CheckOrientation(%struct.TYPE_9__* %149)
  br label %151

151:                                              ; preds = %148, %145
  store i32 1, i32* %9, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  store %struct.TYPE_8__* %154, %struct.TYPE_8__** %3, align 8
  br label %155

155:                                              ; preds = %259, %151
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = icmp ne %struct.TYPE_8__* %156, %157
  br i1 %158, label %159, label %263

159:                                              ; preds = %155
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %185

162:                                              ; preds = %159
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 4
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 0
  store i64 %165, i64* %169, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 3
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  store i64 %165, i64* %173, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 4
  %179 = load i64*, i64** %178, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 1
  store i64 %176, i64* %180, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 3
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  store i64 %176, i64* %184, align 8
  store i32 0, i32* %9, align 4
  br label %258

185:                                              ; preds = %159
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 3
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp slt i64 %188, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %185
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  store i64 %198, i64* %202, align 8
  br label %203

203:                                              ; preds = %195, %185
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 4
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %206, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %203
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 4
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 0
  store i64 %216, i64* %220, align 8
  br label %221

221:                                              ; preds = %213, %203
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 3
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp slt i64 %224, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %221
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 3
  %237 = load i64*, i64** %236, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 1
  store i64 %234, i64* %238, align 8
  br label %239

239:                                              ; preds = %231, %221
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 4
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp sgt i64 %242, %247
  br i1 %248, label %249, label %257

249:                                              ; preds = %239
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 4
  %255 = load i64*, i64** %254, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 1
  store i64 %252, i64* %256, align 8
  br label %257

257:                                              ; preds = %249, %239
  br label %258

258:                                              ; preds = %257, %162
  br label %259

259:                                              ; preds = %258
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 3
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  store %struct.TYPE_8__* %262, %struct.TYPE_8__** %3, align 8
  br label %155

263:                                              ; preds = %155
  ret void
}

declare dso_local i32 @ComputeNormal(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @LongAxis(i32*) #1

declare dso_local i8* @Dot(i32*, i32*) #1

declare dso_local i32 @CheckOrientation(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
