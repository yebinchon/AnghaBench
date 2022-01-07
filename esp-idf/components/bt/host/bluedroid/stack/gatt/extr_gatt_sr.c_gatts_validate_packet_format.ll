; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_validate_packet_format.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_validate_packet_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@GATT_SUCCESS = common dso_local global i32 0, align 4
@GATT_INVALID_HANDLE = common dso_local global i32 0, align 4
@GATT_REQ_READ_BY_GRP_TYPE = common dso_local global i64 0, align 8
@GATT_REQ_FIND_TYPE_VALUE = common dso_local global i64 0, align 8
@GATT_REQ_READ_BY_TYPE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"UUID filter does not exsit\00", align 1
@GATT_INVALID_PDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i64**, %struct.TYPE_4__*, i32*, i32*)* @gatts_validate_packet_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gatts_validate_packet_format(i64 %0, i32* %1, i64** %2, %struct.TYPE_4__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store i64** %2, i64*** %9, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i64**, i64*** %9, align 8
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %18, align 8
  %24 = load i32, i32* %17, align 4
  %25 = icmp sge i32 %24, 4
  br i1 %25, label %26, label %102

26:                                               ; preds = %6
  %27 = load i32, i32* %15, align 4
  %28 = load i64*, i64** %18, align 8
  %29 = call i32 @STREAM_TO_UINT16(i32 %27, i64* %28)
  %30 = load i32, i32* %16, align 4
  %31 = load i64*, i64** %18, align 8
  %32 = call i32 @STREAM_TO_UINT16(i32 %30, i64* %31)
  %33 = load i32, i32* %17, align 4
  %34 = sub nsw i32 %33, 4
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @GATT_HANDLE_IS_VALID(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @GATT_HANDLE_IS_VALID(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42, %38, %26
  %47 = load i32, i32* @GATT_INVALID_HANDLE, align 4
  store i32 %47, i32* %13, align 4
  br label %101

48:                                               ; preds = %42
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @GATT_REQ_READ_BY_GRP_TYPE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @GATT_REQ_FIND_TYPE_VALUE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @GATT_REQ_READ_BY_TYPE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %100

60:                                               ; preds = %56, %52, %48
  %61 = load i32, i32* %17, align 4
  %62 = icmp sge i32 %61, 2
  br i1 %62, label %63, label %97

63:                                               ; preds = %60
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %97

66:                                               ; preds = %63
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @GATT_REQ_FIND_TYPE_VALUE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %17, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ 2, %70 ], [ %72, %71 ]
  store i32 %74, i32* %14, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i64 @gatt_parse_uuid_from_cmd(%struct.TYPE_4__* %75, i32 %76, i64** %18)
  %78 = load i64, i64* @FALSE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80, %73
  %86 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @GATT_INVALID_PDU, align 4
  store i32 %87, i32* %13, align 4
  br label %96

88:                                               ; preds = %80
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %17, align 4
  br label %96

96:                                               ; preds = %88, %85
  br label %99

97:                                               ; preds = %63, %60
  %98 = load i32, i32* @GATT_INVALID_PDU, align 4
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %97, %96
  br label %100

100:                                              ; preds = %99, %56
  br label %101

101:                                              ; preds = %100, %46
  br label %104

102:                                              ; preds = %6
  %103 = load i32, i32* @GATT_INVALID_PDU, align 4
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = load i64*, i64** %18, align 8
  %106 = load i64**, i64*** %9, align 8
  store i64* %105, i64** %106, align 8
  %107 = load i32, i32* %17, align 4
  %108 = load i32*, i32** %8, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32*, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32*, i32** %12, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %13, align 4
  ret i32 %113
}

declare dso_local i32 @STREAM_TO_UINT16(i32, i64*) #1

declare dso_local i32 @GATT_HANDLE_IS_VALID(i32) #1

declare dso_local i64 @gatt_parse_uuid_from_cmd(%struct.TYPE_4__*, i32, i64**) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
