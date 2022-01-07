; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddAdditionProtoLists.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddAdditionProtoLists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SDP_MAX_ATTR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SDP_AddAdditionProtoLists cannot get a buffer!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_IN_NEXT_BYTE = common dso_local global i32 0, align 4
@ATTR_ID_ADDITION_PROTO_DESC_LISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_AddAdditionProtoLists(i32 %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %14 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = mul i64 %16, 2
  %18 = trunc i64 %17 to i32
  %19 = call i64 @osi_malloc(i32 %18)
  %20 = inttoptr i64 %19 to i64*
  store i64* %20, i64** %9, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %4, align 4
  br label %81

25:                                               ; preds = %3
  %26 = load i64*, i64** %9, align 8
  store i64* %26, i64** %10, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %60, %25
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load i64*, i64** %10, align 8
  %33 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %34 = shl i32 %33, 3
  %35 = load i32, i32* @SIZE_IN_NEXT_BYTE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @UINT8_TO_BE_STREAM(i64* %32, i32 %36)
  %38 = load i64*, i64** %10, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %10, align 8
  store i64* %38, i64** %11, align 8
  %40 = load i64*, i64** %10, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sdp_compose_proto_list(i64* %40, i32 %43, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i64*, i64** %10, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64* %51, i64** %10, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = ptrtoint i64* %52 to i64
  %55 = ptrtoint i64* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 8
  %58 = sub nsw i64 %57, 1
  %59 = load i64*, i64** %11, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %31
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %8, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 1
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %7, align 8
  br label %27

65:                                               ; preds = %27
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @ATTR_ID_ADDITION_PROTO_DESC_LISTS, align 4
  %68 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %69 = load i64*, i64** %10, align 8
  %70 = load i64*, i64** %9, align 8
  %71 = ptrtoint i64* %69 to i64
  %72 = ptrtoint i64* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = load i64*, i64** %9, align 8
  %77 = call i32 @SDP_AddAttribute(i32 %66, i32 %67, i32 %68, i32 %75, i64* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i64*, i64** %9, align 8
  %79 = call i32 @osi_free(i64* %78)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %65, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*) #1

declare dso_local i32 @UINT8_TO_BE_STREAM(i64*, i32) #1

declare dso_local i32 @sdp_compose_proto_list(i64*, i32, i32) #1

declare dso_local i32 @SDP_AddAttribute(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @osi_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
