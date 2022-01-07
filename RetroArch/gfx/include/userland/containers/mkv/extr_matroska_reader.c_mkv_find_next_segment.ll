; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_find_next_segment.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_find_next_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, i8* }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@mkv_cluster_elements_list = common dso_local global i32* null, align 8
@MKV_ELEMENT_ID_INVALID = common dso_local global i32 0, align 4
@MKV_ELEMENT_ID_SEGMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_5__*)* @mkv_find_next_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mkv_find_next_segment(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %11 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %45, %2
  %13 = load i32*, i32** @mkv_cluster_elements_list, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @INT64_C(i32 -1)
  %16 = load i32, i32* @MKV_ELEMENT_ID_INVALID, align 4
  %17 = call i64 @mkv_read_element_header(i32* %14, i32 %15, i64* %9, i8** %7, i32 %16, i32** %10)
  store i64 %17, i64* %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @STREAM_POSITION(i32* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i64, i64* %6, align 8
  store i64 %24, i64* %3, align 8
  br label %88

25:                                               ; preds = %12
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @MKV_ELEMENT_ID_SEGMENT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %47

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @INT64_C(i32 -1)
  %35 = call i64 @mkv_read_element_data(i32* %31, i32* %32, i8* %33, i32 %34)
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @STREAM_STATUS(i32* %41)
  %43 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i1 [ false, %36 ], [ %44, %40 ]
  br i1 %46, label %12, label %47

47:                                               ; preds = %45, %29
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @STREAM_STATUS(i32* %48)
  %50 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @STREAM_STATUS(i32* %53)
  store i64 %54, i64* %3, align 8
  br label %88

55:                                               ; preds = %47
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i8* %60, i8** %68, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i8* %69, i8** %77, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i64 %78, i64* %86, align 8
  %87 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %87, i64* %3, align 8
  br label %88

88:                                               ; preds = %55, %52, %23
  %89 = load i64, i64* %3, align 8
  ret i64 %89
}

declare dso_local i64 @mkv_read_element_header(i32*, i32, i64*, i8**, i32, i32**) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i8* @STREAM_POSITION(i32*) #1

declare dso_local i64 @mkv_read_element_data(i32*, i32*, i8*, i32) #1

declare dso_local i64 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
