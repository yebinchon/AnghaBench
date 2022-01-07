; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_extract_extradata_bsf.c_extract_extradata_av1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_extract_extradata_bsf.c_extract_extradata_av1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }

@extract_extradata_av1.extradata_obu_types = internal constant [2 x i32] [i32 128, i32 129], align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, i32**, i32*)* @extract_extradata_av1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_extradata_av1(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = call i32 @FF_ARRAY_ELEMS(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @extract_extradata_av1.extradata_obu_types, i64 0, i64 0))
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = call i32 @ff_av1_packet_split(%struct.TYPE_17__* %27, i32* %30, i32 %33, %struct.TYPE_15__* %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %5, align 4
  br label %232

40:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %91, %40
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %41
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i64 %54
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %17, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @val_in_array(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @extract_extradata_av1.extradata_obu_types, i64 0, i64 0), i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %48
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  store i32 1, i32* %15, align 4
  br label %75

75:                                               ; preds = %74, %62
  br label %90

76:                                               ; preds = %48
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %81, %76
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %41

94:                                               ; preds = %41
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %231

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %231

100:                                              ; preds = %97
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %109 = add nsw i64 %107, %108
  %110 = call %struct.TYPE_14__* @av_buffer_alloc(i64 %109)
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %18, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %112 = icmp ne %struct.TYPE_14__* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %105
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = call i32 @AVERROR(i32 %114)
  store i32 %115, i32* %5, align 4
  br label %232

116:                                              ; preds = %105
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %124 = call i32 @memset(i32* %122, i32 0, i64 %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %20, align 8
  br label %128

128:                                              ; preds = %116, %100
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32* @av_malloc(i64 %132)
  store i32* %133, i32** %19, align 8
  %134 = load i32*, i32** %19, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %128
  %137 = call i32 @av_buffer_unref(%struct.TYPE_14__** %18)
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = call i32 @AVERROR(i32 %138)
  store i32 %139, i32* %5, align 4
  br label %232

140:                                              ; preds = %128
  %141 = load i32*, i32** %19, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %146 = call i32 @memset(i32* %144, i32 0, i64 %145)
  %147 = load i32*, i32** %19, align 8
  %148 = load i32**, i32*** %8, align 8
  store i32* %147, i32** %148, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load i32*, i32** %9, align 8
  store i32 %149, i32* %150, align 4
  store i32 0, i32* %14, align 4
  br label %151

151:                                              ; preds = %207, %140
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %210

158:                                              ; preds = %151
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i64 %164
  store %struct.TYPE_16__* %165, %struct.TYPE_16__** %21, align 8
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @val_in_array(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @extract_extradata_av1.extradata_obu_types, i64 0, i64 0), i32 %166, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %158
  %173 = load i32*, i32** %19, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @memcpy(i32* %173, i32 %176, i64 %179)
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i32*, i32** %19, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 %183
  store i32* %185, i32** %19, align 8
  br label %206

186:                                              ; preds = %158
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %186
  %192 = load i32*, i32** %20, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @memcpy(i32* %192, i32 %195, i64 %198)
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i32*, i32** %20, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 %202
  store i32* %204, i32** %20, align 8
  br label %205

205:                                              ; preds = %191, %186
  br label %206

206:                                              ; preds = %205, %172
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %14, align 4
  br label %151

210:                                              ; preds = %151
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %210
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 2
  %218 = call i32 @av_buffer_unref(%struct.TYPE_14__** %217)
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 2
  store %struct.TYPE_14__* %219, %struct.TYPE_14__** %221, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  store i32* %224, i32** %226, align 8
  %227 = load i32, i32* %12, align 4
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %215, %210
  br label %231

231:                                              ; preds = %230, %97, %94
  store i32 0, i32* %5, align 4
  br label %232

232:                                              ; preds = %231, %136, %113, %38
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @ff_av1_packet_split(%struct.TYPE_17__*, i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @val_in_array(i32*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @av_buffer_alloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32* @av_malloc(i64) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_14__**) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
