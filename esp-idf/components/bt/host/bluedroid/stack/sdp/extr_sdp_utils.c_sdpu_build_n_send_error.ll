; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_build_n_send_error.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_build_n_send_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"SDP - sdpu_build_n_send_error  code: 0x%x  CID: 0x%x\0A\00", align 1
@SDP_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"SDP - no buf for err msg\0A\00", align 1
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@SDP_PDU_ERROR_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdpu_build_n_send_error(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load i32, i32* @SDP_DATA_BUF_SIZE, align 4
  %20 = call i64 @osi_malloc(i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %13, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %82

25:                                               ; preds = %4
  %26 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 1
  %31 = bitcast %struct.TYPE_6__* %30 to i32*
  %32 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %10, align 8
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @SDP_PDU_ERROR_RESPONSE, align 4
  %37 = call i32 @UINT8_TO_BE_STREAM(i32* %35, i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @UINT16_TO_BE_STREAM(i32* %38, i32 %39)
  %41 = load i32*, i32** %9, align 8
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @UINT16_TO_BE_STREAM(i32* %44, i32 %45)
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %25
  %50 = load i32*, i32** %9, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = trunc i64 %53 to i32
  %55 = call i32 @ARRAY_TO_BE_STREAM(i32* %50, i8* %51, i32 %54)
  br label %56

56:                                               ; preds = %49, %25
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = ptrtoint i32* %57 to i64
  %60 = ptrtoint i32* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = sub nsw i64 %62, 2
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %12, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @UINT16_TO_BE_STREAM(i32* %65, i32 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %81 = call i32 @L2CA_DataWrite(i32 %79, %struct.TYPE_6__* %80)
  br label %82

82:                                               ; preds = %56, %23
  ret void
}

declare dso_local i32 @SDP_TRACE_WARNING(i8*, i32, i32) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*) #1

declare dso_local i32 @UINT8_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @ARRAY_TO_BE_STREAM(i32*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @L2CA_DataWrite(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
