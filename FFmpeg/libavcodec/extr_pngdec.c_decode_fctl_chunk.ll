; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_decode_fctl_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_decode_fctl_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@PNG_IHDR = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"fctl before IHDR\0A\00", align 1
@APNG_BLEND_OP_OVER = common dso_local global i32 0, align 4
@APNG_BLEND_OP_SOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid blend_op %d\0A\00", align 1
@APNG_DISPOSE_OP_PREVIOUS = common dso_local global i32 0, align 4
@APNG_DISPOSE_OP_BACKGROUND = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGB48BE = common dso_local global i64 0, align 8
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AV_PIX_FMT_GRAY8 = common dso_local global i64 0, align 8
@AV_PIX_FMT_GRAY16BE = common dso_local global i64 0, align 8
@AV_PIX_FMT_MONOBLACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @decode_fctl_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_fctl_chunk(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 26
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %18, i32* %4, align 4
  br label %233

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PNG_IHDR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %27, i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %30, i32* %4, align 4
  br label %233

31:                                               ; preds = %19
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 16
  %59 = call i32 @bytestream2_get_be32(i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 16
  %62 = call i32 @bytestream2_get_be32(i32* %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 16
  %65 = call i32 @bytestream2_get_be32(i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 16
  %68 = call i32 @bytestream2_get_be32(i32* %67)
  store i32 %68, i32* %11, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 16
  %71 = call i32 @bytestream2_get_be32(i32* %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 16
  %74 = call i32 @bytestream2_skip(i32* %73, i32 4)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 16
  %77 = call i32 @bytestream2_get_byte(i32* %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 16
  %80 = call i32 @bytestream2_get_byte(i32* %79)
  store i32 %80, i32* %14, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 16
  %83 = call i32 @bytestream2_skip(i32* %82, i32 4)
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %31
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %87, %90
  br i1 %91, label %132, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 12
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %132, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %132, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %132, label %104

104:                                              ; preds = %101, %31
  %105 = load i32, i32* %9, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %132, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = icmp sle i32 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %132, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %132, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %11, align 4
  %122 = sub nsw i32 %120, %121
  %123 = icmp sgt i32 %117, %122
  br i1 %123, label %132, label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 12
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sub nsw i32 %128, %129
  %131 = icmp sgt i32 %125, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %124, %116, %113, %110, %107, %104, %101, %98, %92, %86
  %133 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %133, i32* %4, align 4
  br label %233

134:                                              ; preds = %124
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @APNG_BLEND_OP_OVER, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @APNG_BLEND_OP_SOURCE, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %144 = load i32, i32* @AV_LOG_ERROR, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %143, i32 %144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %147, i32* %4, align 4
  br label %233

148:                                              ; preds = %138, %134
  %149 = load i32, i32* %8, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %148
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 15
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %151, %148
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @APNG_DISPOSE_OP_PREVIOUS, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* @APNG_DISPOSE_OP_BACKGROUND, align 4
  store i32 %166, i32* %13, align 4
  br label %167

167:                                              ; preds = %165, %161, %151
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* @APNG_BLEND_OP_OVER, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %214

171:                                              ; preds = %167
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 14
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %214, label %176

176:                                              ; preds = %171
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %212, label %182

182:                                              ; preds = %176
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @AV_PIX_FMT_RGB48BE, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %212, label %188

188:                                              ; preds = %182
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %212, label %194

194:                                              ; preds = %188
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @AV_PIX_FMT_GRAY8, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %212, label %200

200:                                              ; preds = %194
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @AV_PIX_FMT_GRAY16BE, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %212, label %206

206:                                              ; preds = %200
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @AV_PIX_FMT_MONOBLACK, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %206, %200, %194, %188, %182, %176
  %213 = load i32, i32* @APNG_BLEND_OP_SOURCE, align 4
  store i32 %213, i32* %14, align 4
  br label %214

214:                                              ; preds = %212, %206, %171, %167
  %215 = load i32, i32* %9, align 4
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 6
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %12, align 4
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 8
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* %13, align 4
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 10
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* %14, align 4
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 13
  store i32 %230, i32* %232, align 4
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %214, %142, %132, %26, %17
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
