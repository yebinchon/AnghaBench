; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_store_rtp_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_store_rtp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@RTP_INFO_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rtptime\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@VC_CONTAINER_CONTROL_SET_TIMESTAMP_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@VC_CONTAINER_CONTROL_SET_NEXT_SEQUENCE_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @rtsp_store_rtp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsp_store_rtp_info(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %11 = load i32, i32* @RTP_INFO_NAME, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @vc_containers_list_find_entry(i32* %13, %struct.TYPE_6__* %5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %69

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  br label %20

20:                                               ; preds = %68, %33, %17
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %69

30:                                               ; preds = %28
  %31 = call i32 @rtsp_parse_extract_parameter(i8** %6, i8** %7, i8** %8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %20

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strcasecmp(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 (i8*, i8*, ...) @sscanf(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VC_CONTAINER_CONTROL_SET_TIMESTAMP_BASE, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @vc_container_control(i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %38
  br label %68

50:                                               ; preds = %34
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strcasecmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  store i16 0, i16* %10, align 2
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (i8*, i8*, ...) @sscanf(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i16* %10)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VC_CONTAINER_CONTROL_SET_NEXT_SEQUENCE_NUMBER, align 4
  %63 = load i16, i16* %10, align 2
  %64 = zext i16 %63 to i32
  %65 = call i32 @vc_container_control(i32 %61, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %58, %54
  br label %67

67:                                               ; preds = %66, %50
  br label %68

68:                                               ; preds = %67, %49
  br label %20

69:                                               ; preds = %16, %28
  ret void
}

declare dso_local i32 @vc_containers_list_find_entry(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @rtsp_parse_extract_parameter(i8**, i8**, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @vc_container_control(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
