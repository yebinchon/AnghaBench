; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cljrenc.c_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cljrenc.c_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32**, i32* }

@encode_frame.ordered_dither = internal constant [2 x [2 x i32]] [[2 x i32] [i32 272629760, i32 273612800], [2 x i32] [i32 -886439936, i32 -886767616]], align 16
@FF_COMPLIANCE_UNOFFICIAL = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"Widths which are not a multiple of 4 might fail with some decoders, use vstrict=-1 / -strict -1 to use %d anyway.\0A\00", align 1
@AVERROR_EXPERIMENTAL = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32*)* @encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_frame(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [4 x i32], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %10, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FF_COMPLIANCE_UNOFFICIAL, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @av_log(%struct.TYPE_14__* %38, i32 %39, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @AVERROR_EXPERIMENTAL, align 4
  store i32 %44, i32* %5, align 4
  br label %244

45:                                               ; preds = %31, %4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 32, %50
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = sdiv i32 %55, 4
  %57 = call i32 @ff_alloc_packet2(%struct.TYPE_14__* %46, %struct.TYPE_12__* %47, i32 %56, i32 0)
  store i32 %57, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %5, align 4
  br label %244

61:                                               ; preds = %45
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @init_put_bits(i32* %11, i32 %64, i32 %67)
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %229, %61
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %232

75:                                               ; preds = %69
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %81, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %80, i64 %88
  store i32* %89, i32** %16, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32**, i32*** %91, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %95, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %94, i64 %102
  store i32* %103, i32** %17, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %109, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %108, i64 %116
  store i32* %117, i32** %18, align 8
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %225, %75
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %228

124:                                              ; preds = %118
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %144 [
    i32 0, label %128
    i32 1, label %129
    i32 2, label %133
  ]

128:                                              ; preds = %124
  store i32 1227489280, i32* %15, align 4
  br label %144

129:                                              ; preds = %124
  %130 = load i32, i32* %15, align 4
  %131 = mul nsw i32 %130, 1664525
  %132 = add nsw i32 %131, 1013904223
  store i32 %132, i32* %15, align 4
  br label %144

133:                                              ; preds = %124
  %134 = load i32, i32* %13, align 4
  %135 = and i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @encode_frame.ordered_dither, i64 0, i64 %136
  %138 = load i32, i32* %12, align 4
  %139 = ashr i32 %138, 2
  %140 = and i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %137, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %124, %133, %129, %128
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 3
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sge i32 %146, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %144
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %153 = call i32 @memset(i32* %152, i32 0, i32 16)
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %155 = load i32*, i32** %16, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %12, align 4
  %160 = sub nsw i32 %158, %159
  %161 = call i32 @memcpy(i32* %154, i32* %155, i32 %160)
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32* %162, i32** %16, align 8
  br label %163

163:                                              ; preds = %151, %144
  %164 = load i32*, i32** %16, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %15, align 4
  %168 = ashr i32 %167, 29
  %169 = add nsw i32 %166, %168
  %170 = mul nsw i32 249, %169
  %171 = ashr i32 %170, 11
  %172 = call i32 @put_bits(i32* %11, i32 5, i32 %171)
  %173 = load i32*, i32** %16, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %15, align 4
  %177 = ashr i32 %176, 26
  %178 = and i32 %177, 7
  %179 = add nsw i32 %175, %178
  %180 = mul nsw i32 249, %179
  %181 = ashr i32 %180, 11
  %182 = call i32 @put_bits(i32* %11, i32 5, i32 %181)
  %183 = load i32*, i32** %16, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %15, align 4
  %187 = ashr i32 %186, 23
  %188 = and i32 %187, 7
  %189 = add nsw i32 %185, %188
  %190 = mul nsw i32 249, %189
  %191 = ashr i32 %190, 11
  %192 = call i32 @put_bits(i32* %11, i32 5, i32 %191)
  %193 = load i32*, i32** %16, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %15, align 4
  %197 = ashr i32 %196, 20
  %198 = and i32 %197, 7
  %199 = add nsw i32 %195, %198
  %200 = mul nsw i32 249, %199
  %201 = ashr i32 %200, 11
  %202 = call i32 @put_bits(i32* %11, i32 5, i32 %201)
  %203 = load i32*, i32** %16, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 4
  store i32* %204, i32** %16, align 8
  %205 = load i32*, i32** %17, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %17, align 8
  %207 = load i32, i32* %205, align 4
  %208 = load i32, i32* %15, align 4
  %209 = ashr i32 %208, 18
  %210 = and i32 %209, 3
  %211 = add nsw i32 %207, %210
  %212 = mul nsw i32 253, %211
  %213 = ashr i32 %212, 10
  %214 = call i32 @put_bits(i32* %11, i32 6, i32 %213)
  %215 = load i32*, i32** %18, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %18, align 8
  %217 = load i32, i32* %215, align 4
  %218 = load i32, i32* %15, align 4
  %219 = ashr i32 %218, 16
  %220 = and i32 %219, 3
  %221 = add nsw i32 %217, %220
  %222 = mul nsw i32 253, %221
  %223 = ashr i32 %222, 10
  %224 = call i32 @put_bits(i32* %11, i32 6, i32 %223)
  br label %225

225:                                              ; preds = %163
  %226 = load i32, i32* %12, align 4
  %227 = add nsw i32 %226, 4
  store i32 %227, i32* %12, align 4
  br label %118

228:                                              ; preds = %118
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %13, align 4
  br label %69

232:                                              ; preds = %69
  %233 = call i32 @flush_put_bits(i32* %11)
  %234 = call i32 @put_bits_count(i32* %11)
  %235 = sdiv i32 %234, 8
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load i32*, i32** %9, align 8
  store i32 1, i32* %243, align 4
  store i32 0, i32* %5, align 4
  br label %244

244:                                              ; preds = %232, %59, %37
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_14__*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @init_put_bits(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @put_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
