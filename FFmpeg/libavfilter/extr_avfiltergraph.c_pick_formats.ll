; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_pick_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_pick_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__**, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @pick_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pick_formats(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  br label %10

10:                                               ; preds = %197, %1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %193, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %196

17:                                               ; preds = %11
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %22
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %8, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %74, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %39, i64 %41
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %73

47:                                               ; preds = %36
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %50, i64 %52
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %73

60:                                               ; preds = %47
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %63, i64 %65
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = call i32 @pick_format(%struct.TYPE_10__* %67, %struct.TYPE_10__* null)
  store i32 %68, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %265

72:                                               ; preds = %60
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %47, %36
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %30

77:                                               ; preds = %30
  br label %78

78:                                               ; preds = %77, %17
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %132

83:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %128, %83
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %131

90:                                               ; preds = %84
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %93, i64 %95
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = icmp ne %struct.TYPE_7__* %99, null
  br i1 %100, label %101, label %127

101:                                              ; preds = %90
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %104, i64 %106
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %127

114:                                              ; preds = %101
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %117, i64 %119
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = call i32 @pick_format(%struct.TYPE_10__* %121, %struct.TYPE_10__* null)
  store i32 %122, i32* %6, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %265

126:                                              ; preds = %114
  store i32 1, i32* %7, align 4
  br label %127

127:                                              ; preds = %126, %101, %90
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %84

131:                                              ; preds = %84
  br label %132

132:                                              ; preds = %131, %78
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %192

137:                                              ; preds = %132
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %192

142:                                              ; preds = %137
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %145, i64 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp sge i64 %149, 0
  br i1 %150, label %151, label %192

151:                                              ; preds = %142
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %188, %151
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %191

158:                                              ; preds = %152
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %161, i64 %163
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %158
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %172, i64 %174
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %179, i64 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = call i32 @pick_format(%struct.TYPE_10__* %176, %struct.TYPE_10__* %181)
  store i32 %182, i32* %6, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %169
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %2, align 4
  br label %265

186:                                              ; preds = %169
  store i32 1, i32* %7, align 4
  br label %187

187:                                              ; preds = %186, %158
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %5, align 4
  br label %152

191:                                              ; preds = %152
  br label %192

192:                                              ; preds = %191, %142, %137, %132
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %4, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %4, align 4
  br label %11

196:                                              ; preds = %11
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %10, label %200

200:                                              ; preds = %197
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %261, %200
  %202 = load i32, i32* %4, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %264

207:                                              ; preds = %201
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %209, align 8
  %211 = load i32, i32* %4, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %210, i64 %212
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  store %struct.TYPE_9__* %214, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %234, %207
  %216 = load i32, i32* %5, align 4
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %221, label %237

221:                                              ; preds = %215
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %223, align 8
  %225 = load i32, i32* %5, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %224, i64 %226
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = call i32 @pick_format(%struct.TYPE_10__* %228, %struct.TYPE_10__* null)
  store i32 %229, i32* %6, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %221
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %2, align 4
  br label %265

233:                                              ; preds = %221
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %5, align 4
  br label %215

237:                                              ; preds = %215
  store i32 0, i32* %5, align 4
  br label %238

238:                                              ; preds = %257, %237
  %239 = load i32, i32* %5, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %260

244:                                              ; preds = %238
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %246, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %247, i64 %249
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = call i32 @pick_format(%struct.TYPE_10__* %251, %struct.TYPE_10__* null)
  store i32 %252, i32* %6, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %244
  %255 = load i32, i32* %6, align 4
  store i32 %255, i32* %2, align 4
  br label %265

256:                                              ; preds = %244
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %5, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %5, align 4
  br label %238

260:                                              ; preds = %238
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %4, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %4, align 4
  br label %201

264:                                              ; preds = %201
  store i32 0, i32* %2, align 4
  br label %265

265:                                              ; preds = %264, %254, %231, %184, %124, %70
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local i32 @pick_format(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
