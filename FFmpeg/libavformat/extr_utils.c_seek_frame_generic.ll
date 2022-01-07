; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_seek_frame_generic.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_seek_frame_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_22__** }
%struct.TYPE_21__ = type { i64 (%struct.TYPE_25__*, i32, i64, i32)* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_20__* }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_CODEC_ID_CDGRAPHICS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [123 x i8] c"seek_frame_generic failed as this stream seems to contain no keyframes after the target timestamp, %d non keyframes found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32, i64, i32)* @seek_frame_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek_frame_generic(%struct.TYPE_25__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %19, i64 %21
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %12, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @av_index_search_timestamp(%struct.TYPE_22__* %24, i64 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %4
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %220

45:                                               ; preds = %35, %30, %4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %167

55:                                               ; preds = %48, %45
  store i32 0, i32* %15, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %55
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %62, align 8
  %64 = call i32 @av_assert0(%struct.TYPE_24__* %63)
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i64 %72
  store %struct.TYPE_24__* %73, %struct.TYPE_24__** %13, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SEEK_SET, align 4
  %81 = call i64 @avio_seek(i32 %76, i32 %79, i32 %80)
  store i64 %81, i64* %11, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %60
  %84 = load i64, i64* %11, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %5, align 4
  br label %220

86:                                               ; preds = %60
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ff_update_cur_dts(%struct.TYPE_25__* %87, %struct.TYPE_22__* %88, i64 %91)
  br label %109

93:                                               ; preds = %55
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SEEK_SET, align 4
  %103 = call i64 @avio_seek(i32 %96, i32 %101, i32 %102)
  store i64 %103, i64* %11, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load i64, i64* %11, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %5, align 4
  br label %220

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %86
  br label %110

110:                                              ; preds = %160, %109
  br label %111

111:                                              ; preds = %114, %110
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %113 = call i32 @av_read_frame(%struct.TYPE_25__* %112, %struct.TYPE_23__* %14)
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @EAGAIN, align 4
  %117 = call i32 @AVERROR(i32 %116)
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %111, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %16, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %162

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %160

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %8, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %160

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = call i32 @av_packet_unref(%struct.TYPE_23__* %14)
  br label %162

141:                                              ; preds = %133
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  %144 = icmp sgt i32 %142, 1000
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AV_CODEC_ID_CDGRAPHICS, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %145
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %155 = load i32, i32* @AV_LOG_ERROR, align 4
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @av_log(%struct.TYPE_25__* %154, i32 %155, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0), i32 %156)
  %158 = call i32 @av_packet_unref(%struct.TYPE_23__* %14)
  br label %162

159:                                              ; preds = %145, %141
  br label %160

160:                                              ; preds = %159, %128, %123
  %161 = call i32 @av_packet_unref(%struct.TYPE_23__* %14)
  br label %110

162:                                              ; preds = %153, %139, %122
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %164 = load i64, i64* %8, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @av_index_search_timestamp(%struct.TYPE_22__* %163, i64 %164, i32 %165)
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %162, %48
  %168 = load i32, i32* %10, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 -1, i32* %5, align 4
  br label %220

171:                                              ; preds = %167
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %173 = call i32 @ff_read_frame_flush(%struct.TYPE_25__* %172)
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = load i64 (%struct.TYPE_25__*, i32, i64, i32)*, i64 (%struct.TYPE_25__*, i32, i64, i32)** %177, align 8
  %179 = icmp ne i64 (%struct.TYPE_25__*, i32, i64, i32)* %178, null
  br i1 %179, label %180, label %194

180:                                              ; preds = %171
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  %185 = load i64 (%struct.TYPE_25__*, i32, i64, i32)*, i64 (%struct.TYPE_25__*, i32, i64, i32)** %184, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %187 = load i32, i32* %7, align 4
  %188 = load i64, i64* %8, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i64 %185(%struct.TYPE_25__* %186, i32 %187, i64 %188, i32 %189)
  %191 = icmp sge i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %180
  store i32 0, i32* %5, align 4
  br label %220

193:                                              ; preds = %180
  br label %194

194:                                              ; preds = %193, %171
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i64 %199
  store %struct.TYPE_24__* %200, %struct.TYPE_24__** %13, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @SEEK_SET, align 4
  %208 = call i64 @avio_seek(i32 %203, i32 %206, i32 %207)
  store i64 %208, i64* %11, align 8
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %194
  %211 = load i64, i64* %11, align 8
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %5, align 4
  br label %220

213:                                              ; preds = %194
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @ff_update_cur_dts(%struct.TYPE_25__* %214, %struct.TYPE_22__* %215, i64 %218)
  store i32 0, i32* %5, align 4
  br label %220

220:                                              ; preds = %213, %210, %192, %170, %105, %83, %44
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local i32 @av_index_search_timestamp(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @av_assert0(%struct.TYPE_24__*) #1

declare dso_local i64 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @ff_update_cur_dts(%struct.TYPE_25__*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @av_read_frame(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_23__*) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, i32) #1

declare dso_local i32 @ff_read_frame_flush(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
