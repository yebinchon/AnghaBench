; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_ddts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_ddts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i8*, i8* }

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid sample rate %d\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unsupported DTS audio channel layout\00", align 1
@AV_CH_FRONT_CENTER = common dso_local global i32 0, align 4
@AV_CH_FRONT_LEFT = common dso_local global i32 0, align 4
@AV_CH_FRONT_RIGHT = common dso_local global i32 0, align 4
@AV_CH_SIDE_LEFT = common dso_local global i32 0, align 4
@AV_CH_SIDE_RIGHT = common dso_local global i32 0, align 4
@AV_CH_LOW_FREQUENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @mov_read_ddts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_ddts(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 20, i32* %8, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %15 = add nsw i64 20, %14
  %16 = call i32* @av_malloc(i64 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %205

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @avio_read(i32* %23, i32* %24, i32 20)
  %26 = icmp slt i32 %25, 20
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @av_free(i32* %28)
  %30 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %30, i32* %4, align 4
  br label %205

31:                                               ; preds = %22
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @init_get_bits(i32* %13, i32* %32, i32 160)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @av_free(i32* %41)
  store i32 0, i32* %4, align 4
  br label %205

43:                                               ; preds = %31
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %48, i64 %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %9, align 8
  %58 = call i8* @get_bits_long(i32* %13, i32 32)
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i64 %59, i64* %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %43
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %73, i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @av_free(i32* %81)
  %83 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %83, i32* %4, align 4
  br label %205

84:                                               ; preds = %43
  %85 = call i32 @skip_bits_long(i32* %13, i32 32)
  %86 = call i8* @get_bits_long(i32* %13, i32 32)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 5
  store i8* %86, i8** %90, align 8
  %91 = call i8* @get_bits(i32* %13, i32 8)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  store i8* %91, i8** %95, align 8
  %96 = call i8* @get_bits(i32* %13, i32 2)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = call i32 @skip_bits(i32* %13, i32 30)
  %99 = call i8* @get_bits(i32* %13, i32 16)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %84
  br label %121

104:                                              ; preds = %84
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %119

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %117

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 3
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 4096, i32 0
  br label %117

117:                                              ; preds = %112, %111
  %118 = phi i32 [ 2048, %111 ], [ %116, %112 ]
  br label %119

119:                                              ; preds = %117, %107
  %120 = phi i32 [ 1024, %107 ], [ %118, %117 ]
  br label %121

121:                                              ; preds = %119, %103
  %122 = phi i32 [ 512, %103 ], [ %120, %119 ]
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 8
  %127 = load i32, i32* %12, align 4
  %128 = icmp sgt i32 %127, 255
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load i32, i32* @AV_LOG_WARNING, align 4
  %134 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %132, i32 %133, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %135

135:                                              ; preds = %129, %121
  %136 = load i32, i32* %12, align 4
  %137 = and i32 %136, 1
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  br label %142

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %141, %139
  %143 = phi i32 [ %140, %139 ], [ 0, %141 ]
  %144 = load i32, i32* %12, align 4
  %145 = and i32 %144, 2
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @AV_CH_FRONT_LEFT, align 4
  br label %150

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %147
  %151 = phi i32 [ %148, %147 ], [ 0, %149 ]
  %152 = or i32 %143, %151
  %153 = load i32, i32* %12, align 4
  %154 = and i32 %153, 2
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @AV_CH_FRONT_RIGHT, align 4
  br label %159

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %156
  %160 = phi i32 [ %157, %156 ], [ 0, %158 ]
  %161 = or i32 %152, %160
  %162 = load i32, i32* %12, align 4
  %163 = and i32 %162, 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* @AV_CH_SIDE_LEFT, align 4
  br label %168

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi i32 [ %166, %165 ], [ 0, %167 ]
  %170 = or i32 %161, %169
  %171 = load i32, i32* %12, align 4
  %172 = and i32 %171, 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* @AV_CH_SIDE_RIGHT, align 4
  br label %177

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %176, %174
  %178 = phi i32 [ %175, %174 ], [ 0, %176 ]
  %179 = or i32 %170, %178
  %180 = load i32, i32* %12, align 4
  %181 = and i32 %180, 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* @AV_CH_LOW_FREQUENCY, align 4
  br label %186

185:                                              ; preds = %177
  br label %186

186:                                              ; preds = %185, %183
  %187 = phi i32 [ %184, %183 ], [ 0, %185 ]
  %188 = or i32 %179, %187
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  store i32 %188, i32* %192, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @av_get_channel_layout_nb_channels(i32 %197)
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 3
  store i32 %198, i32* %202, align 8
  %203 = load i32*, i32** %10, align 8
  %204 = call i32 @av_free(i32* %203)
  store i32 0, i32* %4, align 4
  br label %205

205:                                              ; preds = %186, %70, %40, %27, %19
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i32* @av_malloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i8* @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @av_get_channel_layout_nb_channels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
