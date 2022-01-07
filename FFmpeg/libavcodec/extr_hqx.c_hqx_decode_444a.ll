; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqx.c_hqx_decode_444a.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqx.c_hqx_decode_444a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i64, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32**, i32 }

@hqx_quants = common dso_local global i32** null, align 8
@hqx_quant_luma = common dso_local global i32 0, align 4
@hqx_quant_chroma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32)* @hqx_decode_444a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hqx_decode_444a(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %10, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32* %26, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @get_vlc2(i32* %27, i32 %31, i32 %35, i32 1)
  store i32 %36, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %49, %4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 16
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @memset(i32* %47, i32 0, i32 256)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %37

52:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %65, %52
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 16
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 -2048, i32* %64, align 4
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %53

68:                                               ; preds = %53
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %149

71:                                               ; preds = %68
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @get_bits1(i32* %77)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32**, i32*** @hqx_quants, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i64 @get_bits(i32* %81, i32 4)
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %12, align 8
  %85 = load i32, i32* %17, align 4
  %86 = shl i32 %85, 4
  %87 = load i32, i32* %17, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = shl i32 %89, 8
  %91 = load i32, i32* %17, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %145, %79
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %94, 16
  br i1 %95, label %96, label %148

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %15, align 4
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %15, align 4
  %104 = icmp eq i32 %103, 8
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %15, align 4
  %107 = icmp eq i32 %106, 12
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %102, %99, %96
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %15, align 4
  %112 = shl i32 1, %111
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %109
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 9
  store i32 %119, i32* %18, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32*, i32** %12, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32**, i32*** %132, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @decode_block(i32* %120, i32* %126, i32* %127, i32 %130, i32* %137, i32* %14)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %115
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %5, align 4
  br label %282

143:                                              ; preds = %115
  br label %144

144:                                              ; preds = %143, %109
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %93

148:                                              ; preds = %93
  br label %149

149:                                              ; preds = %148, %68
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 0
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32**, i32*** %160, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* @hqx_quant_luma, align 4
  %165 = call i32 @put_blocks(%struct.TYPE_8__* %150, i32 3, i32 %151, i32 %152, i32 %153, i32* %158, i32* %163, i32 %164)
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 8
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32**, i32*** %172, align 8
  %174 = getelementptr inbounds i32*, i32** %173, i64 1
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32**, i32*** %177, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i64 3
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @hqx_quant_luma, align 4
  %182 = call i32 @put_blocks(%struct.TYPE_8__* %166, i32 3, i32 %168, i32 %169, i32 %170, i32* %175, i32* %180, i32 %181)
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32**, i32*** %188, align 8
  %190 = getelementptr inbounds i32*, i32** %189, i64 4
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32**, i32*** %193, align 8
  %195 = getelementptr inbounds i32*, i32** %194, i64 6
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* @hqx_quant_luma, align 4
  %198 = call i32 @put_blocks(%struct.TYPE_8__* %183, i32 0, i32 %184, i32 %185, i32 %186, i32* %191, i32* %196, i32 %197)
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 8
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32**, i32*** %205, align 8
  %207 = getelementptr inbounds i32*, i32** %206, i64 5
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32**, i32*** %210, align 8
  %212 = getelementptr inbounds i32*, i32** %211, i64 7
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* @hqx_quant_luma, align 4
  %215 = call i32 @put_blocks(%struct.TYPE_8__* %199, i32 0, i32 %201, i32 %202, i32 %203, i32* %208, i32* %213, i32 %214)
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load i32**, i32*** %221, align 8
  %223 = getelementptr inbounds i32*, i32** %222, i64 8
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i32**, i32*** %226, align 8
  %228 = getelementptr inbounds i32*, i32** %227, i64 10
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* @hqx_quant_chroma, align 4
  %231 = call i32 @put_blocks(%struct.TYPE_8__* %216, i32 2, i32 %217, i32 %218, i32 %219, i32* %224, i32* %229, i32 %230)
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 8
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %13, align 4
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i32**, i32*** %238, align 8
  %240 = getelementptr inbounds i32*, i32** %239, i64 9
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i32**, i32*** %243, align 8
  %245 = getelementptr inbounds i32*, i32** %244, i64 11
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* @hqx_quant_chroma, align 4
  %248 = call i32 @put_blocks(%struct.TYPE_8__* %232, i32 2, i32 %234, i32 %235, i32 %236, i32* %241, i32* %246, i32 %247)
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* %13, align 4
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i32**, i32*** %254, align 8
  %256 = getelementptr inbounds i32*, i32** %255, i64 12
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i32**, i32*** %259, align 8
  %261 = getelementptr inbounds i32*, i32** %260, i64 14
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* @hqx_quant_chroma, align 4
  %264 = call i32 @put_blocks(%struct.TYPE_8__* %249, i32 1, i32 %250, i32 %251, i32 %252, i32* %257, i32* %262, i32 %263)
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 8
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %13, align 4
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 0
  %272 = load i32**, i32*** %271, align 8
  %273 = getelementptr inbounds i32*, i32** %272, i64 13
  %274 = load i32*, i32** %273, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load i32**, i32*** %276, align 8
  %278 = getelementptr inbounds i32*, i32** %277, i64 15
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* @hqx_quant_chroma, align 4
  %281 = call i32 @put_blocks(%struct.TYPE_8__* %265, i32 1, i32 %267, i32 %268, i32 %269, i32* %274, i32* %279, i32 %280)
  store i32 0, i32* %5, align 4
  br label %282

282:                                              ; preds = %149, %141
  %283 = load i32, i32* %5, align 4
  ret i32 %283
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @decode_block(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @put_blocks(%struct.TYPE_8__*, i32, i32, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
