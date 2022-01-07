; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_rtp_reader_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_rtp_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__** }
%struct.TYPE_16__ = type { i32, i32, i32, i32 (%struct.TYPE_19__*)*, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i64, i32, i32, i64, i32* }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@RTP_SCHEME = common dso_local global i32 0, align 4
@RTP_PKT_SCHEME = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@PAYLOAD_TYPE_NAME = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@MAXIMUM_PACKET_SIZE = common dso_local global i64 0, align 8
@generic_payload_handler = common dso_local global i64 0, align 8
@SSRC_NAME = common dso_local global i32 0, align 4
@TRACK_SSRC_SET = common dso_local global i32 0, align 4
@MIN_SEQUENTIAL = common dso_local global i64 0, align 8
@SEQ_NAME = common dso_local global i32 0, align 4
@rtp_reader_read = common dso_local global i32 0, align 4
@rtp_reader_seek = common dso_local global i32 0, align 4
@rtp_reader_control = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_EOS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"error opening RTP (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtp_reader_open(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  %11 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %11, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @vc_uri_scheme(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @vc_uri_scheme(i32 %24)
  %26 = load i32, i32* @RTP_SCHEME, align 4
  %27 = call i64 @strcasecmp(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %19
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @vc_uri_scheme(i32 %34)
  %36 = load i32, i32* @RTP_PKT_SCHEME, align 4
  %37 = call i64 @strcasecmp(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29, %1
  %40 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %40, i64* %2, align 8
  br label %205

41:                                               ; preds = %29, %19
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32* @fill_parameter_list(i32 %46)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %51, i64* %7, align 8
  br label %182

52:                                               ; preds = %41
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @PAYLOAD_TYPE_NAME, align 4
  %55 = call i64 @rtp_get_parameter_u32(i32* %53, i32 %54, i32* %9)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 127
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %52
  %61 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %61, i64* %7, align 8
  br label %182

62:                                               ; preds = %57
  %63 = call i64 @malloc(i32 8)
  %64 = inttoptr i64 %63 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %64, %struct.TYPE_20__** %4, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = icmp ne %struct.TYPE_20__* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %68, i64* %7, align 8
  br label %182

69:                                               ; preds = %62
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = call i32 @memset(%struct.TYPE_20__* %70, i32 0, i32 8)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 4
  store %struct.TYPE_20__* %72, %struct.TYPE_20__** %76, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  store %struct.TYPE_17__** %78, %struct.TYPE_17__*** %80, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %82 = load i64, i64* @MAXIMUM_PACKET_SIZE, align 8
  %83 = add i64 48, %82
  %84 = call %struct.TYPE_17__* @vc_container_allocate_track(%struct.TYPE_19__* %81, i64 %83)
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %5, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %86 = icmp ne %struct.TYPE_17__* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %69
  %88 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %88, i64* %7, align 8
  br label %182

89:                                               ; preds = %69
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  store %struct.TYPE_17__* %90, %struct.TYPE_17__** %92, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %6, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i64 1
  %102 = bitcast %struct.TYPE_18__* %101 to i32*
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 6
  store i32* %102, i32** %104, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @decode_payload_type(%struct.TYPE_19__* %105, %struct.TYPE_17__* %106, i32* %107, i32 %108)
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %89
  br label %182

114:                                              ; preds = %89
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @vc_container_assert(i32 %119)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %114
  %126 = load i64, i64* @generic_payload_handler, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 5
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %125, %114
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* @SSRC_NAME, align 4
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 4
  %134 = call i64 @rtp_get_parameter_x32(i32* %130, i32 %131, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @TRACK_SSRC_SET, align 4
  %141 = call i32 @SET_BIT(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %136, %129
  %143 = load i64, i64* @MIN_SEQUENTIAL, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* @SEQ_NAME, align 4
  %148 = call i64 @rtp_get_parameter_u32(i32* %146, i32 %147, i32* %10)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %142
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %150, %142
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 @vc_containers_list_destroy(i32* %160)
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 3
  store i32 (%struct.TYPE_19__*)* @rtp_reader_close, i32 (%struct.TYPE_19__*)** %165, align 8
  %166 = load i32, i32* @rtp_reader_read, align 4
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  store i32 %166, i32* %170, align 8
  %171 = load i32, i32* @rtp_reader_seek, align 4
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  store i32 %171, i32* %175, align 4
  %176 = load i32, i32* @rtp_reader_control, align 4
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  store i32 %176, i32* %180, align 8
  %181 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %181, i64* %2, align 8
  br label %205

182:                                              ; preds = %113, %87, %67, %60, %50
  %183 = load i32*, i32** %8, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32*, i32** %8, align 8
  %187 = call i32 @vc_containers_list_destroy(i32* %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i64, i64* %7, align 8
  %190 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = load i64, i64* %7, align 8
  %194 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192, %188
  %197 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %197, i64* %7, align 8
  br label %198

198:                                              ; preds = %196, %192
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %200 = load i64, i64* %7, align 8
  %201 = call i32 @LOG_DEBUG(%struct.TYPE_19__* %199, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %200)
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %203 = call i32 @rtp_reader_close(%struct.TYPE_19__* %202)
  %204 = load i64, i64* %7, align 8
  store i64 %204, i64* %2, align 8
  br label %205

205:                                              ; preds = %198, %157, %39
  %206 = load i64, i64* %2, align 8
  ret i64 %206
}

declare dso_local i32 @vc_uri_scheme(i32) #1

declare dso_local i64 @strcasecmp(i32, i32) #1

declare dso_local i32* @fill_parameter_list(i32) #1

declare dso_local i64 @rtp_get_parameter_u32(i32*, i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @vc_container_allocate_track(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @decode_payload_type(%struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @vc_container_assert(i32) #1

declare dso_local i64 @rtp_get_parameter_x32(i32*, i32, i32*) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i32 @vc_containers_list_destroy(i32*) #1

declare dso_local i32 @rtp_reader_close(%struct.TYPE_19__*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_19__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
