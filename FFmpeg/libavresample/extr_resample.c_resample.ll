; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_resample.c_resample.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_resample.c_resample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (%struct.TYPE_4__*, i8*, i32, i8*, i32, i32)*, i32 (i8*, i32, i8*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@AVERROR_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i8*, i32*, i32, i32, i32, i32)* @resample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resample(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %19, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %20, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %35, %38
  store i32 %39, i32* %21, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %42, %45
  store i32 %46, i32* %22, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %23, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %8
  %60 = load i32, i32* @EINVAL, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %9, align 4
  br label %274

62:                                               ; preds = %8
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %145

65:                                               ; preds = %62
  %66 = load i32, i32* %19, align 4
  %67 = shl i32 %66, 32
  store i32 %67, i32* %24, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 4294967296, %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = sdiv i64 %72, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %25, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %19, align 4
  %83 = sub i32 %81, %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = mul i32 %83, %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = udiv i32 %87, %90
  %92 = call i32 @FFMIN(i32 %79, i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load i8*, i8** %11, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %117

95:                                               ; preds = %65
  store i32 0, i32* %18, align 4
  br label %96

96:                                               ; preds = %113, %95
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 10
  %103 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %102, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load i8*, i8** %12, align 8
  %107 = load i32, i32* %24, align 4
  %108 = ashr i32 %107, 32
  %109 = call i32 %103(i8* %104, i32 %105, i8* %106, i32 %108)
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* %24, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %24, align 4
  br label %113

113:                                              ; preds = %100
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %18, align 4
  br label %96

116:                                              ; preds = %96
  br label %119

117:                                              ; preds = %65
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %18, align 4
  br label %119

119:                                              ; preds = %117, %116
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %22, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %19, align 4
  %124 = add i32 %123, %122
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %21, align 4
  %128 = mul nsw i32 %126, %127
  %129 = add nsw i32 %125, %128
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = sdiv i32 %129, %132
  %134 = load i32, i32* %19, align 4
  %135 = add i32 %134, %133
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %21, align 4
  %139 = mul nsw i32 %137, %138
  %140 = add nsw i32 %136, %139
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = srem i32 %140, %143
  store i32 %144, i32* %20, align 4
  br label %223

145:                                              ; preds = %62
  store i32 0, i32* %18, align 4
  br label %146

146:                                              ; preds = %219, %145
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %222

150:                                              ; preds = %146
  %151 = load i32, i32* %19, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = lshr i32 %151, %154
  store i32 %155, i32* %26, align 4
  %156 = load i32, i32* %26, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %156, %159
  %161 = load i32, i32* %14, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %150
  br label %222

164:                                              ; preds = %150
  %165 = load i8*, i8** %11, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 9
  %170 = load i32 (%struct.TYPE_4__*, i8*, i32, i8*, i32, i32)*, i32 (%struct.TYPE_4__*, i8*, i32, i8*, i32, i32)** %169, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = load i32, i32* %18, align 4
  %174 = load i8*, i8** %12, align 8
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %20, align 4
  %177 = call i32 %170(%struct.TYPE_4__* %171, i8* %172, i32 %173, i8* %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %167, %164
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* %20, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %20, align 4
  %182 = load i32, i32* %22, align 4
  %183 = load i32, i32* %19, align 4
  %184 = add i32 %183, %182
  store i32 %184, i32* %19, align 4
  %185 = load i32, i32* %20, align 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = icmp sge i32 %185, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %178
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %20, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %20, align 4
  %196 = load i32, i32* %19, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %19, align 4
  br label %198

198:                                              ; preds = %190, %178
  %199 = load i32, i32* %18, align 4
  %200 = add nsw i32 %199, 1
  %201 = load i32, i32* %23, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %198
  store i32 0, i32* %23, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = srem i32 %206, %209
  store i32 %210, i32* %21, align 4
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = sdiv i32 %213, %216
  store i32 %217, i32* %22, align 4
  br label %218

218:                                              ; preds = %203, %198
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %18, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %18, align 4
  br label %146

222:                                              ; preds = %163, %146
  br label %223

223:                                              ; preds = %222, %119
  %224 = load i32*, i32** %13, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %233

226:                                              ; preds = %223
  %227 = load i32, i32* %19, align 4
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = lshr i32 %227, %230
  %232 = load i32*, i32** %13, align 8
  store i32 %231, i32* %232, align 4
  br label %233

233:                                              ; preds = %226, %223
  %234 = load i32, i32* %16, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %272

236:                                              ; preds = %233
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %19, align 4
  %241 = and i32 %240, %239
  store i32 %241, i32* %19, align 4
  %242 = load i32, i32* %23, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %236
  %245 = load i32, i32* %18, align 4
  %246 = load i32, i32* %23, align 4
  %247 = sub nsw i32 %246, %245
  store i32 %247, i32* %23, align 4
  %248 = load i32, i32* %23, align 4
  %249 = icmp sle i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %244
  %251 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %251, i32* %9, align 4
  br label %274

252:                                              ; preds = %244
  br label %253

253:                                              ; preds = %252, %236
  %254 = load i32, i32* %20, align 4
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 4
  %257 = load i32, i32* %19, align 4
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  %260 = load i32, i32* %21, align 4
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %22, align 4
  %265 = mul nsw i32 %263, %264
  %266 = add nsw i32 %260, %265
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 8
  %269 = load i32, i32* %23, align 4
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 4
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %253, %233
  %273 = load i32, i32* %18, align 4
  store i32 %273, i32* %9, align 4
  br label %274

274:                                              ; preds = %272, %250, %59
  %275 = load i32, i32* %9, align 4
  ret i32 %275
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
