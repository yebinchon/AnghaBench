; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddProtocolList.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddProtocolList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDP_MAX_ATTR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"SDP_AddProtocolList cannot get a buffer!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ATTR_ID_PROTOCOL_DESC_LIST = common dso_local global i32 0, align 4
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_AddProtocolList(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = mul i64 %13, 2
  %15 = trunc i64 %14 to i32
  %16 = call i64 @osi_malloc(i32 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @sdp_compose_proto_list(i32* %23, i32 %24, i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ATTR_ID_PROTOCOL_DESC_LIST, align 4
  %29 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @SDP_AddAttribute(i32 %27, i32 %28, i32 %29, i32 %30, i32* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @osi_free(i32* %33)
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %22, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*) #1

declare dso_local i32 @sdp_compose_proto_list(i32*, i32, i32*) #1

declare dso_local i32 @SDP_AddAttribute(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @osi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
