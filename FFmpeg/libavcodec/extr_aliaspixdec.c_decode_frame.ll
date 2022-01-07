; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aliaspixdec.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aliaspixdec.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32**, i32*, i32 }

@ALIAS_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Header too small %d.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGR24 = common dso_local global i64 0, align 8
@AV_PIX_FMT_GRAY8 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid pixel format.\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Ended frame decoding with %d bytes left.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid run length %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Picture stopped at %d,%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*, %struct.TYPE_10__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_12__* %0, i8* %1, i32* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %10, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bytestream2_init(i32* %11, i32 %26, i32 %29)
  %31 = call i32 @bytestream2_get_bytes_left(i32* %11)
  %32 = load i32, i32* @ALIAS_HEADER_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %35, i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %5, align 4
  br label %218

42:                                               ; preds = %4
  %43 = call i32 @bytestream2_get_be16u(i32* %11)
  store i32 %43, i32* %12, align 4
  %44 = call i32 @bytestream2_get_be16u(i32* %11)
  store i32 %44, i32* %13, align 4
  %45 = call i32 @bytestream2_skipu(i32* %11, i32 4)
  %46 = call i32 @bytestream2_get_be16u(i32* %11)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %47, 24
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i64, i64* @AV_PIX_FMT_BGR24, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %66

53:                                               ; preds = %42
  %54 = load i32, i32* %15, align 4
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* @AV_PIX_FMT_GRAY8, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %65

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %61, i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %64, i32* %5, align 4
  br label %218

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %49
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @ff_set_dimensions(%struct.TYPE_12__* %67, i32 %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %5, align 4
  br label %218

75:                                               ; preds = %66
  %76 = call i32 @bytestream2_get_bytes_left(i32* %11)
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sdiv i32 %79, 255
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %83, i32* %5, align 4
  br label %218

84:                                               ; preds = %75
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %87 = call i32 @ff_get_buffer(%struct.TYPE_12__* %85, %struct.TYPE_11__* %86, i32 0)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %5, align 4
  br label %218

92:                                               ; preds = %84
  %93 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32**, i32*** %99, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 0
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %17, align 8
  br label %103

103:                                              ; preds = %194, %92
  %104 = call i32 @bytestream2_get_bytes_left(i32* %11)
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %198

106:                                              ; preds = %103
  %107 = load i32, i32* %19, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %106
  store i32 0, i32* %19, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32**, i32*** %114, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %20, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %20, align 4
  %125 = mul nsw i32 %122, %123
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %117, i64 %126
  store i32* %127, i32** %17, align 8
  %128 = load i32, i32* %20, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %128, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %112
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = call i32 @bytestream2_get_bytes_left(i32* %11)
  %137 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %134, i32 %135, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %138, i32* %5, align 4
  br label %218

139:                                              ; preds = %112
  br label %140

140:                                              ; preds = %139, %106
  %141 = call i32 @bytestream2_get_byteu(i32* %11)
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %145, %146
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp sgt i32 %147, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %144, %140
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = load i32, i32* @AV_LOG_ERROR, align 4
  %155 = load i32, i32* %18, align 4
  %156 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %153, i32 %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %157, i32* %5, align 4
  br label %218

158:                                              ; preds = %144
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @AV_PIX_FMT_BGR24, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %158
  %165 = call i32 @bytestream2_get_be24(i32* %11)
  store i32 %165, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %166

166:                                              ; preds = %176, %164
  %167 = load i32, i32* %21, align 4
  %168 = load i32, i32* %18, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = load i32*, i32** %17, align 8
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @AV_WB24(i32* %171, i32 %172)
  %174 = load i32*, i32** %17, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 3
  store i32* %175, i32** %17, align 8
  br label %176

176:                                              ; preds = %170
  %177 = load i32, i32* %21, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %21, align 4
  br label %166

179:                                              ; preds = %166
  br label %194

180:                                              ; preds = %158
  %181 = call i32 @bytestream2_get_byte(i32* %11)
  store i32 %181, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %182

182:                                              ; preds = %190, %180
  %183 = load i32, i32* %21, align 4
  %184 = load i32, i32* %18, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load i32, i32* %16, align 4
  %188 = load i32*, i32** %17, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %17, align 8
  store i32 %187, i32* %188, align 4
  br label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %21, align 4
  br label %182

193:                                              ; preds = %182
  br label %194

194:                                              ; preds = %193, %179
  %195 = load i32, i32* %21, align 4
  %196 = load i32, i32* %19, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %19, align 4
  br label %103

198:                                              ; preds = %103
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %202, %198
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %208 = load i32, i32* @AV_LOG_ERROR, align 4
  %209 = load i32, i32* %19, align 4
  %210 = load i32, i32* %20, align 4
  %211 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %207, i32 %208, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %209, i32 %210)
  %212 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %212, i32* %5, align 4
  br label %218

213:                                              ; preds = %202
  %214 = load i32*, i32** %8, align 8
  store i32 1, i32* %214, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %5, align 4
  br label %218

218:                                              ; preds = %213, %206, %152, %133, %90, %82, %73, %60, %34
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_get_be16u(i32*) #1

declare dso_local i32 @bytestream2_skipu(i32*, i32) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @bytestream2_get_be24(i32*) #1

declare dso_local i32 @AV_WB24(i32*, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
