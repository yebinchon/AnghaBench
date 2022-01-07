; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rv9/extr_rv9_reader.c_rv9_read_file_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rv9/extr_rv9_reader.c_rv9_read_file_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@VC_CONTAINER_ERROR_EOS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@VC_CONTAINER_CODEC_RV40 = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_RV30 = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_RV20 = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_RV10 = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_6__*)* @rv9_read_file_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rv9_read_file_header(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [12 x i8], align 1
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %12 = call i32 @PEEK_BYTES(i32* %10, i8* %11, i32 12)
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 12
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  store i64 %16, i64* %3, align 8
  br label %119

17:                                               ; preds = %2
  %18 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %19 = call i32 @BI32(i8* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 12
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 1024
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %17
  %26 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %26, i64* %3, align 8
  br label %119

27:                                               ; preds = %22
  %28 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 4
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 86
  br i1 %31, label %62, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 5
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 73
  br i1 %36, label %62, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 6
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 68
  br i1 %41, label %62, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 7
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 79
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 82
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 9
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 86
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 11
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 48
  br i1 %61, label %62, label %64

62:                                               ; preds = %57, %52, %47, %42, %37, %32, %27
  %63 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %63, i64* %3, align 8
  br label %119

64:                                               ; preds = %57
  %65 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 10
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  switch i32 %67, label %76 [
    i32 52, label %68
    i32 51, label %70
    i32 50, label %72
    i32 49, label %74
  ]

68:                                               ; preds = %64
  %69 = load i32, i32* @VC_CONTAINER_CODEC_RV40, align 4
  store i32 %69, i32* %7, align 4
  br label %78

70:                                               ; preds = %64
  %71 = load i32, i32* @VC_CONTAINER_CODEC_RV30, align 4
  store i32 %71, i32* %7, align 4
  br label %78

72:                                               ; preds = %64
  %73 = load i32, i32* @VC_CONTAINER_CODEC_RV20, align 4
  store i32 %73, i32* %7, align 4
  br label %78

74:                                               ; preds = %64
  %75 = load i32, i32* @VC_CONTAINER_CODEC_RV10, align 4
  store i32 %75, i32* %7, align 4
  br label %78

76:                                               ; preds = %64
  %77 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %77, i64* %3, align 8
  br label %119

78:                                               ; preds = %74, %72, %70, %68
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = icmp ne %struct.TYPE_6__* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %82, i64* %3, align 8
  br label %119

83:                                               ; preds = %78
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @vc_container_track_allocate_extradata(i32* %84, %struct.TYPE_6__* %85, i32 %86)
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i64, i64* %6, align 8
  store i64 %92, i64* %3, align 8
  br label %119

93:                                               ; preds = %83
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @READ_BYTES(i32* %94, i32 %99, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  store i64 %105, i64* %3, align 8
  br label %119

106:                                              ; preds = %93
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = call i64 @STREAM_STATUS(i32* %117)
  store i64 %118, i64* %3, align 8
  br label %119

119:                                              ; preds = %106, %104, %91, %81, %76, %62, %25, %15
  %120 = load i64, i64* %3, align 8
  ret i64 %120
}

declare dso_local i32 @PEEK_BYTES(i32*, i8*, i32) #1

declare dso_local i32 @BI32(i8*) #1

declare dso_local i64 @vc_container_track_allocate_extradata(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @READ_BYTES(i32*, i32, i32) #1

declare dso_local i64 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
