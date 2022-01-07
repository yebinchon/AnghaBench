; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg1_decode_block_inter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg1_decode_block_inter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32*, i32, i32*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@ff_rl_mpeg1 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@re = common dso_local global i32 0, align 4
@TEX_VLC_BITS = common dso_local global i32 0, align 4
@MAX_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @mpeg1_decode_block_inter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg1_decode_block_inter(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_8__* @ff_rl_mpeg1, %struct.TYPE_8__** %11, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @re, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = call i32 @OPEN_READER(i32 %25, i32* %27)
  store i32 -1, i32* %8, align 4
  %29 = load i32, i32* @re, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = call i32 @UPDATE_CACHE(i32 %29, i32* %31)
  %33 = load i32, i32* @re, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = call i32 @GET_CACHE(i32 %33, i32* %35)
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %3
  %40 = load i32, i32* %14, align 4
  %41 = mul nsw i32 3, %40
  %42 = load i32*, i32** %13, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = ashr i32 %45, 5
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  %49 = or i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @re, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = call i32 @GET_CACHE(i32 %50, i32* %52)
  %54 = and i32 %53, 1073741824
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %39
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @re, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = call i32 @SKIP_BITS(i32 %65, i32* %67, i32 2)
  %69 = load i32, i32* @re, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = call i32 @GET_CACHE(i32 %69, i32* %71)
  %73 = sext i32 %72 to i64
  %74 = icmp sle i64 %73, 3221225471
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  br label %256

76:                                               ; preds = %59
  br label %77

77:                                               ; preds = %76, %3
  br label %78

78:                                               ; preds = %250, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @re, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TEX_VLC_BITS, align 4
  %90 = call i32 @GET_RL_VLC(i32 %79, i32 %80, i32 %81, i32* %83, i32 %88, i32 %89, i32 2, i32 0)
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %137

93:                                               ; preds = %78
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @MAX_INDEX, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %255

101:                                              ; preds = %93
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %107, 2
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* %14, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %111, %116
  %118 = ashr i32 %117, 5
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %119, 1
  %121 = or i32 %120, 1
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @re, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 3
  %126 = call i32 @SHOW_SBITS(i32 %123, i32* %125, i32 1)
  %127 = xor i32 %122, %126
  %128 = load i32, i32* @re, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = call i32 @SHOW_SBITS(i32 %128, i32* %130, i32 1)
  %132 = sub nsw i32 %127, %131
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* @re, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = call i32 @SKIP_BITS(i32 %133, i32* %135, i32 1)
  br label %237

137:                                              ; preds = %78
  %138 = load i32, i32* @re, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = call i32 @SHOW_UBITS(i32 %138, i32* %140, i32 6)
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* @re, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = call i32 @LAST_SKIP_BITS(i32 %143, i32* %145, i32 6)
  %147 = load i32, i32* @re, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 3
  %150 = call i32 @UPDATE_CACHE(i32 %147, i32* %149)
  %151 = load i32, i32* @re, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 3
  %154 = call i32 @SHOW_SBITS(i32 %151, i32* %153, i32 8)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* @re, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 3
  %158 = call i32 @SKIP_BITS(i32 %155, i32* %157, i32 8)
  %159 = load i32, i32* %7, align 4
  %160 = icmp eq i32 %159, -128
  br i1 %160, label %161, label %171

161:                                              ; preds = %137
  %162 = load i32, i32* @re, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 3
  %165 = call i32 @SHOW_UBITS(i32 %162, i32* %164, i32 8)
  %166 = sub nsw i32 %165, 256
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* @re, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 3
  %170 = call i32 @SKIP_BITS(i32 %167, i32* %169, i32 8)
  br label %184

171:                                              ; preds = %137
  %172 = load i32, i32* %7, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = load i32, i32* @re, align 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 3
  %178 = call i32 @SHOW_UBITS(i32 %175, i32* %177, i32 8)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* @re, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 3
  %182 = call i32 @SKIP_BITS(i32 %179, i32* %181, i32 8)
  br label %183

183:                                              ; preds = %174, %171
  br label %184

184:                                              ; preds = %183, %161
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @MAX_INDEX, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %255

192:                                              ; preds = %184
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %220

200:                                              ; preds = %192
  %201 = load i32, i32* %7, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = mul nsw i32 %203, 2
  %205 = add nsw i32 %204, 1
  %206 = load i32, i32* %14, align 4
  %207 = mul nsw i32 %205, %206
  %208 = load i32*, i32** %13, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %207, %212
  %214 = ashr i32 %213, 5
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = sub nsw i32 %215, 1
  %217 = or i32 %216, 1
  store i32 %217, i32* %7, align 4
  %218 = load i32, i32* %7, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %7, align 4
  br label %236

220:                                              ; preds = %192
  %221 = load i32, i32* %7, align 4
  %222 = mul nsw i32 %221, 2
  %223 = add nsw i32 %222, 1
  %224 = load i32, i32* %14, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32*, i32** %13, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 %225, %230
  %232 = ashr i32 %231, 5
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = sub nsw i32 %233, 1
  %235 = or i32 %234, 1
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %220, %200
  br label %237

237:                                              ; preds = %236, %101
  %238 = load i32, i32* %7, align 4
  %239 = load i32*, i32** %5, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32 %238, i32* %242, align 4
  %243 = load i32, i32* @re, align 4
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 3
  %246 = call i32 @GET_CACHE(i32 %243, i32* %245)
  %247 = sext i32 %246 to i64
  %248 = icmp sle i64 %247, 3221225471
  br i1 %248, label %249, label %250

249:                                              ; preds = %237
  br label %255

250:                                              ; preds = %237
  %251 = load i32, i32* @re, align 4
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 3
  %254 = call i32 @UPDATE_CACHE(i32 %251, i32* %253)
  br label %78

255:                                              ; preds = %249, %191, %100
  br label %256

256:                                              ; preds = %255, %75
  %257 = load i32, i32* @re, align 4
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 3
  %260 = call i32 @LAST_SKIP_BITS(i32 %257, i32* %259, i32 2)
  %261 = load i32, i32* @re, align 4
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 3
  %264 = call i32 @CLOSE_READER(i32 %261, i32* %263)
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %266 = load i32, i32* %8, align 4
  %267 = call i32 @check_scantable_index(%struct.TYPE_9__* %265, i32 %266)
  %268 = load i32, i32* %8, align 4
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  store i32 %268, i32* %274, align 4
  ret i32 0
}

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_CACHE(i32, i32*) #1

declare dso_local i32 @SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @GET_RL_VLC(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @SHOW_SBITS(i32, i32*, i32) #1

declare dso_local i32 @SHOW_UBITS(i32, i32*, i32) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

declare dso_local i32 @check_scantable_index(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
