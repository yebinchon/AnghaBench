; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dnxhdenc.c_dnxhd_encode_rdo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dnxhdenc.c_dnxhd_encode_rdo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_11__*, i32, i32*, i32*, i32)* }
%struct.TYPE_10__ = type { i32, i32, i32*, i32*, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@dnxhd_calc_bits_thread = common dso_local global i32 0, align 4
@LAMBDA_FRAC_BITS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @dnxhd_encode_rdo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnxhd_encode_rdo(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %22 = load i32, i32* @INT_MAX, align 4
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %13, align 4
  br label %23

23:                                               ; preds = %43, %2
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_11__*, i32, i32*, i32*, i32)*, i32 (%struct.TYPE_11__*, i32, i32*, i32*, i32)** %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = load i32, i32* @dnxhd_calc_bits_thread, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %35(%struct.TYPE_11__* %36, i32 %37, i32* null, i32* null, i32 %41)
  br label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %23

46:                                               ; preds = %23
  %47 = load i32, i32* @LAMBDA_FRAC_BITS, align 4
  %48 = shl i32 2, %47
  store i32 %48, i32* %8, align 4
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %263, %46
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %59

59:                                               ; preds = %56, %52
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %179, %59
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %182

67:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %165, %67
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %168

75:                                               ; preds = %68
  %76 = load i32, i32* @UINT_MAX, align 4
  store i32 %76, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %77, %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 1, i32* %13, align 4
  br label %85

85:                                               ; preds = %130, %75
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %133

91:                                               ; preds = %85
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %92, %96
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %20, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* @LAMBDA_FRAC_BITS, align 4
  %120 = shl i32 %118, %119
  %121 = add i32 %109, %120
  store i32 %121, i32* %21, align 4
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %91
  %126 = load i32, i32* %21, align 4
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %20, align 4
  store i32 %128, i32* %19, align 4
  br label %129

129:                                              ; preds = %125, %91
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %85

133:                                              ; preds = %85
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 5
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i32, i32* %19, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %18, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  br label %165

165:                                              ; preds = %133
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %68

168:                                              ; preds = %68
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 31
  %171 = and i32 %170, -32
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = icmp sgt i32 %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %182

178:                                              ; preds = %168
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %12, align 4
  br label %60

182:                                              ; preds = %177, %60
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = icmp sgt i32 %186, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32, i32* @EINVAL, align 4
  %193 = call i32 @AVERROR(i32 %192)
  store i32 %193, i32* %3, align 4
  br label %268

194:                                              ; preds = %185
  br label %264

195:                                              ; preds = %182
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %230

201:                                              ; preds = %195
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %9, align 4
  %204 = call i32 @FFMIN(i32 %202, i32 %203)
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %201
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %208, %209
  %211 = ashr i32 %210, 1
  store i32 %211, i32* %6, align 4
  br label %216

212:                                              ; preds = %201
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %6, align 4
  %215 = sub nsw i32 %214, %213
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %212, %207
  %217 = load i32, i32* %8, align 4
  %218 = mul nsw i32 %217, 5
  %219 = load i32, i32* @INT_MAX, align 4
  %220 = call i32 @FFMIN(i32 %218, i32 %219)
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* @LAMBDA_FRAC_BITS, align 4
  %222 = shl i32 1, %221
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @FFMAX(i32 1, i32 %223)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %216
  br label %264

229:                                              ; preds = %216
  br label %263

230:                                              ; preds = %195
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* %10, align 4
  %233 = call i32 @FFMAX(i32 %231, i32 %232)
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* @INT_MAX, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %230
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %238, %239
  %241 = ashr i32 %240, 1
  store i32 %241, i32* %6, align 4
  br label %256

242:                                              ; preds = %230
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %243, %244
  %246 = load i32, i32* @INT_MAX, align 4
  %247 = icmp sgt i32 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load i32, i32* @EINVAL, align 4
  %250 = call i32 @AVERROR(i32 %249)
  store i32 %250, i32* %3, align 4
  br label %268

251:                                              ; preds = %242
  %252 = load i32, i32* %7, align 4
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %6, align 4
  br label %255

255:                                              ; preds = %251
  br label %256

256:                                              ; preds = %255, %237
  %257 = load i32, i32* %7, align 4
  %258 = mul nsw i32 %257, 5
  %259 = load i32, i32* @INT_MAX, align 4
  %260 = call i32 @FFMIN(i32 %258, i32 %259)
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* @LAMBDA_FRAC_BITS, align 4
  %262 = shl i32 1, %261
  store i32 %262, i32* %8, align 4
  br label %263

263:                                              ; preds = %256, %229
  br label %52

264:                                              ; preds = %228, %194
  %265 = load i32, i32* %6, align 4
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 4
  store i32 0, i32* %3, align 4
  br label %268

268:                                              ; preds = %264, %248, %191
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
