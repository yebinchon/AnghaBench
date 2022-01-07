; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ljpegenc.c_ljpeg_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ljpegenc.c_ljpeg_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32*, i32*, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i64, i32 }
%struct.TYPE_21__ = type { i64 }

@AV_INPUT_BUFFER_MIN_SIZE = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGR0 = common dso_local global i64 0, align 8
@AV_PIX_FMT_BGR24 = common dso_local global i64 0, align 8
@AV_PIX_FMT_BGRA = common dso_local global i64 0, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i32*, i32*)* @ljpeg_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ljpeg_encode_frame(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %10, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %28, %33
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %35, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %42, %47
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %49, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* @AV_INPUT_BUFFER_MIN_SIZE, align 4
  store i32 %56, i32* %16, align 4
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AV_PIX_FMT_BGR0, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %4
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AV_PIX_FMT_BGR24, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62, %4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = mul nsw i32 %69, %70
  %72 = mul nsw i32 %71, 3
  %73 = mul nsw i32 %72, 4
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %16, align 4
  br label %111

76:                                               ; preds = %62
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AV_PIX_FMT_BGRA, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 %83, %84
  %86 = mul nsw i32 %85, 4
  %87 = mul nsw i32 %86, 4
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %16, align 4
  br label %110

90:                                               ; preds = %76
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = mul nsw i32 %91, %92
  %94 = mul nsw i32 %93, 3
  %95 = mul nsw i32 %94, 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %95, %100
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %101, %106
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %16, align 4
  br label %110

110:                                              ; preds = %90, %82
  br label %111

111:                                              ; preds = %110, %68
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @ff_alloc_packet2(%struct.TYPE_24__* %112, %struct.TYPE_23__* %113, i32 %114, i32 0)
  store i32 %115, i32* %17, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %5, align 4
  br label %191

119:                                              ; preds = %111
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @init_put_bits(%struct.TYPE_21__* %11, i32 %122, i64 %125)
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ff_mjpeg_encode_picture_header(%struct.TYPE_24__* %127, %struct.TYPE_21__* %11, i32* %129, i32 %132, i32 %135, i32 %138)
  %140 = call i32 @put_bits_count(%struct.TYPE_21__* %11)
  store i32 %140, i32* %18, align 4
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @AV_PIX_FMT_BGR0, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %158, label %146

146:                                              ; preds = %119
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @AV_PIX_FMT_BGRA, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @AV_PIX_FMT_BGR24, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152, %146, %119
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 @ljpeg_encode_bgr(%struct.TYPE_24__* %159, %struct.TYPE_21__* %11, i32* %160)
  store i32 %161, i32* %17, align 4
  br label %166

162:                                              ; preds = %152
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = call i32 @ljpeg_encode_yuv(%struct.TYPE_24__* %163, %struct.TYPE_21__* %11, i32* %164)
  store i32 %165, i32* %17, align 4
  br label %166

166:                                              ; preds = %162, %158
  %167 = load i32, i32* %17, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* %17, align 4
  store i32 %170, i32* %5, align 4
  br label %191

171:                                              ; preds = %166
  %172 = call i32 (...) @emms_c()
  %173 = load i32, i32* %18, align 4
  %174 = ashr i32 %173, 3
  %175 = call i32 @ff_mjpeg_escape_FF(%struct.TYPE_21__* %11, i32 %174)
  %176 = load i32, i32* %18, align 4
  %177 = call i32 @ff_mjpeg_encode_picture_trailer(%struct.TYPE_21__* %11, i32 %176)
  %178 = call i32 @flush_put_bits(%struct.TYPE_21__* %11)
  %179 = call i64 @put_bits_ptr(%struct.TYPE_21__* %11)
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = sub nsw i64 %179, %181
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  %185 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load i32*, i32** %9, align 8
  store i32 1, i32* %190, align 4
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %171, %169, %117
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_24__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @init_put_bits(%struct.TYPE_21__*, i32, i64) #1

declare dso_local i32 @ff_mjpeg_encode_picture_header(%struct.TYPE_24__*, %struct.TYPE_21__*, i32*, i32, i32, i32) #1

declare dso_local i32 @put_bits_count(%struct.TYPE_21__*) #1

declare dso_local i32 @ljpeg_encode_bgr(%struct.TYPE_24__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @ljpeg_encode_yuv(%struct.TYPE_24__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @ff_mjpeg_escape_FF(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ff_mjpeg_encode_picture_trailer(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @flush_put_bits(%struct.TYPE_21__*) #1

declare dso_local i64 @put_bits_ptr(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
