; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tdsc.c_tdsc_decode_tiles.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tdsc.c_tdsc_decode_tiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32*, i64* }

@TDSB_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TDSB tag is too small.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Invalid tile position (%d.%d outside %dx%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid tile size %dx%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unknown tile type %08x.\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Tile %d, %dx%d (%d.%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @tdsc_decode_tiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdsc_decode_tiles(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %220, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %223

22:                                               ; preds = %18
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 4
  %25 = call i32 @bytestream2_get_bytes_left(i32* %24)
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %40, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = call i32 @bytestream2_get_le32(i32* %29)
  %31 = call i32 @MKTAG(i8 signext 84, i8 signext 68, i8 signext 83, i8 signext 66)
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = call i32 @bytestream2_get_bytes_left(i32* %35)
  %37 = load i32, i32* @TDSB_HEADER_SIZE, align 4
  %38 = sub nsw i32 %37, 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33, %27, %22
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %41, i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %3, align 4
  br label %224

45:                                               ; preds = %33
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  %48 = call i32 @bytestream2_get_le32(i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  %51 = call i32 @bytestream2_get_bytes_left(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %3, align 4
  br label %224

56:                                               ; preds = %45
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = call i32 @bytestream2_get_le32(i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  %62 = call i32 @bytestream2_skip(i32* %61, i32 4)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 4
  %65 = call i32 @bytestream2_get_le32(i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  %68 = call i32 @bytestream2_get_le32(i32* %67)
  store i32 %68, i32* %11, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = call i32 @bytestream2_get_le32(i32* %70)
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %12, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = call i32 @bytestream2_get_le32(i32* %75)
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sge i32 %79, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %56
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %85, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84, %56
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %91, i32 %92, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94, i32 %97, i32 %100)
  %102 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %102, i32* %3, align 4
  br label %224

103:                                              ; preds = %84
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %119, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %112, %113
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %114, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %111, %103
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = load i32, i32* @AV_LOG_ERROR, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %120, i32 %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %125, i32* %3, align 4
  br label %224

126:                                              ; preds = %111
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @av_reallocp(i32* %128, i32 %129)
  store i32 %130, i32* %14, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %3, align 4
  br label %224

137:                                              ; preds = %126
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @bytestream2_get_buffer(i32* %139, i32 %142, i32 %143)
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @MKTAG(i8 signext 71, i8 signext 69, i8 signext 80, i8 signext 74)
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %137
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @tdsc_decode_jpeg_tile(%struct.TYPE_9__* %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %3, align 4
  br label %224

160:                                              ; preds = %148
  br label %211

161:                                              ; preds = %137
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @MKTAG(i8 signext 32, i8 signext 87, i8 signext 65, i8 signext 82)
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %204

165:                                              ; preds = %161
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = mul nsw i32 %173, 3
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %172, %175
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %11, align 4
  %185 = mul nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %176, %186
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = mul nsw i32 %198, 3
  %200 = load i32, i32* %12, align 4
  %201 = mul nsw i32 %200, 3
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @av_image_copy_plane(i64 %187, i32 %194, i32 %197, i32 %199, i32 %201, i32 %202)
  br label %210

204:                                              ; preds = %161
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %206 = load i32, i32* @AV_LOG_ERROR, align 4
  %207 = load i32, i32* %9, align 4
  %208 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %205, i32 %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %209, i32* %3, align 4
  br label %224

210:                                              ; preds = %165
  br label %211

211:                                              ; preds = %210, %160
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %213 = load i32, i32* @AV_LOG_DEBUG, align 4
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %11, align 4
  %219 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %212, i32 %213, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %214, i32 %215, i32 %216, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %211
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  br label %18

223:                                              ; preds = %18
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %204, %158, %135, %119, %90, %54, %40
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @av_reallocp(i32*, i32) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32, i32) #1

declare dso_local i32 @tdsc_decode_jpeg_tile(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_image_copy_plane(i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
