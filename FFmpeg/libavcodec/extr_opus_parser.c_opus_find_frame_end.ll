; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_parser.c_opus_find_frame_end.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_parser.c_opus_find_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_16__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }

@OPUS_TS_MASK = common dso_local global i32 0, align 4
@OPUS_TS_HEADER = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error parsing Ogg TS header.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error parsing Ogg extradata.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error parsing Opus packet header.\0A\00", align 1
@END_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32, i32*)* @opus_find_frame_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opus_find_frame_end(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %12, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load i32*, i32** %11, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %228

30:                                               ; preds = %5
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %19, align 4
  %37 = load i32*, i32** %9, align 8
  store i32* %37, i32** %18, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 2
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @AV_RB16(i32* %46)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* @OPUS_TS_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @OPUS_TS_HEADER, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %45
  br label %57

57:                                               ; preds = %56, %42, %30
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %112

62:                                               ; preds = %57
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %112, label %65

65:                                               ; preds = %62
  store i32 0, i32* %16, align 4
  br label %66

66:                                               ; preds = %108, %65
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %68, 2
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %111

71:                                               ; preds = %66
  %72 = load i32, i32* %19, align 4
  %73 = shl i32 %72, 8
  %74 = load i32*, i32** %18, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %73, %78
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* @OPUS_TS_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @OPUS_TS_HEADER, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %71
  %86 = load i32*, i32** %18, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %16, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i32* @parse_opus_ts_header(i32* %86, i32* %17, i32 %89)
  store i32* %90, i32** %18, align 8
  %91 = load i32*, i32** %18, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %85
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = call i32 @av_log(%struct.TYPE_14__* %94, i32 %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %97, i32* %6, align 4
  br label %228

98:                                               ; preds = %85
  %99 = load i32*, i32** %18, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = ptrtoint i32* %99 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %11, align 8
  store i32 %105, i32* %106, align 4
  store i32 1, i32* %15, align 4
  br label %111

107:                                              ; preds = %71
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %16, align 4
  br label %66

111:                                              ; preds = %98, %66
  br label %112

112:                                              ; preds = %111, %62, %57
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %117, %112
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %119
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = call i32 @ff_opus_parse_extradata(%struct.TYPE_14__* %130, %struct.TYPE_16__* %132)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = load i32, i32* @AV_LOG_ERROR, align 4
  %139 = call i32 @av_log(%struct.TYPE_14__* %137, i32 %138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %140, i32* %6, align 4
  br label %228

141:                                              ; preds = %129
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = call i32 @av_freep(i32* %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  br label %148

148:                                              ; preds = %141, %124, %119
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %193

152:                                              ; preds = %148
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %193

160:                                              ; preds = %157, %152
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load i32*, i32** %18, align 8
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %168, 1
  %170 = zext i1 %169 to i32
  %171 = call i32 @ff_opus_parse_packet(%struct.TYPE_15__* %162, i32* %163, i32 %164, i32 %170)
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %160
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %176 = load i32, i32* @AV_LOG_ERROR, align 4
  %177 = call i32 @av_log(%struct.TYPE_14__* %175, i32 %176, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  store i32 0, i32* %179, align 4
  %180 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %180, i32* %6, align 4
  br label %228

181:                                              ; preds = %160
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %185, %189
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %181, %157, %148
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %226

198:                                              ; preds = %193
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %218

201:                                              ; preds = %198
  %202 = load i32, i32* %17, align 4
  %203 = load i32*, i32** %11, align 8
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %202, %204
  %206 = load i32, i32* %10, align 4
  %207 = icmp sle i32 %205, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %201
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  store i32 0, i32* %210, align 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  store i32 -1, i32* %212, align 4
  %213 = load i32, i32* %17, align 4
  %214 = load i32*, i32** %11, align 8
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %213, %215
  store i32 %216, i32* %6, align 4
  br label %228

217:                                              ; preds = %201
  br label %218

218:                                              ; preds = %217, %198
  %219 = load i32, i32* %15, align 4
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %19, align 4
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %225, i32* %6, align 4
  br label %228

226:                                              ; preds = %193
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %6, align 4
  br label %228

228:                                              ; preds = %226, %218, %208, %174, %136, %93, %29
  %229 = load i32, i32* %6, align 4
  ret i32 %229
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32* @parse_opus_ts_header(i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @ff_opus_parse_extradata(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @ff_opus_parse_packet(%struct.TYPE_15__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
