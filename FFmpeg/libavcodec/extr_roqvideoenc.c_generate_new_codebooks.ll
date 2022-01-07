; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqvideoenc.c_generate_new_codebooks.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqvideoenc.c_generate_new_codebooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, %struct.TYPE_12__*, i64, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32*, i64, i64 }

@MAX_CBS_4x4 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHROMA_BIAS = common dso_local global i32 0, align 4
@MAX_CBS_2x2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @generate_new_codebooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_new_codebooks(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [12 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = sdiv i32 %23, 16
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @MAX_CBS_4x4, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32* @av_malloc(i32 %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i8* @av_malloc_array(i32 %31, i32 96)
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i8* @av_malloc_array(i32 %34, i32 96)
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load i32*, i32** %12, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42, %39, %2
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %7, align 4
  br label %262

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @create_clusters(i32 %51, i32 %54, i32 %57, i32* %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %85, %48
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %62, 24
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = srem i32 %66, 6
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @CHROMA_BIAS, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i32 [ 1, %69 ], [ %71, %70 ]
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %74, %79
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %60

88:                                               ; preds = %60
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i32, i32* @MAX_CBS_4x4, align 4
  %100 = sub nsw i32 %99, 1
  br label %103

101:                                              ; preds = %88
  %102 = load i32, i32* @MAX_CBS_4x4, align 4
  br label %103

103:                                              ; preds = %101, %98
  %104 = phi i32 [ %100, %98 ], [ %102, %101 ]
  %105 = call i32 @generate_codebook(%struct.TYPE_10__* %89, %struct.TYPE_9__* %90, i32* %91, i32 %92, i32* %93, i32 4, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %262

108:                                              ; preds = %103
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @MAX_CBS_4x4, align 4
  %115 = sub nsw i32 %114, 1
  br label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @MAX_CBS_4x4, align 4
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i32 [ %115, %113 ], [ %117, %116 ]
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i8* @av_malloc_array(i32 %122, i32 16)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %118
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = call i32 @AVERROR(i32 %131)
  store i32 %132, i32* %7, align 4
  br label %262

133:                                              ; preds = %118
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = load i32*, i32** %13, align 8
  %137 = load i32, i32* %9, align 4
  %138 = mul nsw i32 %137, 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @MAX_CBS_2x2, align 4
  %143 = call i32 @generate_codebook(%struct.TYPE_10__* %134, %struct.TYPE_9__* %135, i32* %136, i32 %138, i32* %141, i32 2, i32 %142)
  store i32 %143, i32* %7, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %262

146:                                              ; preds = %133
  %147 = load i32, i32* @MAX_CBS_2x2, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %173, %146
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %176

156:                                              ; preds = %150
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = mul nsw i32 %166, 2
  %168 = mul nsw i32 %167, 2
  %169 = mul nsw i32 %168, 3
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  %172 = call i32 @unpack_roq_cell(i32* %162, i32* %171)
  br label %173

173:                                              ; preds = %156
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  br label %150

176:                                              ; preds = %150
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %258, %176
  %178 = load i32, i32* %5, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %261

183:                                              ; preds = %177
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %216, %183
  %185 = load i32, i32* %6, align 4
  %186 = icmp slt i32 %185, 4
  br i1 %186, label %187, label %219

187:                                              ; preds = %184
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* %5, align 4
  %190 = mul nsw i32 4, %189
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %188, i64 %193
  %195 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 0
  %196 = call i32 @unpack_roq_cell(i32* %194, i32* %195)
  %197 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 0
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = call i32 @index_mb(i32* %197, i32* %200, i32 %203, i32* %214, i32 2)
  br label %216

216:                                              ; preds = %187
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %6, align 4
  br label %184

219:                                              ; preds = %184
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i64 %227
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = mul nsw i32 %232, 4
  %234 = mul nsw i32 %233, 4
  %235 = mul nsw i32 %234, 3
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %231, %236
  %238 = call i32 @unpack_roq_qcell(i32* %222, %struct.TYPE_12__* %228, i64 %237)
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = mul nsw i32 %242, 4
  %244 = mul nsw i32 %243, 4
  %245 = mul nsw i32 %244, 3
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %241, %246
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = mul nsw i32 %251, 8
  %253 = mul nsw i32 %252, 8
  %254 = mul nsw i32 %253, 3
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %250, %255
  %257 = call i32 @enlarge_roq_mb4(i64 %247, i64 %256)
  br label %258

258:                                              ; preds = %219
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %5, align 4
  br label %177

261:                                              ; preds = %177
  br label %262

262:                                              ; preds = %261, %145, %130, %107, %45
  %263 = load i32*, i32** %12, align 8
  %264 = call i32 @av_free(i32* %263)
  %265 = load i32*, i32** %13, align 8
  %266 = call i32 @av_free(i32* %265)
  %267 = load i32*, i32** %11, align 8
  %268 = call i32 @av_free(i32* %267)
  %269 = load i32, i32* %7, align 4
  ret i32 %269
}

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @create_clusters(i32, i32, i32, i32*) #1

declare dso_local i32 @generate_codebook(%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @unpack_roq_cell(i32*, i32*) #1

declare dso_local i32 @index_mb(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @unpack_roq_qcell(i32*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @enlarge_roq_mb4(i64, i64) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
