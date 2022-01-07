; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_container_reader.c_container_to_mmal_format.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_container_reader.c_container_to_mmal_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32, %struct.TYPE_16__*, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_22__, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i64, %struct.TYPE_24__*, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MMAL_ES_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@MMAL_EINVAL = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_FORMAT_FLAG_FRAMED = common dso_local global i32 0, align 4
@MMAL_ES_FORMAT_FLAG_FRAMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"format es type not handled (%i)\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"couldn't allocate extradata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_25__*)* @container_to_mmal_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @container_to_mmal_format(%struct.TYPE_15__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @container_to_mmal_es_type(i32 %9)
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MMAL_ES_TYPE_UNKNOWN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %19, i64* %3, align 8
  br label %241

20:                                               ; preds = %2
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @container_to_mmal_encoding(i32 %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @container_to_mmal_variant(i32 %29, i32 %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @VC_CONTAINER_ES_FORMAT_FLAG_FRAMED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %20
  %48 = load i32, i32* @MMAL_ES_FORMAT_FLAG_FRAMED, align 4
  br label %50

49:                                               ; preds = %20
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = call i32 @memset(%struct.TYPE_16__* %56, i32 0, i32 48)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %201 [
    i32 128, label %61
    i32 129, label %156
  ]

61:                                               ; preds = %50
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 4
  store i32 %67, i32* %72, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 3
  store i32 %78, i32* %83, align 4
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  store i32 %89, i32* %95, align 4
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  store i32 %101, i32* %107, align 4
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  store i32 %113, i32* %119, align 4
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  store i32 %125, i32* %131, align 4
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  store i32 %137, i32* %143, align 4
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  store i32 %149, i32* %155, align 4
  br label %206

156:                                              ; preds = %50
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 3
  store i32 %162, i32* %167, align 4
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 2
  store i32 %173, i32* %178, align 4
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 1
  store i32 %184, i32* %189, align 4
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  store i32 %195, i32* %200, align 4
  br label %206

201:                                              ; preds = %50
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %201, %156, %61
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %239

211:                                              ; preds = %206
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @mmal_format_extradata_alloc(%struct.TYPE_15__* %212, i64 %215)
  store i64 %216, i64* %6, align 8
  %217 = load i64, i64* %6, align 8
  %218 = load i64, i64* @MMAL_SUCCESS, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %211
  %221 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %222 = load i64, i64* %6, align 8
  store i64 %222, i64* %3, align 8
  br label %241

223:                                              ; preds = %211
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  store i64 %226, i64* %228, align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @memcpy(i32 %231, i32 %234, i64 %237)
  br label %239

239:                                              ; preds = %223, %206
  %240 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %240, i64* %3, align 8
  br label %241

241:                                              ; preds = %239, %220, %18
  %242 = load i64, i64* %3, align 8
  ret i64 %242
}

declare dso_local i32 @container_to_mmal_es_type(i32) #1

declare dso_local i32 @container_to_mmal_encoding(i32) #1

declare dso_local i32 @container_to_mmal_variant(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i64 @mmal_format_extradata_alloc(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
