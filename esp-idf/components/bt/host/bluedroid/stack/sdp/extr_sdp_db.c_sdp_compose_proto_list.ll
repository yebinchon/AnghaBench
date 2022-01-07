; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_sdp_compose_proto_list.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_sdp_compose_proto_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_IN_NEXT_BYTE = common dso_local global i32 0, align 4
@UUID_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_TWO_BYTES = common dso_local global i32 0, align 4
@UUID_PROTOCOL_RFCOMM = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@UINT_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_ONE_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_3__*)* @sdp_compose_proto_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_compose_proto_list(i32* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %11, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %106, %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %111

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 3
  %23 = add nsw i32 3, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %9, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %27 = shl i32 %26, 3
  %28 = load i32, i32* @SIZE_IN_NEXT_BYTE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @UINT8_TO_BE_STREAM(i32* %25, i32 %29)
  %31 = load i32*, i32** %4, align 8
  store i32* %31, i32** %12, align 8
  %32 = load i64, i64* %9, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @UUID_DESC_TYPE, align 4
  %38 = shl i32 %37, 3
  %39 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @UINT8_TO_BE_STREAM(i32* %36, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @UINT16_TO_BE_STREAM(i32* %42, i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @UUID_PROTOCOL_RFCOMM, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %18
  %54 = load i64, i64* @TRUE, align 8
  store i64 %54, i64* %10, align 8
  br label %57

55:                                               ; preds = %18
  %56 = load i64, i64* @FALSE, align 8
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %55, %53
  store i64 0, i64* %8, align 8
  br label %58

58:                                               ; preds = %102, %57
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %59, %63
  br i1 %64, label %65, label %105

65:                                               ; preds = %58
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @UINT_DESC_TYPE, align 4
  %71 = shl i32 %70, 3
  %72 = load i32, i32* @SIZE_ONE_BYTE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @UINT8_TO_BE_STREAM(i32* %69, i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @UINT8_TO_BE_STREAM(i32* %75, i32 %81)
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %101

86:                                               ; preds = %65
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* @UINT_DESC_TYPE, align 4
  %89 = shl i32 %88, 3
  %90 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @UINT8_TO_BE_STREAM(i32* %87, i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @UINT16_TO_BE_STREAM(i32* %93, i32 %99)
  br label %101

101:                                              ; preds = %86, %68
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %8, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %8, align 8
  br label %58

105:                                              ; preds = %58
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %7, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %7, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 1
  store %struct.TYPE_3__* %110, %struct.TYPE_3__** %6, align 8
  br label %14

111:                                              ; preds = %14
  %112 = load i32*, i32** %4, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = ptrtoint i32* %112 to i64
  %115 = ptrtoint i32* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 4
  %118 = trunc i64 %117 to i32
  ret i32 %118
}

declare dso_local i32 @UINT8_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_BE_STREAM(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
