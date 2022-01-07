; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_act_discovery.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_act_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64, i64, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { i64, i64, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@disc_type_to_att_opcode = common dso_local global i32* null, align 8
@disc_type_to_uuid = common dso_local global i64* null, align 8
@GATT_DISC_SRVC_BY_UUID = common dso_local global i64 0, align 8
@LEN_UUID_32 = common dso_local global i32 0, align 4
@LEN_UUID_128 = common dso_local global i32 0, align 4
@GATT_SUCCESS = common dso_local global i64 0, align 8
@GATT_CMD_STARTED = common dso_local global i64 0, align 8
@GATT_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_act_discovery(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %6 = load i32*, i32** @disc_type_to_att_opcode, align 8
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %14, %17
  br i1 %18, label %19, label %146

19:                                               ; preds = %1
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %146

24:                                               ; preds = %19
  %25 = call i32 @memset(%struct.TYPE_23__* %4, i32 0, i32 72)
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i64*, i64** @disc_type_to_uuid, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  store i32 2, i32* %46, align 8
  %47 = load i64*, i64** @disc_type_to_uuid, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  store i64 %52, i64* %56, align 8
  br label %57

57:                                               ; preds = %43, %24
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @GATT_DISC_SRVC_BY_UUID, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %125

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  store i32 2, i32* %66, align 8
  %67 = load i64*, i64** @disc_type_to_uuid, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  store i64 %72, i64* %76, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @LEN_UUID_32, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %63
  %100 = load i32, i32* @LEN_UUID_128, align 4
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @gatt_convert_uuid32_to_uuid128(i32 %105, i32 %110)
  br label %124

112:                                              ; preds = %63
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @memcpy(i32 %115, %struct.TYPE_15__* %118, i32 %122)
  br label %124

124:                                              ; preds = %112, %99
  br label %125

125:                                              ; preds = %124, %57
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %3, align 4
  %133 = call i64 @attp_send_cl_msg(i32 %128, i32 %131, i32 %132, %struct.TYPE_23__* %4)
  store i64 %133, i64* %5, align 8
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* @GATT_SUCCESS, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %125
  %138 = load i64, i64* %5, align 8
  %139 = load i64, i64* @GATT_CMD_STARTED, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %143 = load i64, i64* @GATT_ERROR, align 8
  %144 = call i32 @gatt_end_operation(%struct.TYPE_24__* %142, i64 %143, i32* null)
  br label %145

145:                                              ; preds = %141, %137, %125
  br label %150

146:                                              ; preds = %19, %1
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %148 = load i64, i64* @GATT_SUCCESS, align 8
  %149 = call i32 @gatt_end_operation(%struct.TYPE_24__* %147, i64 %148, i32* null)
  br label %150

150:                                              ; preds = %146, %145
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @gatt_convert_uuid32_to_uuid128(i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @attp_send_cl_msg(i32, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @gatt_end_operation(%struct.TYPE_24__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
