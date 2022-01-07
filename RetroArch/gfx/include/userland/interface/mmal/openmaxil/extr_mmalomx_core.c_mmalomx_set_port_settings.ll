; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_set_port_settings.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_set_port_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i8*, %struct.TYPE_24__*, i32, i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, %struct.TYPE_20__, i8*, %struct.TYPE_22__ }
%struct.TYPE_20__ = type { i64, i8* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_19__, %struct.TYPE_26__, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_26__ = type { i64, i64, i64, i32, i8*, i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i32, i32, i8*, i32, i32 }

@OMX_PortDomainVideo = common dso_local global i64 0, align 8
@OMX_VIDEO_CodingUnused = common dso_local global i64 0, align 8
@OMX_PortDomainImage = common dso_local global i64 0, align 8
@OMX_IMAGE_CodingUnused = common dso_local global i64 0, align 8
@OMX_PortDomainAudio = common dso_local global i64 0, align 8
@MMAL_ENCODING_UNKNOWN = common dso_local global i8* null, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, %struct.TYPE_16__*)* @mmalomx_set_port_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmalomx_set_port_settings(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %6, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @mmalil_omx_domain_to_es_type(i64 %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 4
  store i32 %18, i32* %22, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OMX_PortDomainVideo, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %218

32:                                               ; preds = %2
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OMX_VIDEO_CodingUnused, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @mmalil_omx_video_coding_to_encoding(i64 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  store i8* %46, i8** %50, align 8
  br label %62

51:                                               ; preds = %32
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @mmalil_omx_color_format_to_encoding(i32 %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  store i8* %57, i8** %61, align 8
  br label %62

62:                                               ; preds = %51, %40
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 5
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 2
  store i8* %76, i8** %83, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %62
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  store i8* %96, i8** %104, align 8
  br label %105

105:                                              ; preds = %88, %62
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @mmal_encoding_stride_to_width(i8* %110, i32 %115)
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %137

118:                                              ; preds = %105
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @mmal_encoding_stride_to_width(i8* %123, i32 %128)
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 2
  store i8* %129, i8** %136, align 8
  br label %137

137:                                              ; preds = %118, %105
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  store i64 %142, i64* %149, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %171, label %154

154:                                              ; preds = %137
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  store i64 %162, i64* %170, align 8
  br label %171

171:                                              ; preds = %154, %137
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %176, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %171
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 0
  store i64 %188, i64* %195, align 8
  br label %196

196:                                              ; preds = %183, %171
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 1
  store i32 %201, i32* %209, align 4
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 0
  store i32 65536, i32* %217, align 8
  br label %405

218:                                              ; preds = %2
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @OMX_PortDomainImage, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %380

224:                                              ; preds = %218
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @OMX_IMAGE_CodingUnused, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %243

232:                                              ; preds = %224
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = call i8* @mmalil_omx_image_coding_to_encoding(i64 %237)
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 0
  store i8* %238, i8** %242, align 8
  br label %254

243:                                              ; preds = %224
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = call i8* @mmalil_omx_color_format_to_encoding(i32 %248)
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 0
  store i8* %249, i8** %253, align 8
  br label %254

254:                                              ; preds = %243, %232
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 4
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 3
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 2
  store i8* %259, i8** %266, align 8
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %288, label %271

271:                                              ; preds = %254
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 2
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 3
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 1
  store i8* %279, i8** %287, align 8
  br label %288

288:                                              ; preds = %271, %254
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 3
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = call i8* @mmal_encoding_stride_to_width(i8* %293, i32 %298)
  %300 = icmp ne i8* %299, null
  br i1 %300, label %301, label %320

301:                                              ; preds = %288
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 3
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = call i8* @mmal_encoding_stride_to_width(i8* %306, i32 %311)
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 3
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 2
  store i8* %312, i8** %319, align 8
  br label %320

320:                                              ; preds = %301, %288
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 3
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 0
  store i64 %325, i64* %332, align 8
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %354, label %337

337:                                              ; preds = %320
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 3
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 3
  %348 = load %struct.TYPE_25__*, %struct.TYPE_25__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %348, i32 0, i32 1
  %350 = load %struct.TYPE_24__*, %struct.TYPE_24__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 0
  store i64 %345, i64* %353, align 8
  br label %354

354:                                              ; preds = %337, %320
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 3
  %362 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = icmp sgt i64 %359, %364
  br i1 %365, label %366, label %379

366:                                              ; preds = %354
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 3
  %374 = load %struct.TYPE_25__*, %struct.TYPE_25__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %374, i32 0, i32 1
  %376 = load %struct.TYPE_24__*, %struct.TYPE_24__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %377, i32 0, i32 0
  store i64 %371, i64* %378, align 8
  br label %379

379:                                              ; preds = %366, %354
  br label %404

380:                                              ; preds = %218
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @OMX_PortDomainAudio, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %397

386:                                              ; preds = %380
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = call i8* @mmalil_omx_audio_coding_to_encoding(i32 %391)
  %393 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %393, i32 0, i32 3
  %395 = load %struct.TYPE_25__*, %struct.TYPE_25__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %395, i32 0, i32 0
  store i8* %392, i8** %396, align 8
  br label %403

397:                                              ; preds = %380
  %398 = load i8*, i8** @MMAL_ENCODING_UNKNOWN, align 8
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i32 0, i32 3
  %401 = load %struct.TYPE_25__*, %struct.TYPE_25__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %401, i32 0, i32 0
  store i8* %398, i8** %402, align 8
  br label %403

403:                                              ; preds = %397, %386
  br label %404

404:                                              ; preds = %403, %379
  br label %405

405:                                              ; preds = %404, %196
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 2
  store i32 %408, i32* %410, align 8
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %414, i32 0, i32 1
  store i64 %413, i64* %415, align 8
  %416 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = icmp slt i64 %418, %421
  br i1 %422, label %423, label %429

423:                                              ; preds = %405
  %424 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %427, i32 0, i32 1
  store i64 %426, i64* %428, align 8
  br label %429

429:                                              ; preds = %423, %405
  %430 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %431 = call i64 @mmal_port_format_commit(%struct.TYPE_17__* %430)
  store i64 %431, i64* %8, align 8
  %432 = load i64, i64* %8, align 8
  %433 = load i64, i64* @MMAL_SUCCESS, align 8
  %434 = icmp ne i64 %432, %433
  br i1 %434, label %435, label %437

435:                                              ; preds = %429
  %436 = load i64, i64* %8, align 8
  store i64 %436, i64* %3, align 8
  br label %454

437:                                              ; preds = %429
  %438 = load i32, i32* @MMAL_FALSE, align 4
  %439 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %439, i32 0, i32 0
  store i32 %438, i32* %440, align 8
  %441 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* %7, align 8
  %445 = icmp ne i64 %443, %444
  br i1 %445, label %446, label %452

446:                                              ; preds = %437
  %447 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %450, i32 0, i32 1
  store i64 %449, i64* %451, align 8
  br label %452

452:                                              ; preds = %446, %437
  %453 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %453, i64* %3, align 8
  br label %454

454:                                              ; preds = %452, %435
  %455 = load i64, i64* %3, align 8
  ret i64 %455
}

declare dso_local i32 @mmalil_omx_domain_to_es_type(i64) #1

declare dso_local i8* @mmalil_omx_video_coding_to_encoding(i64) #1

declare dso_local i8* @mmalil_omx_color_format_to_encoding(i32) #1

declare dso_local i8* @mmal_encoding_stride_to_width(i8*, i32) #1

declare dso_local i8* @mmalil_omx_image_coding_to_encoding(i64) #1

declare dso_local i8* @mmalil_omx_audio_coding_to_encoding(i32) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
