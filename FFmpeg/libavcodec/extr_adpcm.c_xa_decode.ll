; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adpcm.c_xa_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adpcm.c_xa_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@xa_adpcm_table = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [27 x i8] c"unknown XA-ADPCM filter %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32)* @xa_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xa_decode(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_4__* %4, %struct.TYPE_4__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
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
  %27 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %10, align 8
  %32 = load i32, i32* %15, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %8
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 28
  store i32* %36, i32** %11, align 8
  br label %42

37:                                               ; preds = %8
  %38 = load i32, i32* %16, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %11, align 8
  br label %42

42:                                               ; preds = %37, %34
  store i32 0, i32* %17, align 4
  br label %43

43:                                               ; preds = %259, %42
  %44 = load i32, i32* %17, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %262

46:                                               ; preds = %43
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %17, align 4
  %49 = mul nsw i32 %48, 2
  %50 = add nsw i32 4, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 15
  %55 = sub nsw i32 12, %54
  store i32 %55, i32* %19, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %17, align 4
  %58 = mul nsw i32 %57, 2
  %59 = add nsw i32 4, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 4
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %20, align 4
  %65 = load i32**, i32*** @xa_adpcm_table, align 8
  %66 = call i32 @FF_ARRAY_ELEMS(i32** %65)
  %67 = icmp sge i32 %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %46
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %20, align 4
  %71 = call i32 @avpriv_request_sample(i32* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %70)
  store i32 0, i32* %20, align 4
  br label %72

72:                                               ; preds = %68, %46
  %73 = load i32**, i32*** @xa_adpcm_table, align 8
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %21, align 4
  %80 = load i32**, i32*** @xa_adpcm_table, align 8
  %81 = load i32, i32* %20, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %22, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %23, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %24, align 4
  store i32 0, i32* %18, align 4
  br label %93

93:                                               ; preds = %129, %72
  %94 = load i32, i32* %18, align 4
  %95 = icmp slt i32 %94, 28
  br i1 %95, label %96, label %132

96:                                               ; preds = %93
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 16, %98
  %100 = load i32, i32* %18, align 4
  %101 = mul nsw i32 %100, 4
  %102 = add nsw i32 %99, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %97, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %25, align 4
  %106 = load i32, i32* %25, align 4
  %107 = call i32 @sign_extend(i32 %106, i32 4)
  store i32 %107, i32* %27, align 4
  %108 = load i32, i32* %27, align 4
  %109 = load i32, i32* %19, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %23, align 4
  %112 = load i32, i32* %21, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %22, align 4
  %116 = mul nsw i32 %114, %115
  %117 = add nsw i32 %113, %116
  %118 = add nsw i32 %117, 32
  %119 = ashr i32 %118, 6
  %120 = add nsw i32 %110, %119
  store i32 %120, i32* %26, align 4
  %121 = load i32, i32* %23, align 4
  store i32 %121, i32* %24, align 4
  %122 = load i32, i32* %26, align 4
  %123 = call i32 @av_clip_int16(i32 %122)
  store i32 %123, i32* %23, align 4
  %124 = load i32, i32* %23, align 4
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %124, i32* %128, align 4
  br label %129

129:                                              ; preds = %96
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %18, align 4
  br label %93

132:                                              ; preds = %93
  %133 = load i32, i32* %15, align 4
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load i32, i32* %23, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %24, align 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %23, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %24, align 4
  br label %148

148:                                              ; preds = %135, %132
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %17, align 4
  %151 = mul nsw i32 %150, 2
  %152 = add nsw i32 5, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 15
  %157 = sub nsw i32 12, %156
  store i32 %157, i32* %19, align 4
  %158 = load i32*, i32** %12, align 8
  %159 = load i32, i32* %17, align 4
  %160 = mul nsw i32 %159, 2
  %161 = add nsw i32 5, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %158, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 4
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %20, align 4
  %167 = load i32**, i32*** @xa_adpcm_table, align 8
  %168 = call i32 @FF_ARRAY_ELEMS(i32** %167)
  %169 = icmp sge i32 %166, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %148
  %171 = load i32*, i32** %9, align 8
  %172 = load i32, i32* %20, align 4
  %173 = call i32 @avpriv_request_sample(i32* %171, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %172)
  store i32 0, i32* %20, align 4
  br label %174

174:                                              ; preds = %170, %148
  %175 = load i32**, i32*** @xa_adpcm_table, align 8
  %176 = load i32, i32* %20, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %21, align 4
  %182 = load i32**, i32*** @xa_adpcm_table, align 8
  %183 = load i32, i32* %20, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32*, i32** %182, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %22, align 4
  store i32 0, i32* %18, align 4
  br label %189

189:                                              ; preds = %226, %174
  %190 = load i32, i32* %18, align 4
  %191 = icmp slt i32 %190, 28
  br i1 %191, label %192, label %229

192:                                              ; preds = %189
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 16, %194
  %196 = load i32, i32* %18, align 4
  %197 = mul nsw i32 %196, 4
  %198 = add nsw i32 %195, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %193, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %25, align 4
  %202 = load i32, i32* %25, align 4
  %203 = ashr i32 %202, 4
  %204 = call i32 @sign_extend(i32 %203, i32 4)
  store i32 %204, i32* %27, align 4
  %205 = load i32, i32* %27, align 4
  %206 = load i32, i32* %19, align 4
  %207 = shl i32 %205, %206
  %208 = load i32, i32* %23, align 4
  %209 = load i32, i32* %21, align 4
  %210 = mul nsw i32 %208, %209
  %211 = load i32, i32* %24, align 4
  %212 = load i32, i32* %22, align 4
  %213 = mul nsw i32 %211, %212
  %214 = add nsw i32 %210, %213
  %215 = add nsw i32 %214, 32
  %216 = ashr i32 %215, 6
  %217 = add nsw i32 %207, %216
  store i32 %217, i32* %26, align 4
  %218 = load i32, i32* %23, align 4
  store i32 %218, i32* %24, align 4
  %219 = load i32, i32* %26, align 4
  %220 = call i32 @av_clip_int16(i32 %219)
  store i32 %220, i32* %23, align 4
  %221 = load i32, i32* %23, align 4
  %222 = load i32*, i32** %11, align 8
  %223 = load i32, i32* %18, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %221, i32* %225, align 4
  br label %226

226:                                              ; preds = %192
  %227 = load i32, i32* %18, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %18, align 4
  br label %189

229:                                              ; preds = %189
  %230 = load i32, i32* %15, align 4
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %232, label %239

232:                                              ; preds = %229
  %233 = load i32, i32* %23, align 4
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* %24, align 4
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  br label %246

239:                                              ; preds = %229
  %240 = load i32, i32* %23, align 4
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %24, align 4
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %239, %232
  %247 = load i32, i32* %15, align 4
  %248 = sub nsw i32 3, %247
  %249 = mul nsw i32 28, %248
  %250 = load i32*, i32** %10, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32* %252, i32** %10, align 8
  %253 = load i32, i32* %15, align 4
  %254 = sub nsw i32 3, %253
  %255 = mul nsw i32 28, %254
  %256 = load i32*, i32** %11, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32* %258, i32** %11, align 8
  br label %259

259:                                              ; preds = %246
  %260 = load i32, i32* %17, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %17, align 4
  br label %43

262:                                              ; preds = %43
  ret i32 0
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32**) #1

declare dso_local i32 @avpriv_request_sample(i32*, i8*, i32) #1

declare dso_local i32 @sign_extend(i32, i32) #1

declare dso_local i32 @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
