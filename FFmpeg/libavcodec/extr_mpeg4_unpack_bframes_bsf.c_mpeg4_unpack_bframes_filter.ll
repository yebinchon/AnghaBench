; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4_unpack_bframes_bsf.c_mpeg4_unpack_bframes_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4_unpack_bframes_bsf.c_mpeg4_unpack_bframes_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_16__ = type { i8*, i32, %struct.TYPE_17__* }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Found %d VOP startcode(s) in this packet.\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Missing one N-VOP packet, discarding one B-frame.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Found %d VOP headers in one packet, only unpacking one.\0A\00", align 1
@MAX_NVOP_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Skipping N-VOP.\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Updating DivX userdata (remove trailing 'p').\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_16__*)* @mpeg4_unpack_bframes_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg4_unpack_bframes_filter(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = call i32 @ff_bsf_get_packet_ref(%struct.TYPE_18__* %15, %struct.TYPE_16__* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %3, align 4
  br label %188

22:                                               ; preds = %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @scan_buffer(i8* %25, i32 %28, i32* %7, i32* %8, i32* %9)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = load i32, i32* @AV_LOG_DEBUG, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %30, i32 %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %22
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = icmp ne %struct.TYPE_17__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = load i32, i32* @AV_LOG_WARNING, align 4
  %44 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %42, i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = call i32 @av_buffer_unref(%struct.TYPE_17__** %46)
  br label %48

48:                                               ; preds = %41, %36
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = call %struct.TYPE_17__* @av_buffer_ref(%struct.TYPE_17__* %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = icmp ne %struct.TYPE_17__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %10, align 4
  br label %180

62:                                               ; preds = %48
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  store i8* %68, i8** %72, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 8
  br label %82

82:                                               ; preds = %62, %22
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %83, 2
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = load i32, i32* @AV_LOG_WARNING, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %86, i32 %87, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %150

93:                                               ; preds = %90
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = icmp ne %struct.TYPE_17__* %96, null
  br i1 %97, label %98, label %150

98:                                               ; preds = %93
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  store %struct.TYPE_17__* %101, %struct.TYPE_17__** %11, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  store %struct.TYPE_17__* %114, %struct.TYPE_17__** %116, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  store %struct.TYPE_17__* %131, %struct.TYPE_17__** %133, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* @MAX_NVOP_SIZE, align 8
  %141 = icmp sle i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %98
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %144 = load i32, i32* @AV_LOG_DEBUG, align 4
  %145 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %143, i32 %144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = call i32 @av_buffer_unref(%struct.TYPE_17__** %147)
  br label %149

149:                                              ; preds = %142, %98
  br label %179

150:                                              ; preds = %93, %90
  %151 = load i32, i32* %8, align 4
  %152 = icmp sge i32 %151, 2
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  br label %178

157:                                              ; preds = %150
  %158 = load i32, i32* %7, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %157
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %162 = call i32 @av_packet_make_writable(%struct.TYPE_16__* %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %180

166:                                              ; preds = %160
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %168 = load i32, i32* @AV_LOG_DEBUG, align 4
  %169 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %167, i32 %168, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  store i8 0, i8* %175, align 1
  br label %177

176:                                              ; preds = %157
  br label %177

177:                                              ; preds = %176, %166
  br label %178

178:                                              ; preds = %177, %153
  br label %179

179:                                              ; preds = %178, %149
  br label %180

180:                                              ; preds = %179, %165, %59
  %181 = load i32, i32* %10, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %185 = call i32 @av_packet_unref(%struct.TYPE_16__* %184)
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %186, %20
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @ff_bsf_get_packet_ref(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @scan_buffer(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_17__**) #1

declare dso_local %struct.TYPE_17__* @av_buffer_ref(%struct.TYPE_17__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_packet_make_writable(%struct.TYPE_16__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
