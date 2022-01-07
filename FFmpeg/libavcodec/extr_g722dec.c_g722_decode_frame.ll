; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g722dec.c_g722_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g722dec.c_g722_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32*, i32, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 (i32*, i32*)* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64* }

@low_inv_quants = common dso_local global i32** null, align 8
@ff_g722_high_inv_quant = common dso_local global i32* null, align 8
@PREV_SAMPLES_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_15__*)* @g722_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g722_decode_frame(%struct.TYPE_17__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [2 x i32], align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %10, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %11, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 8, %31
  store i32 %32, i32* %15, align 4
  %33 = load i32**, i32*** @low_inv_quants, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %16, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 2
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %46 = call i32 @ff_get_buffer(%struct.TYPE_17__* %44, %struct.TYPE_16__* %45, i32 0)
  store i32 %46, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %227

50:                                               ; preds = %4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %12, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @init_get_bits8(i32* %17, i32 %59, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %50
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %5, align 4
  br label %227

68:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %219, %68
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %222

75:                                               ; preds = %69
  %76 = call i32 @get_bits(i32* %17, i32 2)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %15, align 4
  %78 = sub nsw i32 6, %77
  %79 = call i32 @get_bits(i32* %17, i32 %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @skip_bits(i32* %17, i32 %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %87, %92
  %94 = ashr i32 %93, 10
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %95, %101
  %103 = call i32 @av_clip_intp2(i64 %102, i32 14)
  store i32 %103, i32* %20, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 0
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 2, %109
  %111 = ashr i32 %108, %110
  %112 = call i32 @ff_g722_update_low_predictor(%struct.TYPE_12__* %107, i32 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** @ff_g722_high_inv_quant, align 8
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %118, %123
  %125 = ashr i32 %124, 10
  store i32 %125, i32* %22, align 4
  %126 = load i32, i32* %22, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i64 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %127, %133
  %135 = call i32 @av_clip_intp2(i64 %134, i32 14)
  store i32 %135, i32* %21, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i64 1
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @ff_g722_update_high_predictor(%struct.TYPE_12__* %139, i32 %140, i32 %141)
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %143, %144
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %148, i64 %153
  store i32 %145, i32* %154, align 4
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %21, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %160, i64 %165
  store i32 %157, i32* %166, align 4
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %169, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = getelementptr inbounds i32, i32* %178, i64 -24
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %181 = call i32 %170(i32* %179, i32* %180)
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = ashr i32 %183, 11
  %185 = call i8* @av_clip_int16(i32 %184)
  %186 = ptrtoint i8* %185 to i32
  %187 = load i32*, i32** %12, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %12, align 8
  store i32 %186, i32* %187, align 4
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 11
  %192 = call i8* @av_clip_int16(i32 %191)
  %193 = ptrtoint i8* %192 to i32
  %194 = load i32*, i32** %12, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %12, align 8
  store i32 %193, i32* %194, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = load i64, i64* @PREV_SAMPLES_BUF_SIZE, align 8
  %201 = icmp sge i64 %199, %200
  br i1 %201, label %202, label %218

202:                                              ; preds = %75
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %208, i64 %212
  %214 = getelementptr inbounds i32, i32* %213, i64 -22
  %215 = call i32 @memmove(i32* %205, i32* %214, i32 88)
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 2
  store i32 22, i32* %217, align 8
  br label %218

218:                                              ; preds = %202, %75
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %13, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %13, align 4
  br label %69

222:                                              ; preds = %69
  %223 = load i32*, i32** %8, align 8
  store i32 1, i32* %223, align 4
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %5, align 4
  br label %227

227:                                              ; preds = %222, %66, %48
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @av_clip_intp2(i64, i32) #1

declare dso_local i32 @ff_g722_update_low_predictor(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ff_g722_update_high_predictor(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i8* @av_clip_int16(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
