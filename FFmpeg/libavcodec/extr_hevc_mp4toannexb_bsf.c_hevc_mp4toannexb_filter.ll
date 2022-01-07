; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_mp4toannexb_bsf.c_hevc_mp4toannexb_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_mp4toannexb_bsf.c_hevc_mp4toannexb_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i64 }

@SIZE_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @hevc_mp4toannexb_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_mp4toannexb_filter(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
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
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = call i32 @ff_bsf_get_packet(%struct.TYPE_19__* %21, %struct.TYPE_18__** %7)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %3, align 4
  br label %177

27:                                               ; preds = %2
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = call i32 @av_packet_move_ref(%struct.TYPE_18__* %33, %struct.TYPE_18__* %34)
  %36 = call i32 @av_packet_free(%struct.TYPE_18__** %7)
  store i32 0, i32* %3, align 4
  br label %177

37:                                               ; preds = %27
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bytestream2_init(i32* %8, i64 %40, i32 %43)
  br label %45

45:                                               ; preds = %137, %37
  %46 = call i64 @bytestream2_get_bytes_left(i32* %8)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %160

48:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %60, %48
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  %57 = shl i32 %56, 8
  %58 = call i32 @bytestream2_get_byte(i32* %8)
  %59 = or i32 %57, %58
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %49

63:                                               ; preds = %49
  %64 = call i32 @bytestream2_peek_byte(i32* %8)
  %65 = ashr i32 %64, 1
  %66 = and i32 %65, 63
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sge i32 %67, 16
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  %71 = icmp sle i32 %70, 23
  br label %72

72:                                               ; preds = %69, %63
  %73 = phi i1 [ false, %63 ], [ %71, %69 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %77, %72
  %82 = phi i1 [ false, %72 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %84, %89
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* @SIZE_MAX, align 4
  %95 = load i32, i32* %12, align 4
  %96 = sub nsw i32 %94, %95
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %105, label %98

98:                                               ; preds = %81
  %99 = load i32, i32* @SIZE_MAX, align 4
  %100 = sub nsw i32 %99, 4
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32, i32* %16, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98, %81
  %106 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %106, i32* %11, align 4
  br label %168

107:                                              ; preds = %98
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %17, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 4, %112
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @av_grow_packet(%struct.TYPE_18__* %111, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %168

120:                                              ; preds = %107
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @memcpy(i64 %129, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %123, %120
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %140, %142
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = call i32 @AV_WB32(i64 %146, i32 1)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = add nsw i64 %153, 4
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %154, %156
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @bytestream2_get_buffer(i32* %8, i64 %157, i32 %158)
  br label %45

160:                                              ; preds = %45
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %163 = call i32 @av_packet_copy_props(%struct.TYPE_18__* %161, %struct.TYPE_18__* %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %168

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %166, %119, %105
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %173 = call i32 @av_packet_unref(%struct.TYPE_18__* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = call i32 @av_packet_free(%struct.TYPE_18__** %7)
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %174, %32, %25
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @ff_bsf_get_packet(%struct.TYPE_19__*, %struct.TYPE_18__**) #1

declare dso_local i32 @av_packet_move_ref(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @av_packet_free(%struct.TYPE_18__**) #1

declare dso_local i32 @bytestream2_init(i32*, i64, i32) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_peek_byte(i32*) #1

declare dso_local i32 @av_grow_packet(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @AV_WB32(i64, i32) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i64, i32) #1

declare dso_local i32 @av_packet_copy_props(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
