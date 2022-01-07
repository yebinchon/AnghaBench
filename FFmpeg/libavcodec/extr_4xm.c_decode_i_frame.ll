; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_4xm.c_decode_i_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_4xm.c_decode_i_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__, i32, i32*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 (i32*, i32*, i32)* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"packet size too small\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"size mismatch %d %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error reading Huffman tables.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ACDC_VLC_BITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"end mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32)* @decode_i_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_i_frame(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @AV_RL32(i32* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ugt i32 %28, 67108864
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %4, align 4
  br label %195

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %13, align 4
  %35 = add i32 %34, 12
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %40, i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %4, align 4
  br label %195

44:                                               ; preds = %32
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = call i32 @AV_RL32(i32* %49)
  %51 = mul nsw i32 4, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = getelementptr inbounds i32, i32* %55, i64 12
  store i32* %56, i32** %15, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add i32 %57, %58
  %60 = add i32 %59, 12
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %44
  %64 = load i32, i32* %14, align 4
  %65 = icmp ugt i32 %64, 67108864
  br i1 %65, label %66, label %76

66:                                               ; preds = %63, %44
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %69, i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %75, i32* %4, align 4
  br label %195

76:                                               ; preds = %63
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32* @read_huffman_tables(%struct.TYPE_11__* %77, i32* %78, i32 %79)
  store i32* %80, i32** %15, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %86, i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %89, i32* %4, align 4
  br label %195

90:                                               ; preds = %76
  %91 = load i32*, i32** %15, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = icmp ule i32* %91, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @av_assert0(i32 %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 7
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  %103 = load i32, i32* %13, align 4
  %104 = mul i32 8, %103
  %105 = call i32 @init_get_bits(i32* %100, i32* %102, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32*, i32** %15, align 8
  %111 = ptrtoint i32* %109 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %14, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 6
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @av_fast_padded_malloc(i32** %117, i32* %119, i32 %120)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %90
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = call i32 @AVERROR(i32 %127)
  store i32 %128, i32* %4, align 4
  br label %195

129:                                              ; preds = %90
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %132, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i32*, i32** %15, align 8
  %138 = load i32, i32* %14, align 4
  %139 = udiv i32 %138, 4
  %140 = call i32 %133(i32* %136, i32* %137, i32 %139)
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = mul i32 8, %146
  %148 = call i32 @init_get_bits(i32* %142, i32* %145, i32 %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %175, %129
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %178

155:                                              ; preds = %151
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %171, %155
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %174

160:                                              ; preds = %156
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = call i32 @decode_i_mb(%struct.TYPE_11__* %161)
  store i32 %162, i32* %10, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %4, align 4
  br label %195

166:                                              ; preds = %160
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @idct_put(%struct.TYPE_11__* %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %166
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 16
  store i32 %173, i32* %8, align 4
  br label %156

174:                                              ; preds = %156
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 16
  store i32 %177, i32* %9, align 4
  br label %151

178:                                              ; preds = %151
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @ACDC_VLC_BITS, align 4
  %186 = call i32 @get_vlc2(i32* %180, i32 %184, i32 %185, i32 3)
  %187 = icmp ne i32 %186, 256
  br i1 %187, label %188, label %194

188:                                              ; preds = %178
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = load i32, i32* @AV_LOG_ERROR, align 4
  %193 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %191, i32 %192, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %194

194:                                              ; preds = %188, %178
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %194, %164, %126, %83, %66, %37, %30
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32* @read_huffman_tables(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @av_fast_padded_malloc(i32**, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @decode_i_mb(%struct.TYPE_11__*) #1

declare dso_local i32 @idct_put(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
