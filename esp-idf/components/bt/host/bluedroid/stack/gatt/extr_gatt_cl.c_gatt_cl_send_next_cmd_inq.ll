; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_cl_send_next_cmd_inq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_cl_send_next_cmd_inq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32*, i8* }

@FALSE = common dso_local global i8* null, align 8
@GATT_SUCCESS = common dso_local global i64 0, align 8
@GATT_CONGESTED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@GATT_CMD_WRITE = common dso_local global i64 0, align 8
@GATT_SIGN_CMD_WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"gatt_cl_send_next_cmd_inq: L2CAP sent error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gatt_cl_send_next_cmd_inq(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i64 %13
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %3, align 8
  %15 = load i8*, i8** @FALSE, align 8
  store i8* %15, i8** %4, align 8
  store i32* null, i32** %6, align 8
  %16 = load i64, i64* @GATT_SUCCESS, align 8
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %121, %1
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br label %38

38:                                               ; preds = %33, %28, %20, %17
  %39 = phi i1 [ false, %28 ], [ false, %20 ], [ false, %17 ], [ %37, %33 ]
  br i1 %39, label %40, label %122

40:                                               ; preds = %38
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @attp_send_msg_to_l2cap(%struct.TYPE_7__* %41, i32* %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @GATT_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @GATT_CONGESTED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %106

53:                                               ; preds = %49, %40
  %54 = load i8*, i8** @TRUE, align 8
  store i8* %54, i8** %4, align 8
  %55 = load i8*, i8** @FALSE, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @osi_free(i32* %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %62, %53
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @GATT_CMD_WRITE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @GATT_SIGN_CMD_WRITE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @gatt_start_rsp_timer(i32 %84)
  br label %105

86:                                               ; preds = %75, %69
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = call i32* @gatt_cmd_dequeue(%struct.TYPE_7__* %87, i32* %5)
  store i32* %88, i32** %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @GATT_SUCCESS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i8*, i8** @FALSE, align 8
  store i8* %93, i8** %4, align 8
  br label %94

94:                                               ; preds = %92, %86
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %100
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %3, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @gatt_end_operation(i32* %102, i64 %103, i32* null)
  br label %105

105:                                              ; preds = %94, %81
  br label %121

106:                                              ; preds = %49
  %107 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = call i32 @memset(%struct.TYPE_8__* %108, i32 0, i32 32)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %111, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %119
  store %struct.TYPE_8__* %120, %struct.TYPE_8__** %3, align 8
  br label %121

121:                                              ; preds = %106, %105
  br label %17

122:                                              ; preds = %38
  %123 = load i8*, i8** %4, align 8
  ret i8* %123
}

declare dso_local i64 @attp_send_msg_to_l2cap(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @osi_free(i32*) #1

declare dso_local i32 @gatt_start_rsp_timer(i32) #1

declare dso_local i32* @gatt_cmd_dequeue(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @gatt_end_operation(i32*, i64, i32*) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
