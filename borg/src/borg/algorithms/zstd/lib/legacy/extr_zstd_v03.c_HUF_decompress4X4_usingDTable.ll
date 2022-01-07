; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v03.c_HUF_decompress4X4_usingDTable.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v03.c_HUF_decompress4X4_usingDTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@corruption_detected = common dso_local global i32 0, align 4
@BIT_DStream_unfinished = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32*)* @HUF_decompress4X4_usingDTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_decompress4X4_usingDTable(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
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
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ult i64 %40, 10
  br i1 %41, label %42, label %45

42:                                               ; preds = %5
  %43 = load i32, i32* @corruption_detected, align 4
  %44 = call i64 @ERROR(i32 %43)
  store i64 %44, i64* %6, align 8
  br label %261

45:                                               ; preds = %5
  %46 = load i8*, i8** %9, align 8
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** %12, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %13, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = bitcast i32* %53 to i8*
  store i8* %54, i8** %15, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32* %57, i32** %16, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %17, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = call i64 @MEM_readLE16(i32* %61)
  store i64 %62, i64* %23, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = call i64 @MEM_readLE16(i32* %64)
  store i64 %65, i64* %24, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = call i64 @MEM_readLE16(i32* %67)
  store i64 %68, i64* %25, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  store i32* %70, i32** %27, align 8
  %71 = load i32*, i32** %27, align 8
  %72 = load i64, i64* %23, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %28, align 8
  %74 = load i32*, i32** %28, align 8
  %75 = load i64, i64* %24, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %29, align 8
  %77 = load i32*, i32** %29, align 8
  %78 = load i64, i64* %25, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %30, align 8
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 3
  %82 = udiv i64 %81, 4
  store i64 %82, i64* %31, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i64, i64* %31, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %32, align 8
  %86 = load i32*, i32** %32, align 8
  %87 = load i64, i64* %31, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %33, align 8
  %89 = load i32*, i32** %33, align 8
  %90 = load i64, i64* %31, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %34, align 8
  %92 = load i32*, i32** %13, align 8
  store i32* %92, i32** %35, align 8
  %93 = load i32*, i32** %32, align 8
  store i32* %93, i32** %36, align 8
  %94 = load i32*, i32** %33, align 8
  store i32* %94, i32** %37, align 8
  %95 = load i32*, i32** %34, align 8
  store i32* %95, i32** %38, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %23, align 8
  %98 = load i64, i64* %24, align 8
  %99 = add i64 %97, %98
  %100 = load i64, i64* %25, align 8
  %101 = add i64 %99, %100
  %102 = add i64 %101, 6
  %103 = sub i64 %96, %102
  store i64 %103, i64* %26, align 8
  %104 = load i64, i64* %26, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %45
  %108 = load i32, i32* @corruption_detected, align 4
  %109 = call i64 @ERROR(i32 %108)
  store i64 %109, i64* %6, align 8
  br label %261

110:                                              ; preds = %45
  %111 = load i32*, i32** %27, align 8
  %112 = load i64, i64* %23, align 8
  %113 = call i64 @BIT_initDStream(i32* %19, i32* %111, i64 %112)
  store i64 %113, i64* %18, align 8
  %114 = load i64, i64* %18, align 8
  %115 = call i64 @HUF_isError(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i64, i64* %18, align 8
  store i64 %118, i64* %6, align 8
  br label %261

119:                                              ; preds = %110
  %120 = load i32*, i32** %28, align 8
  %121 = load i64, i64* %24, align 8
  %122 = call i64 @BIT_initDStream(i32* %20, i32* %120, i64 %121)
  store i64 %122, i64* %18, align 8
  %123 = load i64, i64* %18, align 8
  %124 = call i64 @HUF_isError(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i64, i64* %18, align 8
  store i64 %127, i64* %6, align 8
  br label %261

128:                                              ; preds = %119
  %129 = load i32*, i32** %29, align 8
  %130 = load i64, i64* %25, align 8
  %131 = call i64 @BIT_initDStream(i32* %21, i32* %129, i64 %130)
  store i64 %131, i64* %18, align 8
  %132 = load i64, i64* %18, align 8
  %133 = call i64 @HUF_isError(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i64, i64* %18, align 8
  store i64 %136, i64* %6, align 8
  br label %261

137:                                              ; preds = %128
  %138 = load i32*, i32** %30, align 8
  %139 = load i64, i64* %26, align 8
  %140 = call i64 @BIT_initDStream(i32* %22, i32* %138, i64 %139)
  store i64 %140, i64* %18, align 8
  %141 = load i64, i64* %18, align 8
  %142 = call i64 @HUF_isError(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i64, i64* %18, align 8
  store i64 %145, i64* %6, align 8
  br label %261

146:                                              ; preds = %137
  %147 = call i32 @BIT_reloadDStream(i32* %19)
  %148 = call i32 @BIT_reloadDStream(i32* %20)
  %149 = or i32 %147, %148
  %150 = call i32 @BIT_reloadDStream(i32* %21)
  %151 = or i32 %149, %150
  %152 = call i32 @BIT_reloadDStream(i32* %22)
  %153 = or i32 %151, %152
  store i32 %153, i32* %39, align 4
  br label %154

154:                                              ; preds = %165, %146
  %155 = load i32, i32* %39, align 4
  %156 = load i32, i32* @BIT_DStream_unfinished, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32*, i32** %38, align 8
  %160 = load i32*, i32** %14, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 -7
  %162 = icmp ult i32* %159, %161
  br label %163

163:                                              ; preds = %158, %154
  %164 = phi i1 [ false, %154 ], [ %162, %158 ]
  br i1 %164, label %165, label %205

165:                                              ; preds = %163
  %166 = load i32*, i32** %35, align 8
  %167 = call i32 @HUF_DECODE_SYMBOLX4_2(i32* %166, i32* %19)
  %168 = load i32*, i32** %36, align 8
  %169 = call i32 @HUF_DECODE_SYMBOLX4_2(i32* %168, i32* %20)
  %170 = load i32*, i32** %37, align 8
  %171 = call i32 @HUF_DECODE_SYMBOLX4_2(i32* %170, i32* %21)
  %172 = load i32*, i32** %38, align 8
  %173 = call i32 @HUF_DECODE_SYMBOLX4_2(i32* %172, i32* %22)
  %174 = load i32*, i32** %35, align 8
  %175 = call i32 @HUF_DECODE_SYMBOLX4_1(i32* %174, i32* %19)
  %176 = load i32*, i32** %36, align 8
  %177 = call i32 @HUF_DECODE_SYMBOLX4_1(i32* %176, i32* %20)
  %178 = load i32*, i32** %37, align 8
  %179 = call i32 @HUF_DECODE_SYMBOLX4_1(i32* %178, i32* %21)
  %180 = load i32*, i32** %38, align 8
  %181 = call i32 @HUF_DECODE_SYMBOLX4_1(i32* %180, i32* %22)
  %182 = load i32*, i32** %35, align 8
  %183 = call i32 @HUF_DECODE_SYMBOLX4_2(i32* %182, i32* %19)
  %184 = load i32*, i32** %36, align 8
  %185 = call i32 @HUF_DECODE_SYMBOLX4_2(i32* %184, i32* %20)
  %186 = load i32*, i32** %37, align 8
  %187 = call i32 @HUF_DECODE_SYMBOLX4_2(i32* %186, i32* %21)
  %188 = load i32*, i32** %38, align 8
  %189 = call i32 @HUF_DECODE_SYMBOLX4_2(i32* %188, i32* %22)
  %190 = load i32*, i32** %35, align 8
  %191 = call i32 @HUF_DECODE_SYMBOLX4_0(i32* %190, i32* %19)
  %192 = load i32*, i32** %36, align 8
  %193 = call i32 @HUF_DECODE_SYMBOLX4_0(i32* %192, i32* %20)
  %194 = load i32*, i32** %37, align 8
  %195 = call i32 @HUF_DECODE_SYMBOLX4_0(i32* %194, i32* %21)
  %196 = load i32*, i32** %38, align 8
  %197 = call i32 @HUF_DECODE_SYMBOLX4_0(i32* %196, i32* %22)
  %198 = call i32 @BIT_reloadDStream(i32* %19)
  %199 = call i32 @BIT_reloadDStream(i32* %20)
  %200 = or i32 %198, %199
  %201 = call i32 @BIT_reloadDStream(i32* %21)
  %202 = or i32 %200, %201
  %203 = call i32 @BIT_reloadDStream(i32* %22)
  %204 = or i32 %202, %203
  store i32 %204, i32* %39, align 4
  br label %154

205:                                              ; preds = %163
  %206 = load i32*, i32** %35, align 8
  %207 = load i32*, i32** %32, align 8
  %208 = icmp ugt i32* %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load i32, i32* @corruption_detected, align 4
  %211 = call i64 @ERROR(i32 %210)
  store i64 %211, i64* %6, align 8
  br label %261

212:                                              ; preds = %205
  %213 = load i32*, i32** %36, align 8
  %214 = load i32*, i32** %33, align 8
  %215 = icmp ugt i32* %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load i32, i32* @corruption_detected, align 4
  %218 = call i64 @ERROR(i32 %217)
  store i64 %218, i64* %6, align 8
  br label %261

219:                                              ; preds = %212
  %220 = load i32*, i32** %37, align 8
  %221 = load i32*, i32** %34, align 8
  %222 = icmp ugt i32* %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32, i32* @corruption_detected, align 4
  %225 = call i64 @ERROR(i32 %224)
  store i64 %225, i64* %6, align 8
  br label %261

226:                                              ; preds = %219
  %227 = load i32*, i32** %35, align 8
  %228 = load i32*, i32** %32, align 8
  %229 = load i32*, i32** %16, align 8
  %230 = load i32, i32* %17, align 4
  %231 = call i32 @HUF_decodeStreamX4(i32* %227, i32* %19, i32* %228, i32* %229, i32 %230)
  %232 = load i32*, i32** %36, align 8
  %233 = load i32*, i32** %33, align 8
  %234 = load i32*, i32** %16, align 8
  %235 = load i32, i32* %17, align 4
  %236 = call i32 @HUF_decodeStreamX4(i32* %232, i32* %20, i32* %233, i32* %234, i32 %235)
  %237 = load i32*, i32** %37, align 8
  %238 = load i32*, i32** %34, align 8
  %239 = load i32*, i32** %16, align 8
  %240 = load i32, i32* %17, align 4
  %241 = call i32 @HUF_decodeStreamX4(i32* %237, i32* %21, i32* %238, i32* %239, i32 %240)
  %242 = load i32*, i32** %38, align 8
  %243 = load i32*, i32** %14, align 8
  %244 = load i32*, i32** %16, align 8
  %245 = load i32, i32* %17, align 4
  %246 = call i32 @HUF_decodeStreamX4(i32* %242, i32* %22, i32* %243, i32* %244, i32 %245)
  %247 = call i32 @BIT_endOfDStream(i32* %19)
  %248 = call i32 @BIT_endOfDStream(i32* %20)
  %249 = and i32 %247, %248
  %250 = call i32 @BIT_endOfDStream(i32* %21)
  %251 = and i32 %249, %250
  %252 = call i32 @BIT_endOfDStream(i32* %22)
  %253 = and i32 %251, %252
  store i32 %253, i32* %39, align 4
  %254 = load i32, i32* %39, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %226
  %257 = load i32, i32* @corruption_detected, align 4
  %258 = call i64 @ERROR(i32 %257)
  store i64 %258, i64* %6, align 8
  br label %261

259:                                              ; preds = %226
  %260 = load i64, i64* %8, align 8
  store i64 %260, i64* %6, align 8
  br label %261

261:                                              ; preds = %259, %256, %223, %216, %209, %144, %135, %126, %117, %107, %42
  %262 = load i64, i64* %6, align 8
  ret i64 %262
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @MEM_readLE16(i32*) #1

declare dso_local i64 @BIT_initDStream(i32*, i32*, i64) #1

declare dso_local i64 @HUF_isError(i64) #1

declare dso_local i32 @BIT_reloadDStream(i32*) #1

declare dso_local i32 @HUF_DECODE_SYMBOLX4_2(i32*, i32*) #1

declare dso_local i32 @HUF_DECODE_SYMBOLX4_1(i32*, i32*) #1

declare dso_local i32 @HUF_DECODE_SYMBOLX4_0(i32*, i32*) #1

declare dso_local i32 @HUF_decodeStreamX4(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BIT_endOfDStream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
