; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_process_attribute_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_process_attribute_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i64 }

@gatt_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GATT_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Illegal PDU length, discard request\0A\00", align 1
@GATT_INVALID_PDU = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Conformance tst: forced err rsp: error status=%d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GATT_MAX_SR_PROFILES = common dso_local global i64 0, align 8
@GATT_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatts_process_attribute_req(i32* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i64*, i64** %8, align 8
  store i64* %15, i64** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gatt_cb, i32 0, i32 4), align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %12, align 8
  %17 = load i64, i64* @GATT_INVALID_HANDLE, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @GATT_INVALID_PDU, align 8
  store i64 %22, i64* %13, align 8
  br label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i64*, i64** %10, align 8
  %26 = call i32 @STREAM_TO_UINT16(i32 %24, i64* %25)
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 2
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gatt_cb, i32 0, i32 0), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gatt_cb, i32 0, i32 3), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gatt_cb, i32 0, i32 1), align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gatt_cb, i32 0, i32 2), align 8
  %39 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gatt_cb, i32 0, i32 2), align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gatt_cb, i32 0, i32 1), align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @gatt_send_error_rsp(i32* %40, i64 %41, i64 %42, i32 %43, i32 %44)
  br label %147

46:                                               ; preds = %33, %29
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @GATT_HANDLE_IS_VALID(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %130

50:                                               ; preds = %46
  store i64 0, i64* %11, align 8
  br label %51

51:                                               ; preds = %124, %50
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @GATT_MAX_SR_PROFILES, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %129

55:                                               ; preds = %51
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %123

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %123

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %123

72:                                               ; preds = %66
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %14, align 8
  br label %79

79:                                               ; preds = %117, %72
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %81 = icmp ne %struct.TYPE_8__* %80, null
  br i1 %81, label %82, label %122

82:                                               ; preds = %79
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %82
  %89 = load i64, i64* %6, align 8
  switch i64 %89, label %114 [
    i64 131, label %90
    i64 130, label %90
    i64 129, label %98
    i64 133, label %98
    i64 128, label %98
    i64 132, label %106
  ]

90:                                               ; preds = %88, %88
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i64*, i64** %10, align 8
  %97 = call i32 @gatts_process_read_req(i32* %91, %struct.TYPE_7__* %92, i64 %93, i32 %94, i32 %95, i64* %96)
  br label %115

98:                                               ; preds = %88, %88, %88
  %99 = load i32*, i32** %5, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i64, i64* %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i64*, i64** %10, align 8
  %105 = call i32 @gatts_process_write_req(i32* %99, i64 %100, i32 %101, i64 %102, i32 %103, i64* %104)
  br label %115

106:                                              ; preds = %88
  %107 = load i32*, i32** %5, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i64, i64* %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i64*, i64** %10, align 8
  %113 = call i32 @gatt_attr_process_prepare_write(i32* %107, i64 %108, i32 %109, i64 %110, i32 %111, i64* %112)
  br label %114

114:                                              ; preds = %88, %106
  br label %115

115:                                              ; preds = %114, %98, %90
  %116 = load i64, i64* @GATT_SUCCESS, align 8
  store i64 %116, i64* %13, align 8
  br label %122

117:                                              ; preds = %82
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %14, align 8
  br label %79

122:                                              ; preds = %115, %79
  br label %129

123:                                              ; preds = %66, %60, %55
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %11, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %11, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 1
  store %struct.TYPE_7__* %128, %struct.TYPE_7__** %12, align 8
  br label %51

129:                                              ; preds = %122, %51
  br label %130

130:                                              ; preds = %129, %46
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* @GATT_SUCCESS, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %130
  %135 = load i64, i64* %6, align 8
  %136 = icmp ne i64 %135, 133
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load i64, i64* %6, align 8
  %139 = icmp ne i64 %138, 128
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32*, i32** %5, align 8
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @FALSE, align 4
  %146 = call i32 @gatt_send_error_rsp(i32* %141, i64 %142, i64 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %37, %140, %137, %134, %130
  ret void
}

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i64*) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i64) #1

declare dso_local i32 @gatt_send_error_rsp(i32*, i64, i64, i32, i32) #1

declare dso_local i64 @GATT_HANDLE_IS_VALID(i32) #1

declare dso_local i32 @gatts_process_read_req(i32*, %struct.TYPE_7__*, i64, i32, i32, i64*) #1

declare dso_local i32 @gatts_process_write_req(i32*, i64, i32, i64, i32, i64*) #1

declare dso_local i32 @gatt_attr_process_prepare_write(i32*, i64, i32, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
