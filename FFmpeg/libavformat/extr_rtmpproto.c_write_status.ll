; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_write_status.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_write_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, i32, i32 }

@RTMP_SYSTEM_CHANNEL = common dso_local global i32 0, align 4
@RTMP_PT_INVOKE = common dso_local global i32 0, align 4
@RTMP_PKTDATA_DEFAULT_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to create response packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"onStatus\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s is now published\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"details\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i8*, i8*)* @write_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_status(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca [128 x i8], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %10, align 8
  %18 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load i32, i32* @RTMP_SYSTEM_CHANNEL, align 4
  %20 = load i32, i32* @RTMP_PT_INVOKE, align 4
  %21 = load i32, i32* @RTMP_PKTDATA_DEFAULT_SIZE, align 4
  %22 = call i32 @ff_rtmp_packet_create(%struct.TYPE_11__* %11, i32 %19, i32 %20, i32 0, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = load i32, i32* @AV_LOG_ERROR, align 4
  %27 = call i32 @av_log(%struct.TYPE_10__* %25, i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %5, align 4
  br label %81

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %13, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = call i32 @ff_amf_write_string(i32** %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @ff_amf_write_number(i32** %13, i32 0)
  %38 = call i32 @ff_amf_write_null(i32** %13)
  %39 = call i32 @ff_amf_write_object_start(i32** %13)
  %40 = call i32 @ff_amf_write_field_name(i32** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @ff_amf_write_string(i32** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 @ff_amf_write_field_name(i32** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @ff_amf_write_string(i32** %13, i8* %43)
  %45 = call i32 @ff_amf_write_field_name(i32** %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @snprintf(i8* %46, i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %50 = call i32 @ff_amf_write_string(i32** %13, i8* %49)
  %51 = call i32 @ff_amf_write_field_name(i32** %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @ff_amf_write_string(i32** %13, i8* %52)
  %54 = call i32 @ff_amf_write_object_end(i32** %13)
  %55 = load i32*, i32** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = ptrtoint i32* %55 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = call i32 @ff_rtmp_packet_write(i32 %66, %struct.TYPE_11__* %11, i32 %69, i32* %73, i32* %77)
  store i32 %78, i32* %14, align 4
  %79 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_11__* %11)
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %29, %24
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_rtmp_packet_create(%struct.TYPE_11__*, i32, i32, i32, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*) #2

declare dso_local i32 @ff_amf_write_string(i32**, i8*) #2

declare dso_local i32 @ff_amf_write_number(i32**, i32) #2

declare dso_local i32 @ff_amf_write_null(i32**) #2

declare dso_local i32 @ff_amf_write_object_start(i32**) #2

declare dso_local i32 @ff_amf_write_field_name(i32**, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @ff_amf_write_object_end(i32**) #2

declare dso_local i32 @ff_rtmp_packet_write(i32, %struct.TYPE_11__*, i32, i32*, i32*) #2

declare dso_local i32 @ff_rtmp_packet_destroy(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
