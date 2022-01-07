; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_read_response.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_read_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_15__ = type { i8*, i8* }

@COMMS_BUFFER_SIZE = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"RTSP: Failed to add <%s> header to list\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"RTSP: Invalid name in header - no colon:\0A%s\00", align 1
@CONTENT_PSEUDOHEADER_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"RTSP: Failed to add content pseudoheader to list\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"RTSP: Not enough room to read content\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"RTSP: Response header section too big / content missing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @rtsp_read_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtsp_read_response(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %5, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i64, i64* @COMMS_BUFFER_SIZE, align 8
  %28 = sub nsw i64 %27, 1
  store i64 %28, i64* %7, align 8
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vc_containers_list_reset(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i8* null, i8** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %192, %1
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %193

40:                                               ; preds = %37
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @vc_container_io_read(%struct.TYPE_14__* %41, i8* %42, i64 %43)
  store i64 %44, i64* %8, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %193

51:                                               ; preds = %40
  %52 = load i64, i64* %8, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8* %54, i8** %6, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %191, %51
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp ult i8* %62, %63
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i1 [ false, %58 ], [ %64, %61 ]
  br i1 %66, label %67, label %192

67:                                               ; preds = %65
  %68 = load i8*, i8** %9, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  switch i32 %70, label %188 [
    i32 58, label %71
    i32 10, label %84
  ]

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %9, align 8
  br label %83

78:                                               ; preds = %71
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %9, align 8
  store i8 0, i8* %79, align 1
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i8* %81, i8** %82, align 8
  br label %83

83:                                               ; preds = %78, %75
  br label %191

84:                                               ; preds = %67
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %124

88:                                               ; preds = %84
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  store i8 0, i8* %89, align 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @rtsp_trim(i8* %92)
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i8* %93, i8** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %88
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @vc_containers_list_insert(i32 %101, %struct.TYPE_15__* %11, i32 0)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (%struct.TYPE_12__*, i8*, ...) @LOG_ERROR(%struct.TYPE_12__* %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %107)
  %109 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %109, i64* %2, align 8
  br label %210

110:                                              ; preds = %98
  br label %120

111:                                              ; preds = %88
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @rtsp_successful_response_status(%struct.TYPE_12__* %112, i8* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %111
  %118 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %118, i64* %2, align 8
  br label %210

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %110
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i8* %121, i8** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i8* null, i8** %123, align 8
  br label %187

124:                                              ; preds = %84
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %9, align 8
  store i8 0, i8* %125, align 1
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 13
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 (%struct.TYPE_12__*, i8*, ...) @LOG_ERROR(%struct.TYPE_12__* %139, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %141)
  %143 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %143, i64* %2, align 8
  br label %210

144:                                              ; preds = %132, %124
  store i32 1, i32* %10, align 4
  %145 = load i8*, i8** @CONTENT_PSEUDOHEADER_NAME, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i8* %145, i8** %146, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i8* %147, i8** %148, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @vc_containers_list_insert(i32 %151, %struct.TYPE_15__* %11, i32 0)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %144
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %156 = call i32 (%struct.TYPE_12__*, i8*, ...) @LOG_ERROR(%struct.TYPE_12__* %155, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %157 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %157, i64* %2, align 8
  br label %210

158:                                              ; preds = %144
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @rtsp_get_content_length(i32 %161)
  store i64 %162, i64* %12, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = load i64, i64* %12, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = load i8*, i8** %6, align 8
  %167 = icmp ult i8* %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  store i64 0, i64* %7, align 8
  br label %186

169:                                              ; preds = %158
  %170 = load i64, i64* %12, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = sub nsw i64 %170, %175
  store i64 %176, i64* %13, align 8
  %177 = load i64, i64* %13, align 8
  %178 = load i64, i64* %7, align 8
  %179 = icmp sge i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %169
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %182 = call i32 (%struct.TYPE_12__*, i8*, ...) @LOG_ERROR(%struct.TYPE_12__* %181, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %183 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %183, i64* %2, align 8
  br label %210

184:                                              ; preds = %169
  %185 = load i64, i64* %13, align 8
  store i64 %185, i64* %7, align 8
  br label %186

186:                                              ; preds = %184, %168
  br label %187

187:                                              ; preds = %186, %120
  br label %191

188:                                              ; preds = %67
  %189 = load i8*, i8** %9, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %9, align 8
  br label %191

191:                                              ; preds = %188, %187, %83
  br label %58

192:                                              ; preds = %65
  br label %37

193:                                              ; preds = %50, %37
  %194 = load i64, i64* %7, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i8*, i8** %6, align 8
  store i8 0, i8* %200, align 1
  br label %205

201:                                              ; preds = %196
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %203 = call i32 (%struct.TYPE_12__*, i8*, ...) @LOG_ERROR(%struct.TYPE_12__* %202, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %204 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %204, i64* %2, align 8
  br label %210

205:                                              ; preds = %199
  br label %206

206:                                              ; preds = %205, %193
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %2, align 8
  br label %210

210:                                              ; preds = %206, %201, %180, %154, %138, %117, %104
  %211 = load i64, i64* %2, align 8
  ret i64 %211
}

declare dso_local i32 @vc_containers_list_reset(i32) #1

declare dso_local i64 @vc_container_io_read(%struct.TYPE_14__*, i8*, i64) #1

declare dso_local i8* @rtsp_trim(i8*) #1

declare dso_local i32 @vc_containers_list_insert(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @LOG_ERROR(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @rtsp_successful_response_status(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @rtsp_get_content_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
