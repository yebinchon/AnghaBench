; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_subelements_audio.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_subelements_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { double, double, i8*, i8* }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_SAMPLING_FREQUENCY = common dso_local global i32 0, align 4
@MKV_ELEMENT_ID_OUTPUT_SAMPLING_FREQUENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32, i32)* @mkv_read_subelements_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mkv_read_subelements_audio(%struct.TYPE_18__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca double, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %9, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MKV_ELEMENT_ID_SAMPLING_FREQUENCY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MKV_ELEMENT_ID_OUTPUT_SAMPLING_FREQUENCY, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %29, %3
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @mkv_read_element_data_float(%struct.TYPE_18__* %34, i32 %35, double* %12)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %4, align 8
  br label %90

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MKV_ELEMENT_ID_SAMPLING_FREQUENCY, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load double, double* %12, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store double %47, double* %51, align 8
  br label %52

52:                                               ; preds = %46, %42
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MKV_ELEMENT_ID_OUTPUT_SAMPLING_FREQUENCY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load double, double* %12, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  store double %57, double* %61, align 8
  br label %62

62:                                               ; preds = %56, %52
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %4, align 8
  br label %90

64:                                               ; preds = %29
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @mkv_read_element_data_uint(%struct.TYPE_18__* %65, i32 %66, i8** %11)
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %4, align 8
  br label %90

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  switch i32 %74, label %87 [
    i32 128, label %75
    i32 129, label %81
  ]

75:                                               ; preds = %73
  %76 = load i8*, i8** %11, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  store i8* %76, i8** %80, align 8
  br label %88

81:                                               ; preds = %73
  %82 = load i8*, i8** %11, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  store i8* %82, i8** %86, align 8
  br label %88

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %81, %75
  %89 = load i64, i64* %8, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %88, %71, %62, %40
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i64 @mkv_read_element_data_float(%struct.TYPE_18__*, i32, double*) #1

declare dso_local i64 @mkv_read_element_data_uint(%struct.TYPE_18__*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
