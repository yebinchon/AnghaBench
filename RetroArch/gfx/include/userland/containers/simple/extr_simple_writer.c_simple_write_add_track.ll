; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/simple/extr_simple_writer.c_simple_write_add_track.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/simple/extr_simple_writer.c_simple_write_add_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_23__**, %struct.TYPE_20__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i8*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32 }

@MAX_TRACKS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@ES_SUFFIX_SIZE = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@ES_SUFFIX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"opening elementary stream: %s\00", align 1
@VC_CONTAINER_IO_MODE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"error opening elementary stream: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*, %struct.TYPE_25__*)* @simple_write_add_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simple_write_add_track(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %6, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @vc_uri_path(i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MAX_TRACKS, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 8
  store i64 %24, i64* %3, align 8
  br label %159

25:                                               ; preds = %2
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = add i64 4, %28
  %30 = load i64, i64* @ES_SUFFIX_SIZE, align 8
  %31 = add i64 %29, %30
  %32 = add i64 %31, 1
  %33 = call %struct.TYPE_23__* @vc_container_allocate_track(%struct.TYPE_24__* %26, i64 %32)
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %6, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %35, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %36, i64 %39
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %40, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %42 = icmp ne %struct.TYPE_23__* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %25
  %44 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %44, i64* %3, align 8
  br label %159

45:                                               ; preds = %25
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @vc_container_track_allocate_extradata(%struct.TYPE_24__* %51, %struct.TYPE_23__* %52, i32 %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %150

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %45
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @vc_container_format_copy(%struct.TYPE_19__* %65, %struct.TYPE_25__* %66, i32 %69)
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i64 1
  %77 = bitcast %struct.TYPE_21__* %76 to i8*
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  store i8* %77, i8** %83, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* @ES_SUFFIX_SIZE, align 8
  %94 = add nsw i64 %92, %93
  %95 = add nsw i64 %94, 1
  %96 = load i8*, i8** @ES_SUFFIX, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = bitcast i32* %104 to i8*
  %106 = call i32 @snprintf(i8* %90, i64 %95, i8* %96, i8* %97, i64 %100, i8* %105)
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @LOG_DEBUG(%struct.TYPE_24__* %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %114)
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* @VC_CONTAINER_IO_MODE_WRITE, align 4
  %124 = call i32 @vc_container_io_open(i8* %122, i32 %123, i64* %7)
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  store i32 %124, i32* %130, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %62
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @LOG_ERROR(%struct.TYPE_24__* %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %142)
  br label %150

144:                                              ; preds = %62
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %149, i64* %3, align 8
  br label %159

150:                                              ; preds = %134, %60
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %152 = icmp ne %struct.TYPE_23__* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %156 = call i32 @vc_container_free_track(%struct.TYPE_24__* %154, %struct.TYPE_23__* %155)
  br label %157

157:                                              ; preds = %153, %150
  %158 = load i64, i64* %7, align 8
  store i64 %158, i64* %3, align 8
  br label %159

159:                                              ; preds = %157, %144, %43, %23
  %160 = load i64, i64* %3, align 8
  ret i64 %160
}

declare dso_local i8* @vc_uri_path(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_23__* @vc_container_allocate_track(%struct.TYPE_24__*, i64) #1

declare dso_local i64 @vc_container_track_allocate_extradata(%struct.TYPE_24__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @vc_container_format_copy(%struct.TYPE_19__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i64, i8*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @vc_container_io_open(i8*, i32, i64*) #1

declare dso_local i32 @LOG_ERROR(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @vc_container_free_track(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
