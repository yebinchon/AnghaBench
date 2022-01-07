; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_process_read_info_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_process_read_info_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (i32, i64, %struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i64, i32 }

@GATT_INFO_RSP_MIN_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"invalid Info Response PDU received, discard.\00", align 1
@GATT_INVALID_PDU = common dso_local global i32 0, align 4
@GATTC_OPTYPE_DISCOVERY = common dso_local global i64 0, align 8
@GATT_DISC_CHAR_DSCPT = common dso_local global i64 0, align 8
@GATT_INFO_TYPE_PAIR_16 = common dso_local global i64 0, align 8
@LEN_UUID_16 = common dso_local global i64 0, align 8
@GATT_INFO_TYPE_PAIR_128 = common dso_local global i64 0, align 8
@LEN_UUID_128 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_process_read_info_rsp(i32* %0, %struct.TYPE_12__* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load i64*, i64** %10, align 8
  store i64* %15, i64** %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = ptrtoint i32* %16 to i64
  %18 = call i32 @UNUSED(i64 %17)
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @UNUSED(i64 %19)
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @GATT_INFO_RSP_MIN_LEN, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = load i32, i32* @GATT_INVALID_PDU, align 4
  %28 = call i32 @gatt_end_operation(%struct.TYPE_12__* %26, i32 %27, i32* null)
  br label %127

29:                                               ; preds = %5
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GATTC_OPTYPE_DISCOVERY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GATT_DISC_CHAR_DSCPT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29
  br label %127

42:                                               ; preds = %35
  %43 = load i64, i64* %14, align 8
  %44 = load i64*, i64** %12, align 8
  %45 = call i32 @STREAM_TO_UINT8(i64 %43, i64* %44)
  %46 = load i64, i64* %9, align 8
  %47 = sub nsw i64 %46, 1
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @GATT_INFO_TYPE_PAIR_16, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i64, i64* @LEN_UUID_16, align 8
  store i64 %52, i64* %13, align 8
  br label %60

53:                                               ; preds = %42
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* @GATT_INFO_TYPE_PAIR_128, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @LEN_UUID_128, align 8
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %57, %53
  br label %60

60:                                               ; preds = %59, %51
  br label %61

61:                                               ; preds = %111, %60
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %13, align 8
  %64 = add nsw i64 %63, 2
  %65 = icmp sge i64 %62, %64
  br i1 %65, label %66, label %112

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %12, align 8
  %70 = call i32 @STREAM_TO_UINT16(i64 %68, i64* %69)
  %71 = load i64, i64* %13, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @gatt_parse_uuid_from_cmd(i32* %74, i64 %75, i64** %12)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %112

79:                                               ; preds = %73
  br label %85

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 5
  %84 = call i32 @memcpy(i32* %81, i32* %83, i32 4)
  br label %85

85:                                               ; preds = %80, %79
  %86 = load i64, i64* %13, align 8
  %87 = add nsw i64 %86, 2
  %88 = load i64, i64* %9, align 8
  %89 = sub nsw i64 %88, %87
  store i64 %89, i64* %9, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32 (i32, i64, %struct.TYPE_11__*)*, i32 (i32, i64, %struct.TYPE_11__*)** %94, align 8
  %96 = icmp ne i32 (i32, i64, %struct.TYPE_11__*)* %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %85
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32 (i32, i64, %struct.TYPE_11__*)*, i32 (i32, i64, %struct.TYPE_11__*)** %102, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 %103(i32 %106, i64 %109, %struct.TYPE_11__* %11)
  br label %111

111:                                              ; preds = %97, %85
  br label %61

112:                                              ; preds = %78, %61
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %121

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  br label %121

121:                                              ; preds = %117, %116
  %122 = phi i64 [ 0, %116 ], [ %120, %117 ]
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %126 = call i32 @gatt_act_discovery(%struct.TYPE_12__* %125)
  br label %127

127:                                              ; preds = %121, %41, %24
  ret void
}

declare dso_local i32 @UNUSED(i64) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i32 @gatt_end_operation(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i64*) #1

declare dso_local i32 @gatt_parse_uuid_from_cmd(i32*, i64, i64**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @gatt_act_discovery(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
