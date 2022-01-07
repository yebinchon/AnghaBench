; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_process_error_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_process_error_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"gatt_process_error_rsp \00", align 1
@GATTC_OPTYPE_DISCOVERY = common dso_local global i64 0, align 8
@GATTC_OPTYPE_WRITE = common dso_local global i64 0, align 8
@GATT_WRITE = common dso_local global i64 0, align 8
@GATT_REQ_PREPARE_WRITE = common dso_local global i64 0, align 8
@GATT_SUCCESS = common dso_local global i64 0, align 8
@GATT_ERROR = common dso_local global i64 0, align 8
@GATT_PREP_WRITE_CANCEL = common dso_local global i32 0, align 4
@GATTC_OPTYPE_READ = common dso_local global i64 0, align 8
@GATT_READ_CHAR_VALUE_HDL = common dso_local global i64 0, align 8
@GATT_READ_BY_HANDLE = common dso_local global i64 0, align 8
@GATT_REQ_READ_BLOB = common dso_local global i64 0, align 8
@GATT_NOT_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_process_error_rsp(i32* %0, %struct.TYPE_8__* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %16 = load i64*, i64** %10, align 8
  store i64* %16, i64** %13, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %15, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @UNUSED(i64 %21)
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @UNUSED(i64 %23)
  %25 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* %11, align 8
  %27 = load i64*, i64** %13, align 8
  %28 = call i32 @STREAM_TO_UINT8(i64 %26, i64* %27)
  %29 = load i64, i64* %14, align 8
  %30 = load i64*, i64** %13, align 8
  %31 = call i32 @STREAM_TO_UINT16(i64 %29, i64* %30)
  %32 = load i64, i64* %12, align 8
  %33 = load i64*, i64** %13, align 8
  %34 = call i32 @STREAM_TO_UINT8(i64 %32, i64* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GATTC_OPTYPE_DISCOVERY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %5
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @gatt_proc_disc_error_rsp(i32* %41, %struct.TYPE_8__* %42, i64 %43, i64 %44, i64 %45)
  br label %131

47:                                               ; preds = %5
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @GATTC_OPTYPE_WRITE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GATT_WRITE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %53
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @GATT_REQ_PREPARE_WRITE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %59
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %86

66:                                               ; preds = %63
  %67 = load i64, i64* %14, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @GATT_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* @GATT_ERROR, align 8
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i64, i64* %12, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = load i32, i32* @GATT_PREP_WRITE_CANCEL, align 4
  %85 = call i32 @gatt_send_queue_write_cancel(i32* %82, %struct.TYPE_8__* %83, i32 %84)
  br label %130

86:                                               ; preds = %66, %63, %59, %53, %47
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @GATTC_OPTYPE_READ, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %86
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @GATT_READ_CHAR_VALUE_HDL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @GATT_READ_BY_HANDLE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %98, %92
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* @GATT_REQ_READ_BLOB, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %104
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* @GATT_NOT_LONG, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = load i64, i64* @GATT_SUCCESS, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @gatt_end_operation(%struct.TYPE_8__* %118, i64 %119, i8* %123)
  br label %129

125:                                              ; preds = %113, %108, %104, %98, %86
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = load i64, i64* %12, align 8
  %128 = call i32 @gatt_end_operation(%struct.TYPE_8__* %126, i64 %127, i8* null)
  br label %129

129:                                              ; preds = %125, %117
  br label %130

130:                                              ; preds = %129, %78
  br label %131

131:                                              ; preds = %130, %40
  ret void
}

declare dso_local i32 @UNUSED(i64) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i64*) #1

declare dso_local i32 @gatt_proc_disc_error_rsp(i32*, %struct.TYPE_8__*, i64, i64, i64) #1

declare dso_local i32 @gatt_send_queue_write_cancel(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @gatt_end_operation(%struct.TYPE_8__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
