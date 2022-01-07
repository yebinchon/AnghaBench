; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dss.c_dss_sp_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dss.c_dss_sp_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_15__**, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i32 }

@DSS_FRAME_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @dss_sp_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_sp_read_packet(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %19, i64 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @avio_tell(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = call i32 @dss_skip_audio_header(%struct.TYPE_17__* %31, %struct.TYPE_16__* %32)
  br label %34

34:                                               ; preds = %30, %2
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @DSS_FRAME_SIZE, align 4
  %41 = sub nsw i32 %40, 2
  store i32 %41, i32* %8, align 4
  store i32 3, i32* %11, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @DSS_FRAME_SIZE, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @DSS_FRAME_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = load i32, i32* @DSS_FRAME_SIZE, align 4
  %56 = call i32 @av_new_packet(%struct.TYPE_16__* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %180

61:                                               ; preds = %44
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i32 264, i32* %63, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 8, %72
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = mul nsw i64 %73, %78
  %80 = mul nsw i64 %79, 512
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 506, %83
  %85 = sext i32 %84 to i64
  %86 = sdiv i64 %80, %85
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %61
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %13, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i32 @avio_read(i32 %101, i64 %110, i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %116, %117
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %93
  br label %169

121:                                              ; preds = %93
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = call i32 @dss_skip_audio_header(%struct.TYPE_17__* %122, %struct.TYPE_16__* %123)
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %121, %61
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %10, align 4
  %141 = sub nsw i32 %139, %140
  %142 = call i32 @avio_read(i32 %129, i64 %138, i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %10, align 4
  %146 = sub nsw i32 %144, %145
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %126
  br label %169

149:                                              ; preds = %126
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @dss_sp_byte_swap(%struct.TYPE_14__* %150, i32 %153, i64 %156)
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %149
  %163 = load i32, i32* @EAGAIN, align 4
  %164 = call i32 @AVERROR(i32 %163)
  store i32 %164, i32* %9, align 4
  br label %169

165:                                              ; preds = %149
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %3, align 4
  br label %180

169:                                              ; preds = %162, %148, %120
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %171 = call i32 @av_packet_unref(%struct.TYPE_16__* %170)
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i32, i32* %9, align 4
  br label %178

176:                                              ; preds = %169
  %177 = load i32, i32* @AVERROR_EOF, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %165, %59
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @dss_skip_audio_header(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @avio_read(i32, i64, i32) #1

declare dso_local i32 @dss_sp_byte_swap(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
