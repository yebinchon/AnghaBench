; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_taskset.c_taskset_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_taskset.c_taskset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taskset_init(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 88)
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 31
  %21 = sdiv i32 %20, 32
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call i8* @malloc(i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_6__*
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp eq %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %221

39:                                               ; preds = %3
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 %45, %49
  %51 = trunc i64 %50 to i32
  %52 = call i8* @malloc(i32 %51)
  %53 = bitcast i8* %52 to %struct.TYPE_6__*
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = icmp eq %struct.TYPE_6__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %221

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = trunc i64 %69 to i32
  %71 = call i8* @malloc(i32 %70)
  %72 = bitcast i8* %71 to %struct.TYPE_6__*
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = icmp eq %struct.TYPE_6__* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %221

80:                                               ; preds = %62
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = mul i64 4, %86
  %88 = trunc i64 %87 to i32
  %89 = call i8* @malloc(i32 %88)
  %90 = bitcast i8* %89 to %struct.TYPE_6__*
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 6
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = icmp eq %struct.TYPE_6__* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %80
  br label %221

98:                                               ; preds = %80
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = trunc i64 %105 to i32
  %107 = call i8* @malloc(i32 %106)
  %108 = bitcast i8* %107 to %struct.TYPE_6__*
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 7
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 7
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = icmp eq %struct.TYPE_6__* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %221

116:                                              ; preds = %98
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  %119 = call i32* (...) @hb_lock_init()
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 8
  store i32* %119, i32** %121, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 8
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %221

127:                                              ; preds = %116
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  %130 = call i8* (...) @hb_cond_init()
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 9
  store i32* %131, i32** %133, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 9
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %221

139:                                              ; preds = %127
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  %142 = call i8* (...) @hb_cond_init()
  %143 = bitcast i8* %142 to i32*
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 10
  store i32* %143, i32** %145, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 10
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %221

151:                                              ; preds = %139
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = mul i64 %159, %163
  %165 = trunc i64 %164 to i32
  %166 = call i32 @memset(%struct.TYPE_6__* %156, i32 0, i32 %165)
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 5
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = mul i64 4, %173
  %175 = trunc i64 %174 to i32
  %176 = call i32 @memset(%struct.TYPE_6__* %169, i32 255, i32 %175)
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 6
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = mul i64 4, %183
  %185 = trunc i64 %184 to i32
  %186 = call i32 @memset(%struct.TYPE_6__* %179, i32 255, i32 %185)
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 7
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = mul i64 4, %193
  %195 = trunc i64 %194 to i32
  %196 = call i32 @memset(%struct.TYPE_6__* %189, i32 0, i32 %195)
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 5
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sub nsw i32 %202, 1
  %204 = call i32 @bit_nclear(%struct.TYPE_6__* %199, i32 0, i32 %203)
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 6
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sub nsw i32 %210, 1
  %212 = call i32 @bit_nclear(%struct.TYPE_6__* %207, i32 0, i32 %211)
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 7
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %218, 1
  %220 = call i32 @bit_nclear(%struct.TYPE_6__* %215, i32 0, i32 %219)
  store i32 1, i32* %4, align 4
  br label %262

221:                                              ; preds = %150, %138, %126, %115, %97, %79, %60, %38
  %222 = load i32, i32* %8, align 4
  switch i32 %222, label %223 [
    i32 7, label %227
    i32 6, label %231
    i32 5, label %235
    i32 4, label %240
    i32 3, label %245
    i32 2, label %250
    i32 1, label %255
    i32 0, label %260
  ]

223:                                              ; preds = %221
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 10
  %226 = call i32 @hb_cond_close(i32** %225)
  br label %227

227:                                              ; preds = %221, %223
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 9
  %230 = call i32 @hb_cond_close(i32** %229)
  br label %231

231:                                              ; preds = %221, %227
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 8
  %234 = call i32 @hb_lock_close(i32** %233)
  br label %235

235:                                              ; preds = %221, %231
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 7
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = call i32 @free(%struct.TYPE_6__* %238)
  br label %240

240:                                              ; preds = %221, %235
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 6
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %242, align 8
  %244 = call i32 @free(%struct.TYPE_6__* %243)
  br label %245

245:                                              ; preds = %221, %240
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 5
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = call i32 @free(%struct.TYPE_6__* %248)
  br label %250

250:                                              ; preds = %221, %245
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 4
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %252, align 8
  %254 = call i32 @free(%struct.TYPE_6__* %253)
  br label %255

255:                                              ; preds = %221, %250
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 3
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = call i32 @free(%struct.TYPE_6__* %258)
  br label %260

260:                                              ; preds = %221, %255
  br label %261

261:                                              ; preds = %260
  store i32 0, i32* %4, align 4
  br label %262

262:                                              ; preds = %261, %151
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32* @hb_lock_init(...) #1

declare dso_local i8* @hb_cond_init(...) #1

declare dso_local i32 @bit_nclear(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @hb_cond_close(i32**) #1

declare dso_local i32 @hb_lock_close(i32**) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
