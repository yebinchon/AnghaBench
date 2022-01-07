; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiotoolboxenc.c_ffat_encode_callback.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiotoolboxenc.c_ffat_encode_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_13__*, i32**, i8*)* @ffat_encode_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffat_encode_callback(i32 %0, i32* %1, %struct.TYPE_13__* %2, i32** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %12, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %13, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  store i32 0, i32* %32, align 4
  store i32 0, i32* %6, align 4
  br label %108

33:                                               ; preds = %26
  %34 = load i32*, i32** %8, align 8
  store i32 0, i32* %34, align 4
  store i32 1, i32* %6, align 4
  br label %108

35:                                               ; preds = %5
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  %38 = call %struct.TYPE_14__* @ff_bufqueue_get(%struct.TYPE_17__* %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %14, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @av_get_bytes_per_sample(i32 %54)
  %56 = mul nsw i32 %51, %55
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %56, %59
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i32 %60, i32* %65, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  store i32 %70, i32* %75, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %35
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %35
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @av_frame_unref(i32 %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %96 = call i32 @av_frame_ref(i32 %94, %struct.TYPE_14__* %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %87
  %100 = load i32*, i32** %8, align 8
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %6, align 4
  br label %108

102:                                              ; preds = %87
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %107 = call i32 @ff_bufqueue_add(%struct.TYPE_15__* %103, i32* %105, %struct.TYPE_14__* %106)
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %102, %99, %33, %31
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local %struct.TYPE_14__* @ff_bufqueue_get(%struct.TYPE_17__*) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @av_frame_unref(i32) #1

declare dso_local i32 @av_frame_ref(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ff_bufqueue_add(%struct.TYPE_15__*, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
