; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_act_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_act_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64, i32 }

@GATT_SUCCESS = common dso_local global i64 0, align 8
@GATT_SEC_SIGN_DATA = common dso_local global i64 0, align 8
@GATT_SIGN_CMD_WRITE = common dso_local global i64 0, align 8
@GATT_CMD_WRITE = common dso_local global i64 0, align 8
@GATT_HDR_SIZE = common dso_local global i64 0, align 8
@GATT_REQ_WRITE = common dso_local global i64 0, align 8
@GATT_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Unknown write type: %d\00", align 1
@GATT_CMD_STARTED = common dso_local global i64 0, align 8
@GATT_CONGESTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"gatt_act_write() failed op_code=0x%x rt=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_act_write(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %5, align 8
  %12 = load i64, i64* @GATT_SUCCESS, align 8
  store i64 %12, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %101

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %93 [
    i32 129, label %23
    i32 130, label %53
    i32 128, label %89
  ]

23:                                               ; preds = %19
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @GATT_SEC_SIGN_DATA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i64, i64* @GATT_SIGN_CMD_WRITE, align 8
  br label %36

34:                                               ; preds = %23
  %35 = load i64, i64* @GATT_CMD_WRITE, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  store i64 %37, i64* %7, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @gatt_send_write_msg(%struct.TYPE_10__* %38, i32 %41, i64 %42, i32 %45, i64 %48, i32 0, i32 %51)
  store i64 %52, i64* %6, align 8
  br label %100

53:                                               ; preds = %19
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @GATT_HDR_SIZE, align 8
  %61 = sub nsw i64 %59, %60
  %62 = icmp sle i64 %56, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %53
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* @GATT_REQ_WRITE, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @gatt_send_write_msg(%struct.TYPE_10__* %69, i32 %72, i64 %73, i32 %76, i64 %79, i32 0, i32 %82)
  store i64 %83, i64* %6, align 8
  br label %88

84:                                               ; preds = %53
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = call i32 @gatt_send_prepare_write(%struct.TYPE_10__* %85, %struct.TYPE_11__* %86)
  br label %88

88:                                               ; preds = %84, %63
  br label %100

89:                                               ; preds = %19
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = call i32 @gatt_send_prepare_write(%struct.TYPE_10__* %90, %struct.TYPE_11__* %91)
  br label %100

93:                                               ; preds = %19
  %94 = load i64, i64* @GATT_INTERNAL_ERROR, align 8
  store i64 %94, i64* %6, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = call i32 (i8*, i64, ...) @GATT_TRACE_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %98)
  br label %100

100:                                              ; preds = %93, %89, %88, %36
  br label %103

101:                                              ; preds = %2
  %102 = load i64, i64* @GATT_INTERNAL_ERROR, align 8
  store i64 %102, i64* %6, align 8
  br label %103

103:                                              ; preds = %101, %100
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* @GATT_SUCCESS, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @GATT_CMD_STARTED, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @GATT_CONGESTED, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %124, label %115

115:                                              ; preds = %111, %107, %103
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @GATT_CMD_STARTED, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %115
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 129
  br i1 %123, label %124, label %136

124:                                              ; preds = %119, %111
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* @GATT_SUCCESS, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %6, align 8
  %131 = call i32 (i8*, i64, ...) @GATT_TRACE_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %129, i64 %130)
  br label %132

132:                                              ; preds = %128, %124
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @gatt_end_operation(%struct.TYPE_11__* %133, i64 %134, i32* null)
  br label %136

136:                                              ; preds = %132, %119, %115
  ret void
}

declare dso_local i64 @gatt_send_write_msg(%struct.TYPE_10__*, i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @gatt_send_prepare_write(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*, i64, ...) #1

declare dso_local i32 @gatt_end_operation(%struct.TYPE_11__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
