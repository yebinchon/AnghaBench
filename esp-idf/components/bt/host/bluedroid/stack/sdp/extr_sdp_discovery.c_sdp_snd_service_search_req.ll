; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_sdp_snd_service_search_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_sdp_snd_service_search_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i64 }

@SDP_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@SDP_NO_RESOURCES = common dso_local global i32 0, align 4
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@SDP_PDU_SERVICE_SEARCH_REQ = common dso_local global i32 0, align 4
@sdp_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@SDP_DISC_WAIT_HANDLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"sdp_snd_service_search_req cont_len :%d disc_state:%d\0A\00", align 1
@BTU_TTYPE_SDP = common dso_local global i32 0, align 4
@SDP_INACT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32*)* @sdp_snd_service_search_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_snd_service_search_req(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @SDP_DATA_BUF_SIZE, align 4
  %13 = call i64 @osi_malloc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %10, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = load i32, i32* @SDP_NO_RESOURCES, align 4
  %19 = call i32 @sdp_disconnect(%struct.TYPE_9__* %17, i32 %18)
  br label %114

20:                                               ; preds = %3
  %21 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 1
  %26 = bitcast %struct.TYPE_10__* %25 to i32*
  %27 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %8, align 8
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @SDP_PDU_SERVICE_SEARCH_REQ, align 4
  %32 = call i32 @UINT8_TO_BE_STREAM(i32* %30, i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @UINT16_TO_BE_STREAM(i32* %33, i64 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load i32*, i32** %7, align 8
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32* @sdpu_build_uuid_seq(i32* %45, i32 %50, i32* %55)
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sdp_cb, i32 0, i32 0), align 8
  %59 = call i32 @UINT16_TO_BE_STREAM(i32* %57, i64 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @UINT8_TO_BE_STREAM(i32* %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %20
  %66 = load i32*, i32** %6, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @memcpy(i32* %69, i32* %70, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %7, align 8
  br label %77

77:                                               ; preds = %68, %65, %20
  %78 = load i32*, i32** %7, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = ptrtoint i32* %78 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = sub nsw i64 %83, 2
  store i64 %84, i64* %11, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @UINT16_TO_BE_STREAM(i32* %85, i64 %86)
  %88 = load i32, i32* @SDP_DISC_WAIT_HANDLES, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = ptrtoint i32* %91 to i64
  %94 = ptrtoint i32* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %108 = call i32 @L2CA_DataWrite(i32 %106, %struct.TYPE_10__* %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* @BTU_TTYPE_SDP, align 4
  %112 = load i32, i32* @SDP_INACT_TIMEOUT, align 4
  %113 = call i32 @btu_start_timer(i32* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %77, %16
  ret void
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @sdp_disconnect(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @UINT8_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_BE_STREAM(i32*, i64) #1

declare dso_local i32* @sdpu_build_uuid_seq(i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SDP_TRACE_WARNING(i8*, i32, i32) #1

declare dso_local i32 @L2CA_DataWrite(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
