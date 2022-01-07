; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_timestamp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i32 }

@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32*, i32)* @asf_read_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_timestamp(%struct.TYPE_12__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @AV_NOPTS_VALUE, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %43, %46
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %49, %52
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %53, %56
  %58 = sub nsw i32 %57, 1
  %59 = call i32 @av_clip(i32 %48, i32 0, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = add nsw i32 %62, %67
  store i32 %68, i32* %11, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @SEEK_SET, align 4
  %74 = call i32 @avio_seek(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %12, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = call i32 @reset_packet_state(%struct.TYPE_12__* %76)
  br label %78

78:                                               ; preds = %166, %4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @avio_tell(i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %168

85:                                               ; preds = %78
  %86 = call i32 @av_init_packet(%struct.TYPE_11__* %15)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @avio_tell(i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = call i32 @asf_read_packet(%struct.TYPE_12__* %91, %struct.TYPE_11__* %15)
  store i32 %92, i32* %18, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* @AV_NOPTS_VALUE, align 4
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %18, align 4
  store i32 %96, i32* %5, align 4
  br label %173

97:                                               ; preds = %85
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = icmp sge i32 %98, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %105, %97
  store i32 0, i32* %17, align 4
  br label %112

112:                                              ; preds = %159, %111
  %113 = load i32, i32* %17, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %162

118:                                              ; preds = %112
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 5
  %121 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %120, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %121, i64 %123
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %20, align 8
  store i32 0, i32* %19, align 4
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %118
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %157

136:                                              ; preds = %131
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %13, align 4
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %149 = call i32 @av_add_index_entry(i32 %143, i32 %144, i32 %145, i32 %147, i32 0, i32 %148)
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %150, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %136
  store i32 1, i32* %19, align 4
  br label %162

156:                                              ; preds = %136
  br label %157

157:                                              ; preds = %156, %131
  br label %158

158:                                              ; preds = %157, %118
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %17, align 4
  br label %112

162:                                              ; preds = %155, %112
  %163 = load i32, i32* %19, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %168

166:                                              ; preds = %162
  %167 = call i32 @av_packet_unref(%struct.TYPE_11__* %15)
  br label %78

168:                                              ; preds = %165, %78
  %169 = load i32, i32* %11, align 4
  %170 = load i32*, i32** %8, align 8
  store i32 %169, i32* %170, align 4
  %171 = call i32 @av_packet_unref(%struct.TYPE_11__* %15)
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %168, %94
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @reset_packet_state(%struct.TYPE_12__*) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_11__*) #1

declare dso_local i32 @asf_read_packet(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @av_add_index_entry(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
