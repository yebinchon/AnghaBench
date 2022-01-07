; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_reader_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_18__** }
%struct.TYPE_19__ = type { i32, i32, i32 (%struct.TYPE_20__*)*, %struct.TYPE_16__*, %struct.TYPE_21__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32, i8*, i32, i64, i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@RTSP_SCHEME = common dso_local global i32 0, align 4
@RTSP_PKT_SCHEME = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@FIRST_DYNAMIC_PORT = common dso_local global i32 0, align 4
@RTSP_NETWORK_URI_START = common dso_local global i32 0, align 4
@RTSP_NETWORK_URI_START_LENGTH = common dso_local global i32 0, align 4
@COMMS_BUFFER_SIZE = common dso_local global i64 0, align 8
@HEADER_LIST_INITIAL_CAPACITY = common dso_local global i32 0, align 4
@rtsp_header_comparator = common dso_local global i64 0, align 8
@VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS = common dso_local global i32 0, align 4
@DATA_UNAVAILABLE_READ_TIMEOUT_MS = common dso_local global i32 0, align 4
@rtsp_reader_read = common dso_local global i32 0, align 4
@rtsp_reader_seek = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_EOS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"error opening RTSP stream (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtsp_reader_open(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %4, align 8
  %7 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @vc_uri_scheme(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @vc_uri_scheme(i32 %20)
  %22 = load i32, i32* @RTSP_SCHEME, align 4
  %23 = call i64 @strcasecmp(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @vc_uri_scheme(i32 %30)
  %32 = load i32, i32* @RTSP_PKT_SCHEME, align 4
  %33 = call i64 @strcasecmp(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25, %1
  %36 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %36, i64* %2, align 8
  br label %208

37:                                               ; preds = %25, %15
  %38 = call i64 @malloc(i32 48)
  %39 = inttoptr i64 %38 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %39, %struct.TYPE_21__** %4, align 8
  %40 = icmp eq %struct.TYPE_21__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %42, i64* %5, align 8
  br label %191

43:                                               ; preds = %37
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = call i32 @memset(%struct.TYPE_21__* %44, i32 0, i32 48)
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 4
  store %struct.TYPE_21__* %46, %struct.TYPE_21__** %50, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %52, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  store %struct.TYPE_18__** %53, %struct.TYPE_18__*** %55, align 8
  %56 = load i32, i32* @FIRST_DYNAMIC_PORT, align 4
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RTSP_NETWORK_URI_START, align 4
  %69 = load i32, i32* @RTSP_NETWORK_URI_START_LENGTH, align 4
  %70 = call i64 @strncasecmp(i32 %67, i32 %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* @COMMS_BUFFER_SIZE, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i64 @calloc(i32 1, i64 %76)
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %43
  %86 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %86, i64* %5, align 8
  br label %191

87:                                               ; preds = %43
  %88 = load i32, i32* @HEADER_LIST_INITIAL_CAPACITY, align 4
  %89 = load i64, i64* @rtsp_header_comparator, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @vc_containers_list_create(i32 %88, i32 4, i32 %90)
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %87
  %99 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %99, i64* %5, align 8
  br label %191

100:                                              ; preds = %87
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %102 = call i64 @rtsp_describe(%struct.TYPE_20__* %101)
  store i64 %102, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %103

103:                                              ; preds = %128, %100
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i64, i64* %6, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %108, %111
  br label %113

113:                                              ; preds = %107, %103
  %114 = phi i1 [ false, %103 ], [ %112, %107 ]
  br i1 %114, label %115, label %131

115:                                              ; preds = %113
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %118, align 8
  %120 = load i64, i64* %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %119, i64 %120
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @rtsp_setup(%struct.TYPE_20__* %116, i32 %126)
  store i64 %127, i64* %5, align 8
  br label %128

128:                                              ; preds = %115
  %129 = load i64, i64* %6, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %6, align 8
  br label %103

131:                                              ; preds = %113
  store i64 0, i64* %6, align 8
  br label %132

132:                                              ; preds = %157, %131
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i64, i64* %6, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ult i64 %137, %140
  br label %142

142:                                              ; preds = %136, %132
  %143 = phi i1 [ false, %132 ], [ %141, %136 ]
  br i1 %143, label %144, label %160

144:                                              ; preds = %142
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %147, align 8
  %149 = load i64, i64* %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %148, i64 %149
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @rtsp_play(%struct.TYPE_20__* %145, i32 %155)
  store i64 %156, i64* %5, align 8
  br label %157

157:                                              ; preds = %144
  %158 = load i64, i64* %6, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %6, align 8
  br label %132

160:                                              ; preds = %142
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %191

165:                                              ; preds = %160
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %167 = load i32, i32* @VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS, align 4
  %168 = load i32, i32* @DATA_UNAVAILABLE_READ_TIMEOUT_MS, align 4
  %169 = call i32 @vc_container_control(%struct.TYPE_20__* %166, i32 %167, i32 %168)
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 2
  store i32 (%struct.TYPE_20__*)* @rtsp_reader_close, i32 (%struct.TYPE_20__*)** %173, align 8
  %174 = load i32, i32* @rtsp_reader_read, align 4
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  store i32 %174, i32* %178, align 4
  %179 = load i32, i32* @rtsp_reader_seek, align 4
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  store i32 %179, i32* %183, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %185 = call i64 @STREAM_STATUS(%struct.TYPE_20__* %184)
  %186 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %165
  br label %191

189:                                              ; preds = %165
  %190 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %190, i64* %2, align 8
  br label %208

191:                                              ; preds = %188, %164, %98, %85, %41
  %192 = load i64, i64* %5, align 8
  %193 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = load i64, i64* %5, align 8
  %197 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195, %191
  %200 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %200, i64* %5, align 8
  br label %201

201:                                              ; preds = %199, %195
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %203 = load i64, i64* %5, align 8
  %204 = call i32 @LOG_DEBUG(%struct.TYPE_20__* %202, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %203)
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %206 = call i32 @rtsp_reader_close(%struct.TYPE_20__* %205)
  %207 = load i64, i64* %5, align 8
  store i64 %207, i64* %2, align 8
  br label %208

208:                                              ; preds = %201, %189, %35
  %209 = load i64, i64* %2, align 8
  ret i64 %209
}

declare dso_local i32 @vc_uri_scheme(i32) #1

declare dso_local i64 @strcasecmp(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @strncasecmp(i32, i32, i32) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @vc_containers_list_create(i32, i32, i32) #1

declare dso_local i64 @rtsp_describe(%struct.TYPE_20__*) #1

declare dso_local i64 @rtsp_setup(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @rtsp_play(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @vc_container_control(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @rtsp_reader_close(%struct.TYPE_20__*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_20__*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_20__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
