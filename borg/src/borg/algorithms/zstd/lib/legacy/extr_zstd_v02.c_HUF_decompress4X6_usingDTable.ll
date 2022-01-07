; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v02.c_HUF_decompress4X6_usingDTable.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v02.c_HUF_decompress4X6_usingDTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@corruption_detected = common dso_local global i32 0, align 4
@BIT_DStream_unfinished = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32*)* @HUF_decompress4X6_usingDTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_decompress4X6_usingDTable(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ult i64 %42, 10
  br i1 %43, label %44, label %47

44:                                               ; preds = %5
  %45 = load i32, i32* @corruption_detected, align 4
  %46 = call i64 @ERROR(i32 %45)
  store i64 %46, i64* %6, align 8
  br label %277

47:                                               ; preds = %5
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %12, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** %13, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = bitcast i32* %59 to i8*
  store i8* %60, i8** %16, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %17, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %15, align 4
  %66 = sub nsw i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = shl i64 1, %67
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = bitcast i32* %69 to i8*
  store i8* %70, i8** %18, align 8
  %71 = load i8*, i8** %18, align 8
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** %19, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = call i64 @MEM_readLE16(i32* %73)
  store i64 %74, i64* %25, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = call i64 @MEM_readLE16(i32* %76)
  store i64 %77, i64* %26, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = call i64 @MEM_readLE16(i32* %79)
  store i64 %80, i64* %27, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 6
  store i32* %82, i32** %29, align 8
  %83 = load i32*, i32** %29, align 8
  %84 = load i64, i64* %25, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %30, align 8
  %86 = load i32*, i32** %30, align 8
  %87 = load i64, i64* %26, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %31, align 8
  %89 = load i32*, i32** %31, align 8
  %90 = load i64, i64* %27, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %32, align 8
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 3
  %94 = udiv i64 %93, 4
  store i64 %94, i64* %33, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = load i64, i64* %33, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %34, align 8
  %98 = load i32*, i32** %34, align 8
  %99 = load i64, i64* %33, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %35, align 8
  %101 = load i32*, i32** %35, align 8
  %102 = load i64, i64* %33, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %36, align 8
  %104 = load i32*, i32** %13, align 8
  store i32* %104, i32** %37, align 8
  %105 = load i32*, i32** %34, align 8
  store i32* %105, i32** %38, align 8
  %106 = load i32*, i32** %35, align 8
  store i32* %106, i32** %39, align 8
  %107 = load i32*, i32** %36, align 8
  store i32* %107, i32** %40, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %25, align 8
  %110 = load i64, i64* %26, align 8
  %111 = add i64 %109, %110
  %112 = load i64, i64* %27, align 8
  %113 = add i64 %111, %112
  %114 = add i64 %113, 6
  %115 = sub i64 %108, %114
  store i64 %115, i64* %28, align 8
  %116 = load i64, i64* %28, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %47
  %120 = load i32, i32* @corruption_detected, align 4
  %121 = call i64 @ERROR(i32 %120)
  store i64 %121, i64* %6, align 8
  br label %277

122:                                              ; preds = %47
  %123 = load i32*, i32** %29, align 8
  %124 = load i64, i64* %25, align 8
  %125 = call i64 @BIT_initDStream(i32* %21, i32* %123, i64 %124)
  store i64 %125, i64* %20, align 8
  %126 = load i64, i64* %20, align 8
  %127 = call i64 @HUF_isError(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i64, i64* %20, align 8
  store i64 %130, i64* %6, align 8
  br label %277

131:                                              ; preds = %122
  %132 = load i32*, i32** %30, align 8
  %133 = load i64, i64* %26, align 8
  %134 = call i64 @BIT_initDStream(i32* %22, i32* %132, i64 %133)
  store i64 %134, i64* %20, align 8
  %135 = load i64, i64* %20, align 8
  %136 = call i64 @HUF_isError(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i64, i64* %20, align 8
  store i64 %139, i64* %6, align 8
  br label %277

140:                                              ; preds = %131
  %141 = load i32*, i32** %31, align 8
  %142 = load i64, i64* %27, align 8
  %143 = call i64 @BIT_initDStream(i32* %23, i32* %141, i64 %142)
  store i64 %143, i64* %20, align 8
  %144 = load i64, i64* %20, align 8
  %145 = call i64 @HUF_isError(i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i64, i64* %20, align 8
  store i64 %148, i64* %6, align 8
  br label %277

149:                                              ; preds = %140
  %150 = load i32*, i32** %32, align 8
  %151 = load i64, i64* %28, align 8
  %152 = call i64 @BIT_initDStream(i32* %24, i32* %150, i64 %151)
  store i64 %152, i64* %20, align 8
  %153 = load i64, i64* %20, align 8
  %154 = call i64 @HUF_isError(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i64, i64* %20, align 8
  store i64 %157, i64* %6, align 8
  br label %277

158:                                              ; preds = %149
  %159 = call i32 @BIT_reloadDStream(i32* %21)
  %160 = call i32 @BIT_reloadDStream(i32* %22)
  %161 = or i32 %159, %160
  %162 = call i32 @BIT_reloadDStream(i32* %23)
  %163 = or i32 %161, %162
  %164 = call i32 @BIT_reloadDStream(i32* %24)
  %165 = or i32 %163, %164
  store i32 %165, i32* %41, align 4
  br label %166

166:                                              ; preds = %181, %158
  %167 = load i32*, i32** %39, align 8
  %168 = load i32*, i32** %36, align 8
  %169 = icmp ule i32* %167, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = load i32, i32* %41, align 4
  %172 = load i32, i32* @BIT_DStream_unfinished, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i32*, i32** %40, align 8
  %176 = load i32*, i32** %14, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 -16
  %178 = icmp ule i32* %175, %177
  br label %179

179:                                              ; preds = %174, %170, %166
  %180 = phi i1 [ false, %170 ], [ false, %166 ], [ %178, %174 ]
  br i1 %180, label %181, label %221

181:                                              ; preds = %179
  %182 = load i32*, i32** %37, align 8
  %183 = call i32 @HUF_DECODE_SYMBOLX6_2(i32* %182, i32* %21)
  %184 = load i32*, i32** %38, align 8
  %185 = call i32 @HUF_DECODE_SYMBOLX6_2(i32* %184, i32* %22)
  %186 = load i32*, i32** %39, align 8
  %187 = call i32 @HUF_DECODE_SYMBOLX6_2(i32* %186, i32* %23)
  %188 = load i32*, i32** %40, align 8
  %189 = call i32 @HUF_DECODE_SYMBOLX6_2(i32* %188, i32* %24)
  %190 = load i32*, i32** %37, align 8
  %191 = call i32 @HUF_DECODE_SYMBOLX6_1(i32* %190, i32* %21)
  %192 = load i32*, i32** %38, align 8
  %193 = call i32 @HUF_DECODE_SYMBOLX6_1(i32* %192, i32* %22)
  %194 = load i32*, i32** %39, align 8
  %195 = call i32 @HUF_DECODE_SYMBOLX6_1(i32* %194, i32* %23)
  %196 = load i32*, i32** %40, align 8
  %197 = call i32 @HUF_DECODE_SYMBOLX6_1(i32* %196, i32* %24)
  %198 = load i32*, i32** %37, align 8
  %199 = call i32 @HUF_DECODE_SYMBOLX6_2(i32* %198, i32* %21)
  %200 = load i32*, i32** %38, align 8
  %201 = call i32 @HUF_DECODE_SYMBOLX6_2(i32* %200, i32* %22)
  %202 = load i32*, i32** %39, align 8
  %203 = call i32 @HUF_DECODE_SYMBOLX6_2(i32* %202, i32* %23)
  %204 = load i32*, i32** %40, align 8
  %205 = call i32 @HUF_DECODE_SYMBOLX6_2(i32* %204, i32* %24)
  %206 = load i32*, i32** %37, align 8
  %207 = call i32 @HUF_DECODE_SYMBOLX6_0(i32* %206, i32* %21)
  %208 = load i32*, i32** %38, align 8
  %209 = call i32 @HUF_DECODE_SYMBOLX6_0(i32* %208, i32* %22)
  %210 = load i32*, i32** %39, align 8
  %211 = call i32 @HUF_DECODE_SYMBOLX6_0(i32* %210, i32* %23)
  %212 = load i32*, i32** %40, align 8
  %213 = call i32 @HUF_DECODE_SYMBOLX6_0(i32* %212, i32* %24)
  %214 = call i32 @BIT_reloadDStream(i32* %21)
  %215 = call i32 @BIT_reloadDStream(i32* %22)
  %216 = or i32 %214, %215
  %217 = call i32 @BIT_reloadDStream(i32* %23)
  %218 = or i32 %216, %217
  %219 = call i32 @BIT_reloadDStream(i32* %24)
  %220 = or i32 %218, %219
  store i32 %220, i32* %41, align 4
  br label %166

221:                                              ; preds = %179
  %222 = load i32*, i32** %37, align 8
  %223 = load i32*, i32** %34, align 8
  %224 = icmp ugt i32* %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i32, i32* @corruption_detected, align 4
  %227 = call i64 @ERROR(i32 %226)
  store i64 %227, i64* %6, align 8
  br label %277

228:                                              ; preds = %221
  %229 = load i32*, i32** %38, align 8
  %230 = load i32*, i32** %35, align 8
  %231 = icmp ugt i32* %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load i32, i32* @corruption_detected, align 4
  %234 = call i64 @ERROR(i32 %233)
  store i64 %234, i64* %6, align 8
  br label %277

235:                                              ; preds = %228
  %236 = load i32*, i32** %39, align 8
  %237 = load i32*, i32** %36, align 8
  %238 = icmp ugt i32* %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i32, i32* @corruption_detected, align 4
  %241 = call i64 @ERROR(i32 %240)
  store i64 %241, i64* %6, align 8
  br label %277

242:                                              ; preds = %235
  %243 = load i32*, i32** %37, align 8
  %244 = load i32*, i32** %34, align 8
  %245 = load i32*, i32** %11, align 8
  %246 = load i32, i32* %15, align 4
  %247 = call i32 @HUF_decodeStreamX6(i32* %243, i32* %21, i32* %244, i32* %245, i32 %246)
  %248 = load i32*, i32** %38, align 8
  %249 = load i32*, i32** %35, align 8
  %250 = load i32*, i32** %11, align 8
  %251 = load i32, i32* %15, align 4
  %252 = call i32 @HUF_decodeStreamX6(i32* %248, i32* %22, i32* %249, i32* %250, i32 %251)
  %253 = load i32*, i32** %39, align 8
  %254 = load i32*, i32** %36, align 8
  %255 = load i32*, i32** %11, align 8
  %256 = load i32, i32* %15, align 4
  %257 = call i32 @HUF_decodeStreamX6(i32* %253, i32* %23, i32* %254, i32* %255, i32 %256)
  %258 = load i32*, i32** %40, align 8
  %259 = load i32*, i32** %14, align 8
  %260 = load i32*, i32** %11, align 8
  %261 = load i32, i32* %15, align 4
  %262 = call i32 @HUF_decodeStreamX6(i32* %258, i32* %24, i32* %259, i32* %260, i32 %261)
  %263 = call i32 @BIT_endOfDStream(i32* %21)
  %264 = call i32 @BIT_endOfDStream(i32* %22)
  %265 = and i32 %263, %264
  %266 = call i32 @BIT_endOfDStream(i32* %23)
  %267 = and i32 %265, %266
  %268 = call i32 @BIT_endOfDStream(i32* %24)
  %269 = and i32 %267, %268
  store i32 %269, i32* %41, align 4
  %270 = load i32, i32* %41, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %242
  %273 = load i32, i32* @corruption_detected, align 4
  %274 = call i64 @ERROR(i32 %273)
  store i64 %274, i64* %6, align 8
  br label %277

275:                                              ; preds = %242
  %276 = load i64, i64* %8, align 8
  store i64 %276, i64* %6, align 8
  br label %277

277:                                              ; preds = %275, %272, %239, %232, %225, %156, %147, %138, %129, %119, %44
  %278 = load i64, i64* %6, align 8
  ret i64 %278
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @MEM_readLE16(i32*) #1

declare dso_local i64 @BIT_initDStream(i32*, i32*, i64) #1

declare dso_local i64 @HUF_isError(i64) #1

declare dso_local i32 @BIT_reloadDStream(i32*) #1

declare dso_local i32 @HUF_DECODE_SYMBOLX6_2(i32*, i32*) #1

declare dso_local i32 @HUF_DECODE_SYMBOLX6_1(i32*, i32*) #1

declare dso_local i32 @HUF_DECODE_SYMBOLX6_0(i32*, i32*) #1

declare dso_local i32 @HUF_decodeStreamX6(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BIT_endOfDStream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
