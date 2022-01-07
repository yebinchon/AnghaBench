; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_librav1e.c_librav1e_receive_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_librav1e.c_librav1e_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i32, i32 }

@AV_CODEC_FLAG_PASS1 = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_PASS2 = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unexpected error when receiving packet after EOF.\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not encode frame: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Unknown return code %d from rav1e_receive_packet: %s\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Could not allocate packet.\0A\00", align 1
@RA_FRAME_TYPE_KEY = common dso_local global i64 0, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_GLOBAL_HEADER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"extradata extraction send failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"extradata extraction receive failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @librav1e_receive_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @librav1e_receive_packet(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  br label %16

16:                                               ; preds = %78, %2
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AV_CODEC_FLAG_PASS1, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = call i32 @get_stats(%struct.TYPE_21__* %24, i32 0)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %201

30:                                               ; preds = %23
  br label %47

31:                                               ; preds = %16
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AV_CODEC_FLAG_PASS2, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %40 = call i32 @set_stats(%struct.TYPE_21__* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %201

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rav1e_receive_packet(i32 %50, %struct.TYPE_19__** %7)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %104 [
    i32 128, label %53
    i32 130, label %54
    i32 132, label %71
    i32 129, label %82
    i32 131, label %97
  ]

53:                                               ; preds = %47
  br label %112

54:                                               ; preds = %47
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @AV_CODEC_FLAG_PASS1, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = call i32 @get_stats(%struct.TYPE_21__* %62, i32 1)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %3, align 4
  br label %201

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %70, i32* %3, align 4
  br label %201

71:                                               ; preds = %47
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %16

79:                                               ; preds = %71
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = call i32 @AVERROR(i32 %80)
  store i32 %81, i32* %3, align 4
  br label %201

82:                                               ; preds = %47
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %91 = load i32, i32* @AV_LOG_ERROR, align 4
  %92 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %90, i32 %91, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %93, i32* %3, align 4
  br label %201

94:                                               ; preds = %82
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = call i32 @AVERROR(i32 %95)
  store i32 %96, i32* %3, align 4
  br label %201

97:                                               ; preds = %47
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @rav1e_status_to_str(i32 %100)
  %102 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %98, i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %103, i32* %3, align 4
  br label %201

104:                                              ; preds = %47
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %106 = load i32, i32* @AV_LOG_ERROR, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @rav1e_status_to_str(i32 %108)
  %110 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %105, i32 %106, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %109)
  %111 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %111, i32* %3, align 4
  br label %201

112:                                              ; preds = %53
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @av_new_packet(%struct.TYPE_20__* %113, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %112
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = load i32, i32* @AV_LOG_ERROR, align 4
  %123 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %121, i32 %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %125 = call i32 @rav1e_packet_unref(%struct.TYPE_19__* %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %3, align 4
  br label %201

127:                                              ; preds = %112
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @memcpy(i32 %130, i32 %133, i32 %136)
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @RA_FRAME_TYPE_KEY, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %127
  %144 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %143, %127
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %152, %155
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 4
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %162 = call i32 @rav1e_packet_unref(%struct.TYPE_19__* %161)
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @AV_CODEC_FLAG_GLOBAL_HEADER, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %200

169:                                              ; preds = %149
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %174 = call i32 @av_bsf_send_packet(i32 %172, %struct.TYPE_20__* %173)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %169
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %179 = load i32, i32* @AV_LOG_ERROR, align 4
  %180 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %178, i32 %179, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %182 = call i32 @av_packet_unref(%struct.TYPE_20__* %181)
  %183 = load i32, i32* %12, align 4
  store i32 %183, i32* %3, align 4
  br label %201

184:                                              ; preds = %169
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %189 = call i32 @av_bsf_receive_packet(i32 %187, %struct.TYPE_20__* %188)
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %184
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %194 = load i32, i32* @AV_LOG_ERROR, align 4
  %195 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %193, i32 %194, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %197 = call i32 @av_packet_unref(%struct.TYPE_20__* %196)
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %3, align 4
  br label %201

199:                                              ; preds = %184
  br label %200

200:                                              ; preds = %199, %149
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %200, %192, %177, %120, %104, %97, %94, %89, %79, %69, %66, %43, %28
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @get_stats(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @set_stats(%struct.TYPE_21__*) #1

declare dso_local i32 @rav1e_receive_packet(i32, %struct.TYPE_19__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i32 @rav1e_status_to_str(i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @rav1e_packet_unref(%struct.TYPE_19__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @av_bsf_send_packet(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_20__*) #1

declare dso_local i32 @av_bsf_receive_packet(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
