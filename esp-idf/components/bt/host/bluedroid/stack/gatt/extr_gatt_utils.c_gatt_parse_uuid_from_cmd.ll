; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_parse_uuid_from_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_parse_uuid_from_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@base_uuid = common dso_local global i64* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"DO NOT ALLOW 32 BITS UUID IN ATT PDU\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"gatt_parse_uuid_from_cmd invalid uuid size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_parse_uuid_from_cmd(%struct.TYPE_6__* %0, i32 %1, i64** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64** %2, i64*** %6, align 8
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i64**, i64*** %6, align 8
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = call i32 @memset(%struct.TYPE_6__* %14, i32 0, i32 16)
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %106 [
    i32 129, label %17
    i32 130, label %30
    i32 128, label %103
    i32 0, label %105
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i64*, i64** %10, align 8
  %26 = call i32 @STREAM_TO_UINT16(i32 %24, i64* %25)
  %27 = load i64**, i64*** %6, align 8
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 129
  store i64* %29, i64** %27, align 8
  br label %113

30:                                               ; preds = %3
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %7, align 4
  store i64 0, i64* %9, align 8
  br label %32

32:                                               ; preds = %48, %30
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %33, 126
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i64*, i64** %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** @base_uuid, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %7, align 4
  br label %51

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %32

51:                                               ; preds = %45, %32
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %51
  %55 = load i64*, i64** %10, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 129
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load i64*, i64** %10, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 128
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i64*, i64** %10, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 126
  store i64* %66, i64** %10, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 129, i32* %68, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i64*, i64** %10, align 8
  %74 = call i32 @STREAM_TO_UINT16(i32 %72, i64* %73)
  br label %86

75:                                               ; preds = %59, %54
  %76 = load i64*, i64** %10, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  store i64* %77, i64** %10, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 128, i32* %79, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i64*, i64** %10, align 8
  %85 = call i32 @STREAM_TO_UINT32(i32 %83, i64* %84)
  br label %86

86:                                               ; preds = %75, %64
  br label %87

87:                                               ; preds = %86, %51
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 130, i32* %92, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64*, i64** %10, align 8
  %98 = call i32 @memcpy(i32 %96, i64* %97, i32 130)
  br label %99

99:                                               ; preds = %90, %87
  %100 = load i64**, i64*** %6, align 8
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 130
  store i64* %102, i64** %100, align 8
  br label %113

103:                                              ; preds = %3
  %104 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %3, %103
  br label %106

106:                                              ; preds = %3, %105
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %109, %106
  %112 = call i32 @GATT_TRACE_WARNING(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %99, %17
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i64*) #1

declare dso_local i32 @STREAM_TO_UINT32(i32, i64*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i32 @GATT_TRACE_WARNING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
