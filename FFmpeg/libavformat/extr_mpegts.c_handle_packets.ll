; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_handle_packets.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_handle_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, %struct.TYPE_16__**, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i64, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64, i32 }
%struct.TYPE_19__ = type { i32 }

@TS_PACKET_SIZE = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Skipping after seek\0A\00", align 1
@NB_PID_MAX = common dso_local global i32 0, align 4
@MPEGTS_PES = common dso_local global i64 0, align 8
@MPEGTS_SKIP = common dso_local global i32 0, align 4
@MPEGTS_SECTION = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i64)* @handle_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_packets(%struct.TYPE_18__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %5, align 8
  %16 = load i32, i32* @TS_PACKET_SIZE, align 4
  %17 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @avio_tell(i32 %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %127

30:                                               ; preds = %2
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = load i32, i32* @AV_LOG_TRACE, align 4
  %35 = call i32 @av_log(%struct.TYPE_19__* %33, i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %123, %30
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @NB_PID_MAX, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %126

40:                                               ; preds = %36
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %43, i64 %45
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = icmp ne %struct.TYPE_16__* %47, null
  br i1 %48, label %49, label %122

49:                                               ; preds = %40
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %52, i64 %54
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MPEGTS_PES, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %49
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %64, i64 %66
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %12, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = call i32 @av_buffer_unref(i32* %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @MPEGTS_SKIP, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %105

81:                                               ; preds = %49
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %84, i64 %86
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MPEGTS_SECTION, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %81
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %96, i64 %98
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i32 -1, i32* %103, align 8
  br label %104

104:                                              ; preds = %93, %81
  br label %105

105:                                              ; preds = %104, %61
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %108, i64 %110
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  store i32 -1, i32* %113, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %116, i64 %118
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  store i32 -1, i32* %121, align 4
  br label %122

122:                                              ; preds = %105, %40
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %36

126:                                              ; preds = %36
  br label %127

127:                                              ; preds = %126, %2
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  store i32 0, i32* %129, align 8
  store i64 0, i64* %9, align 8
  %130 = load i32, i32* @TS_PACKET_SIZE, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %21, i64 %131
  %133 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %134 = call i32 @memset(i32* %132, i32 0, i32 %133)
  br label %135

135:                                              ; preds = %179, %127
  %136 = load i64, i64* %9, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %9, align 8
  %138 = load i64, i64* %4, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* %4, align 8
  %143 = icmp sge i64 %141, %142
  br i1 %143, label %149, label %144

144:                                              ; preds = %140, %135
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %152

149:                                              ; preds = %144, %140
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = call i32 @AVERROR(i32 %150)
  store i32 %151, i32* %10, align 4
  br label %180

152:                                              ; preds = %144
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %180

158:                                              ; preds = %152
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @read_packet(%struct.TYPE_19__* %159, i32* %21, i32 %162, i32** %8)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %180

167:                                              ; preds = %158
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @handle_packet(%struct.TYPE_18__* %168, i32* %169)
  store i32 %170, i32* %10, align 4
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @finished_reading_packet(%struct.TYPE_19__* %171, i32 %174)
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  br label %180

179:                                              ; preds = %167
  br label %135

180:                                              ; preds = %178, %166, %157, %149
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @avio_tell(i32 %183)
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load i32, i32* %10, align 4
  %188 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %188)
  ret i32 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @avio_tell(i32) #2

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*) #2

declare dso_local i32 @av_buffer_unref(i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @read_packet(%struct.TYPE_19__*, i32*, i32, i32**) #2

declare dso_local i32 @handle_packet(%struct.TYPE_18__*, i32*) #2

declare dso_local i32 @finished_reading_packet(%struct.TYPE_19__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
