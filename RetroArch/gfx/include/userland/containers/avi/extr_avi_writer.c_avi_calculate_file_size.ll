; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_calculate_file_size.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_calculate_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@AVI_INDEX_ENTRY_SIZE = common dso_local global i64 0, align 8
@AVI_STD_INDEX_ENTRY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_16__*)* @avi_calculate_file_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @avi_calculate_file_size(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %5, align 8
  %14 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %14, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = call i64 @STREAM_POSITION(%struct.TYPE_15__* %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = call i32 @vc_container_writer_extraio_enable(%struct.TYPE_15__* %17, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @vc_container_assert(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32 %25)
  br label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  br label %41

37:                                               ; preds = %27
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i64 [ %36, %33 ], [ %40, %37 ]
  %43 = call i32 @WRITE_BYTES(%struct.TYPE_15__* %28, i32* null, i64 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = call i32 @AVI_END_CHUNK(%struct.TYPE_15__* %44)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = load i64, i64* @AVI_INDEX_ENTRY_SIZE, align 8
  %48 = load i64, i64* @AVI_STD_INDEX_ENTRY_SIZE, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @WRITE_BYTES(%struct.TYPE_15__* %46, i32* null, i64 %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = call i64 @avi_write_standard_index_data(%struct.TYPE_15__* %51)
  %53 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %64

56:                                               ; preds = %41
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = call i64 @avi_write_legacy_index_data(%struct.TYPE_15__* %57)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %64

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %62, %55
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = call i64 @STREAM_POSITION(%struct.TYPE_15__* %65)
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %7, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = call i32 @vc_container_writer_extraio_disable(%struct.TYPE_15__* %69, i32* %71)
  %73 = load i64, i64* %7, align 8
  ret i64 %73
}

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_15__*) #1

declare dso_local i32 @vc_container_writer_extraio_enable(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @vc_container_assert(i32) #1

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i32) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_15__*, i32*, i64) #1

declare dso_local i32 @AVI_END_CHUNK(%struct.TYPE_15__*) #1

declare dso_local i64 @avi_write_standard_index_data(%struct.TYPE_15__*) #1

declare dso_local i64 @avi_write_legacy_index_data(%struct.TYPE_15__*) #1

declare dso_local i32 @vc_container_writer_extraio_disable(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
