; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_parse_fmtp_attribute.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_parse_fmtp_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"RTSP: Secondary payload type attribute - not supported\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"RTSP: Failed to add <%s>=<%s> query to URI\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"RTSP: Failed to add <%s> query to URI\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i8*)* @rtsp_parse_fmtp_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_parse_fmtp_attribute(i32* %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %8, align 8
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %9, align 8
  %19 = call i8* @rtsp_parse_extract_ws(i8** %9)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strcmp(i8* %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @LOG_DEBUG(i32* %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %29, i32* %4, align 4
  br label %64

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %61, %30
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = call i64 @rtsp_parse_extract_parameter(i8** %9, i8** %11, i8** %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @vc_uri_add_query(i32 %41, i8* %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32*, i32** %5, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 (i32*, i8*, i8*, ...) @LOG_ERROR(i32* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %51, i8* %52)
  br label %58

54:                                               ; preds = %46
  %55 = load i32*, i32** %5, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 (i32*, i8*, i8*, ...) @LOG_ERROR(i32* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %59, i32* %4, align 4
  br label %64

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60, %35
  br label %31

62:                                               ; preds = %31
  %63 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %58, %26
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i8* @rtsp_parse_extract_ws(i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i64 @rtsp_parse_extract_parameter(i8**, i8**, i8**) #1

declare dso_local i32 @vc_uri_add_query(i32, i8*, i8*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
