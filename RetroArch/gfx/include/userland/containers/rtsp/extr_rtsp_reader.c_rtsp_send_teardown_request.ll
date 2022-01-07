; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_send_teardown_request.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_send_teardown_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i8*, i32 }

@COMMS_BUFFER_SIZE = common dso_local global i32 0, align 4
@RTSP_URI_LENGTH_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"RTSP: Control URI is too long (%d>%d)\00", align 1
@VC_CONTAINER_ERROR_URI_OPEN_FAILED = common dso_local global i32 0, align 4
@RTSP_REQUEST_LINE_FORMAT = common dso_local global i8* null, align 8
@TEARDOWN_METHOD = common dso_local global i32 0, align 4
@SESSION_HEADER_FORMAT = common dso_local global i8* null, align 8
@TRAILING_HEADERS_FORMAT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @rtsp_send_teardown_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_send_teardown_request(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @COMMS_BUFFER_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %8, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = load i64, i64* @RTSP_URI_LENGTH_MAX, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = load i64, i64* @RTSP_URI_LENGTH_MAX, align 8
  %34 = call i32 @LOG_ERROR(%struct.TYPE_11__* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33)
  %35 = load i32, i32* @VC_CONTAINER_ERROR_URI_OPEN_FAILED, align 4
  store i32 %35, i32* %3, align 4
  br label %99

36:                                               ; preds = %2
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = load i8*, i8** @RTSP_REQUEST_LINE_FORMAT, align 8
  %45 = load i32, i32* @TEARDOWN_METHOD, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %37, i32 %43, i8* %44, i32 %45, i8* %46)
  %48 = load i8*, i8** %7, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %36
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = load i8*, i8** @SESSION_HEADER_FORMAT, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %55, i32 %61, i8* %62, i32 %65)
  %67 = load i8*, i8** %7, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %7, align 8
  br label %70

70:                                               ; preds = %54, %36
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ult i8* %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = load i8*, i8** @TRAILING_HEADERS_FORMAT, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %75, i32 %81, i8* %82, i32 %85)
  %88 = load i8*, i8** %7, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %7, align 8
  br label %91

91:                                               ; preds = %74, %70
  %92 = load i8*, i8** %7, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = icmp ult i8* %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @vc_container_assert(i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = call i32 @rtsp_send(%struct.TYPE_11__* %97)
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %91, %29
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @LOG_ERROR(%struct.TYPE_11__*, i8*, i64, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @vc_container_assert(i32) #1

declare dso_local i32 @rtsp_send(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
