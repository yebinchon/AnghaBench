; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_decompress4X2_usingDTable_internal.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_decompress4X2_usingDTable_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@corruption_detected = common dso_local global i32 0, align 4
@BITv07_DStream_unfinished = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32*)* @HUFv07_decompress4X2_usingDTable_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUFv07_decompress4X2_usingDTable_internal(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_3__, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ult i64 %44, 10
  br i1 %45, label %46, label %49

46:                                               ; preds = %5
  %47 = load i32, i32* @corruption_detected, align 4
  %48 = call i64 @ERROR(i32 %47)
  store i64 %48, i64* %6, align 8
  br label %267

49:                                               ; preds = %5
  %50 = load i8*, i8** %9, align 8
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** %12, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %13, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = bitcast i32* %58 to i8*
  store i8* %59, i8** %15, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %16, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i64 @MEM_readLE16(i32* %62)
  store i64 %63, i64* %21, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = call i64 @MEM_readLE16(i32* %65)
  store i64 %66, i64* %22, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = call i64 @MEM_readLE16(i32* %68)
  store i64 %69, i64* %23, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %21, align 8
  %72 = load i64, i64* %22, align 8
  %73 = add i64 %71, %72
  %74 = load i64, i64* %23, align 8
  %75 = add i64 %73, %74
  %76 = add i64 %75, 6
  %77 = sub i64 %70, %76
  store i64 %77, i64* %24, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 6
  store i32* %79, i32** %25, align 8
  %80 = load i32*, i32** %25, align 8
  %81 = load i64, i64* %21, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %26, align 8
  %83 = load i32*, i32** %26, align 8
  %84 = load i64, i64* %22, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %27, align 8
  %86 = load i32*, i32** %27, align 8
  %87 = load i64, i64* %23, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %28, align 8
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 3
  %91 = udiv i64 %90, 4
  store i64 %91, i64* %29, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load i64, i64* %29, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %30, align 8
  %95 = load i32*, i32** %30, align 8
  %96 = load i64, i64* %29, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %31, align 8
  %98 = load i32*, i32** %31, align 8
  %99 = load i64, i64* %29, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %32, align 8
  %101 = load i32*, i32** %13, align 8
  store i32* %101, i32** %33, align 8
  %102 = load i32*, i32** %30, align 8
  store i32* %102, i32** %34, align 8
  %103 = load i32*, i32** %31, align 8
  store i32* %103, i32** %35, align 8
  %104 = load i32*, i32** %32, align 8
  store i32* %104, i32** %36, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @HUFv07_getDTableDesc(i32* %105)
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %39, align 4
  %110 = load i64, i64* %24, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp ugt i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %49
  %114 = load i32, i32* @corruption_detected, align 4
  %115 = call i64 @ERROR(i32 %114)
  store i64 %115, i64* %6, align 8
  br label %267

116:                                              ; preds = %49
  %117 = load i32*, i32** %25, align 8
  %118 = load i64, i64* %21, align 8
  %119 = call i64 @BITv07_initDStream(i32* %17, i32* %117, i64 %118)
  store i64 %119, i64* %40, align 8
  %120 = load i64, i64* %40, align 8
  %121 = call i64 @HUFv07_isError(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i64, i64* %40, align 8
  store i64 %124, i64* %6, align 8
  br label %267

125:                                              ; preds = %116
  %126 = load i32*, i32** %26, align 8
  %127 = load i64, i64* %22, align 8
  %128 = call i64 @BITv07_initDStream(i32* %18, i32* %126, i64 %127)
  store i64 %128, i64* %41, align 8
  %129 = load i64, i64* %41, align 8
  %130 = call i64 @HUFv07_isError(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i64, i64* %41, align 8
  store i64 %133, i64* %6, align 8
  br label %267

134:                                              ; preds = %125
  %135 = load i32*, i32** %27, align 8
  %136 = load i64, i64* %23, align 8
  %137 = call i64 @BITv07_initDStream(i32* %19, i32* %135, i64 %136)
  store i64 %137, i64* %42, align 8
  %138 = load i64, i64* %42, align 8
  %139 = call i64 @HUFv07_isError(i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i64, i64* %42, align 8
  store i64 %142, i64* %6, align 8
  br label %267

143:                                              ; preds = %134
  %144 = load i32*, i32** %28, align 8
  %145 = load i64, i64* %24, align 8
  %146 = call i64 @BITv07_initDStream(i32* %20, i32* %144, i64 %145)
  store i64 %146, i64* %43, align 8
  %147 = load i64, i64* %43, align 8
  %148 = call i64 @HUFv07_isError(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i64, i64* %43, align 8
  store i64 %151, i64* %6, align 8
  br label %267

152:                                              ; preds = %143
  %153 = call i32 @BITv07_reloadDStream(i32* %17)
  %154 = call i32 @BITv07_reloadDStream(i32* %18)
  %155 = or i32 %153, %154
  %156 = call i32 @BITv07_reloadDStream(i32* %19)
  %157 = or i32 %155, %156
  %158 = call i32 @BITv07_reloadDStream(i32* %20)
  %159 = or i32 %157, %158
  store i32 %159, i32* %37, align 4
  br label %160

160:                                              ; preds = %171, %152
  %161 = load i32, i32* %37, align 4
  %162 = load i32, i32* @BITv07_DStream_unfinished, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i32*, i32** %36, align 8
  %166 = load i32*, i32** %14, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 -7
  %168 = icmp ult i32* %165, %167
  br label %169

169:                                              ; preds = %164, %160
  %170 = phi i1 [ false, %160 ], [ %168, %164 ]
  br i1 %170, label %171, label %211

171:                                              ; preds = %169
  %172 = load i32*, i32** %33, align 8
  %173 = call i32 @HUFv07_DECODE_SYMBOLX2_2(i32* %172, i32* %17)
  %174 = load i32*, i32** %34, align 8
  %175 = call i32 @HUFv07_DECODE_SYMBOLX2_2(i32* %174, i32* %18)
  %176 = load i32*, i32** %35, align 8
  %177 = call i32 @HUFv07_DECODE_SYMBOLX2_2(i32* %176, i32* %19)
  %178 = load i32*, i32** %36, align 8
  %179 = call i32 @HUFv07_DECODE_SYMBOLX2_2(i32* %178, i32* %20)
  %180 = load i32*, i32** %33, align 8
  %181 = call i32 @HUFv07_DECODE_SYMBOLX2_1(i32* %180, i32* %17)
  %182 = load i32*, i32** %34, align 8
  %183 = call i32 @HUFv07_DECODE_SYMBOLX2_1(i32* %182, i32* %18)
  %184 = load i32*, i32** %35, align 8
  %185 = call i32 @HUFv07_DECODE_SYMBOLX2_1(i32* %184, i32* %19)
  %186 = load i32*, i32** %36, align 8
  %187 = call i32 @HUFv07_DECODE_SYMBOLX2_1(i32* %186, i32* %20)
  %188 = load i32*, i32** %33, align 8
  %189 = call i32 @HUFv07_DECODE_SYMBOLX2_2(i32* %188, i32* %17)
  %190 = load i32*, i32** %34, align 8
  %191 = call i32 @HUFv07_DECODE_SYMBOLX2_2(i32* %190, i32* %18)
  %192 = load i32*, i32** %35, align 8
  %193 = call i32 @HUFv07_DECODE_SYMBOLX2_2(i32* %192, i32* %19)
  %194 = load i32*, i32** %36, align 8
  %195 = call i32 @HUFv07_DECODE_SYMBOLX2_2(i32* %194, i32* %20)
  %196 = load i32*, i32** %33, align 8
  %197 = call i32 @HUFv07_DECODE_SYMBOLX2_0(i32* %196, i32* %17)
  %198 = load i32*, i32** %34, align 8
  %199 = call i32 @HUFv07_DECODE_SYMBOLX2_0(i32* %198, i32* %18)
  %200 = load i32*, i32** %35, align 8
  %201 = call i32 @HUFv07_DECODE_SYMBOLX2_0(i32* %200, i32* %19)
  %202 = load i32*, i32** %36, align 8
  %203 = call i32 @HUFv07_DECODE_SYMBOLX2_0(i32* %202, i32* %20)
  %204 = call i32 @BITv07_reloadDStream(i32* %17)
  %205 = call i32 @BITv07_reloadDStream(i32* %18)
  %206 = or i32 %204, %205
  %207 = call i32 @BITv07_reloadDStream(i32* %19)
  %208 = or i32 %206, %207
  %209 = call i32 @BITv07_reloadDStream(i32* %20)
  %210 = or i32 %208, %209
  store i32 %210, i32* %37, align 4
  br label %160

211:                                              ; preds = %169
  %212 = load i32*, i32** %33, align 8
  %213 = load i32*, i32** %30, align 8
  %214 = icmp ugt i32* %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i32, i32* @corruption_detected, align 4
  %217 = call i64 @ERROR(i32 %216)
  store i64 %217, i64* %6, align 8
  br label %267

218:                                              ; preds = %211
  %219 = load i32*, i32** %34, align 8
  %220 = load i32*, i32** %31, align 8
  %221 = icmp ugt i32* %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i32, i32* @corruption_detected, align 4
  %224 = call i64 @ERROR(i32 %223)
  store i64 %224, i64* %6, align 8
  br label %267

225:                                              ; preds = %218
  %226 = load i32*, i32** %35, align 8
  %227 = load i32*, i32** %32, align 8
  %228 = icmp ugt i32* %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32, i32* @corruption_detected, align 4
  %231 = call i64 @ERROR(i32 %230)
  store i64 %231, i64* %6, align 8
  br label %267

232:                                              ; preds = %225
  %233 = load i32*, i32** %33, align 8
  %234 = load i32*, i32** %30, align 8
  %235 = load i32*, i32** %16, align 8
  %236 = load i32, i32* %39, align 4
  %237 = call i32 @HUFv07_decodeStreamX2(i32* %233, i32* %17, i32* %234, i32* %235, i32 %236)
  %238 = load i32*, i32** %34, align 8
  %239 = load i32*, i32** %31, align 8
  %240 = load i32*, i32** %16, align 8
  %241 = load i32, i32* %39, align 4
  %242 = call i32 @HUFv07_decodeStreamX2(i32* %238, i32* %18, i32* %239, i32* %240, i32 %241)
  %243 = load i32*, i32** %35, align 8
  %244 = load i32*, i32** %32, align 8
  %245 = load i32*, i32** %16, align 8
  %246 = load i32, i32* %39, align 4
  %247 = call i32 @HUFv07_decodeStreamX2(i32* %243, i32* %19, i32* %244, i32* %245, i32 %246)
  %248 = load i32*, i32** %36, align 8
  %249 = load i32*, i32** %14, align 8
  %250 = load i32*, i32** %16, align 8
  %251 = load i32, i32* %39, align 4
  %252 = call i32 @HUFv07_decodeStreamX2(i32* %248, i32* %20, i32* %249, i32* %250, i32 %251)
  %253 = call i32 @BITv07_endOfDStream(i32* %17)
  %254 = call i32 @BITv07_endOfDStream(i32* %18)
  %255 = and i32 %253, %254
  %256 = call i32 @BITv07_endOfDStream(i32* %19)
  %257 = and i32 %255, %256
  %258 = call i32 @BITv07_endOfDStream(i32* %20)
  %259 = and i32 %257, %258
  store i32 %259, i32* %37, align 4
  %260 = load i32, i32* %37, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %232
  %263 = load i32, i32* @corruption_detected, align 4
  %264 = call i64 @ERROR(i32 %263)
  store i64 %264, i64* %6, align 8
  br label %267

265:                                              ; preds = %232
  %266 = load i64, i64* %8, align 8
  store i64 %266, i64* %6, align 8
  br label %267

267:                                              ; preds = %265, %262, %229, %222, %215, %150, %141, %132, %123, %113, %46
  %268 = load i64, i64* %6, align 8
  ret i64 %268
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @MEM_readLE16(i32*) #1

declare dso_local i32 @HUFv07_getDTableDesc(i32*) #1

declare dso_local i64 @BITv07_initDStream(i32*, i32*, i64) #1

declare dso_local i64 @HUFv07_isError(i64) #1

declare dso_local i32 @BITv07_reloadDStream(i32*) #1

declare dso_local i32 @HUFv07_DECODE_SYMBOLX2_2(i32*, i32*) #1

declare dso_local i32 @HUFv07_DECODE_SYMBOLX2_1(i32*, i32*) #1

declare dso_local i32 @HUFv07_DECODE_SYMBOLX2_0(i32*, i32*) #1

declare dso_local i32 @HUFv07_decodeStreamX2(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BITv07_endOfDStream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
