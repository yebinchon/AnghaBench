; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_wav_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_wav_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32)* @wav_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wav_decode(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 16384
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %6
  %43 = load i32, i32* %10, align 4
  br label %46

44:                                               ; preds = %6
  %45 = load i32, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %48

48:                                               ; preds = %52, %46
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %15, align 4
  %54 = shl i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %48

55:                                               ; preds = %48
  %56 = load i32, i32* %15, align 4
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %251, %55
  %62 = load i32, i32* %15, align 4
  %63 = icmp sge i32 %62, 1
  br i1 %63, label %64, label %255

64:                                               ; preds = %61
  %65 = load i32*, i32** %7, align 8
  store i32* %65, i32** %17, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %16, align 4
  %70 = sub nsw i32 %68, %69
  %71 = mul nsw i32 %67, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %66, i64 %72
  store i32* %73, i32** %18, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %15, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %23, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %16, align 4
  %79 = mul nsw i32 %77, %78
  store i32 %79, i32* %24, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %15, align 4
  %82 = mul nsw i32 %80, %81
  store i32 %82, i32* %25, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %16, align 4
  %85 = mul nsw i32 %83, %84
  store i32 %85, i32* %26, align 4
  br label %86

86:                                               ; preds = %197, %64
  %87 = load i32*, i32** %17, align 8
  %88 = load i32*, i32** %18, align 8
  %89 = icmp ule i32* %87, %88
  br i1 %89, label %90, label %202

90:                                               ; preds = %86
  %91 = load i32*, i32** %17, align 8
  store i32* %91, i32** %27, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %16, align 4
  %96 = sub nsw i32 %94, %95
  %97 = mul nsw i32 %93, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %92, i64 %98
  store i32* %99, i32** %28, align 8
  br label %100

100:                                              ; preds = %162, %90
  %101 = load i32*, i32** %27, align 8
  %102 = load i32*, i32** %28, align 8
  %103 = icmp ule i32* %101, %102
  br i1 %103, label %104, label %167

104:                                              ; preds = %100
  %105 = load i32*, i32** %27, align 8
  %106 = load i32, i32* %25, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32* %108, i32** %29, align 8
  %109 = load i32*, i32** %27, align 8
  %110 = load i32, i32* %23, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32* %112, i32** %30, align 8
  %113 = load i32*, i32** %30, align 8
  %114 = load i32, i32* %25, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32* %116, i32** %31, align 8
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %104
  %120 = load i32*, i32** %27, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %30, align 8
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @wdec14(i32 %121, i32 %123, i32* %19, i32* %21)
  %125 = load i32*, i32** %29, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %31, align 8
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @wdec14(i32 %126, i32 %128, i32* %20, i32* %22)
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load i32*, i32** %27, align 8
  %133 = load i32*, i32** %29, align 8
  %134 = call i32 @wdec14(i32 %130, i32 %131, i32* %132, i32* %133)
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* %22, align 4
  %137 = load i32*, i32** %30, align 8
  %138 = load i32*, i32** %31, align 8
  %139 = call i32 @wdec14(i32 %135, i32 %136, i32* %137, i32* %138)
  br label %161

140:                                              ; preds = %104
  %141 = load i32*, i32** %27, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %30, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @wdec16(i32 %142, i32 %144, i32* %19, i32* %21)
  %146 = load i32*, i32** %29, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %31, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @wdec16(i32 %147, i32 %149, i32* %20, i32* %22)
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %20, align 4
  %153 = load i32*, i32** %27, align 8
  %154 = load i32*, i32** %29, align 8
  %155 = call i32 @wdec16(i32 %151, i32 %152, i32* %153, i32* %154)
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %22, align 4
  %158 = load i32*, i32** %30, align 8
  %159 = load i32*, i32** %31, align 8
  %160 = call i32 @wdec16(i32 %156, i32 %157, i32* %158, i32* %159)
  br label %161

161:                                              ; preds = %140, %119
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %26, align 4
  %164 = load i32*, i32** %27, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %27, align 8
  br label %100

167:                                              ; preds = %100
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %15, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %196

172:                                              ; preds = %167
  %173 = load i32*, i32** %27, align 8
  %174 = load i32, i32* %23, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32* %176, i32** %32, align 8
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %172
  %180 = load i32*, i32** %27, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %32, align 8
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %32, align 8
  %185 = call i32 @wdec14(i32 %181, i32 %183, i32* %19, i32* %184)
  br label %193

186:                                              ; preds = %172
  %187 = load i32*, i32** %27, align 8
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %32, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %32, align 8
  %192 = call i32 @wdec16(i32 %188, i32 %190, i32* %19, i32* %191)
  br label %193

193:                                              ; preds = %186, %179
  %194 = load i32, i32* %19, align 4
  %195 = load i32*, i32** %27, align 8
  store i32 %194, i32* %195, align 4
  br label %196

196:                                              ; preds = %193, %167
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %24, align 4
  %199 = load i32*, i32** %17, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %17, align 8
  br label %86

202:                                              ; preds = %86
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %15, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %251

207:                                              ; preds = %202
  %208 = load i32*, i32** %17, align 8
  store i32* %208, i32** %33, align 8
  %209 = load i32*, i32** %17, align 8
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %16, align 4
  %213 = sub nsw i32 %211, %212
  %214 = mul nsw i32 %210, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %209, i64 %215
  store i32* %216, i32** %34, align 8
  br label %217

217:                                              ; preds = %245, %207
  %218 = load i32*, i32** %33, align 8
  %219 = load i32*, i32** %34, align 8
  %220 = icmp ule i32* %218, %219
  br i1 %220, label %221, label %250

221:                                              ; preds = %217
  %222 = load i32*, i32** %33, align 8
  %223 = load i32, i32* %25, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32* %225, i32** %35, align 8
  %226 = load i32, i32* %13, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %221
  %229 = load i32*, i32** %33, align 8
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %35, align 8
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %35, align 8
  %234 = call i32 @wdec14(i32 %230, i32 %232, i32* %19, i32* %233)
  br label %242

235:                                              ; preds = %221
  %236 = load i32*, i32** %33, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %35, align 8
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %35, align 8
  %241 = call i32 @wdec16(i32 %237, i32 %239, i32* %19, i32* %240)
  br label %242

242:                                              ; preds = %235, %228
  %243 = load i32, i32* %19, align 4
  %244 = load i32*, i32** %33, align 8
  store i32 %243, i32* %244, align 4
  br label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %26, align 4
  %247 = load i32*, i32** %33, align 8
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  store i32* %249, i32** %33, align 8
  br label %217

250:                                              ; preds = %217
  br label %251

251:                                              ; preds = %250, %202
  %252 = load i32, i32* %15, align 4
  store i32 %252, i32* %16, align 4
  %253 = load i32, i32* %15, align 4
  %254 = ashr i32 %253, 1
  store i32 %254, i32* %15, align 4
  br label %61

255:                                              ; preds = %61
  ret void
}

declare dso_local i32 @wdec14(i32, i32, i32*, i32*) #1

declare dso_local i32 @wdec16(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
