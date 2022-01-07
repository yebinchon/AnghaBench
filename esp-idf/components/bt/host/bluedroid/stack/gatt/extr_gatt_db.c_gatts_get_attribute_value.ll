; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatts_get_attribute_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatts_get_attribute_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32* }

@.str = private unnamed_addr constant [18 x i8] c"attr_handle = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"gatts_get_attribute_value Fail:p_db is NULL.\0A\00", align 1
@GATT_INVALID_PDU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"gatts_get_attribute_value Fail:p_db->p_attr_list is NULL.\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"gatts_get_attribute_value Fail:length is NULL.\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"gatts_get_attribute_value Fail:value is NULL.\0A\00", align 1
@GATT_ATTR_UUID_TYPE_16 = common dso_local global i64 0, align 8
@GATT_SUCCESS = common dso_local global i32 0, align 4
@GATT_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatts_get_attribute_value(%struct.TYPE_8__* %0, i64 %1, i64* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32** %3, i32*** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i64*, i64** %8, align 8
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @GATT_INVALID_PDU, align 4
  store i32 %18, i32* %5, align 4
  br label %138

19:                                               ; preds = %4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i64*, i64** %8, align 8
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @GATT_INVALID_PDU, align 4
  store i32 %27, i32* %5, align 4
  br label %138

28:                                               ; preds = %19
  %29 = load i64*, i64** %8, align 8
  %30 = icmp eq i64* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @GATT_INVALID_PDU, align 4
  store i32 %33, i32* %5, align 4
  br label %138

34:                                               ; preds = %28
  %35 = load i32**, i32*** %9, align 8
  %36 = icmp eq i32** %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i64*, i64** %8, align 8
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @GATT_INVALID_PDU, align 4
  store i32 %40, i32* %5, align 4
  br label %138

41:                                               ; preds = %34
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %10, align 8
  br label %46

46:                                               ; preds = %132, %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %49, label %136

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %132

55:                                               ; preds = %49
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @GATT_ATTR_UUID_TYPE_16, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %55
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %66 [
    i32 129, label %65
    i32 128, label %65
  ]

65:                                               ; preds = %61, %61
  br label %98

66:                                               ; preds = %61
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = icmp ne %struct.TYPE_7__* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %71
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %8, align 8
  store i64 %85, i64* %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32**, i32*** %9, align 8
  store i32* %92, i32** %93, align 8
  %94 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %94, i32* %5, align 4
  br label %138

95:                                               ; preds = %71, %66
  %96 = load i64*, i64** %8, align 8
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %97, i32* %5, align 4
  br label %138

98:                                               ; preds = %65
  br label %131

99:                                               ; preds = %55
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = icmp ne %struct.TYPE_7__* %102, null
  br i1 %103, label %104, label %128

104:                                              ; preds = %99
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %104
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %8, align 8
  store i64 %118, i64* %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32**, i32*** %9, align 8
  store i32* %125, i32** %126, align 8
  %127 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %127, i32* %5, align 4
  br label %138

128:                                              ; preds = %104, %99
  %129 = load i64*, i64** %8, align 8
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %130, i32* %5, align 4
  br label %138

131:                                              ; preds = %98
  br label %136

132:                                              ; preds = %49
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %10, align 8
  br label %46

136:                                              ; preds = %131, %46
  %137 = load i32, i32* @GATT_NOT_FOUND, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %128, %112, %95, %79, %37, %31, %24, %15
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i64) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
