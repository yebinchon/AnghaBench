; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_cl_send_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_cl_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@GATT_SUCCESS = common dso_local global i64 0, align 8
@GATT_AUTH_SIGN_MASK = common dso_local global i32 0, align 4
@GATT_HANDLE_VALUE_CONF = common dso_local global i32 0, align 4
@GATT_CONGESTED = common dso_local global i64 0, align 8
@GATT_CMD_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GATT_INTERNAL_ERROR = common dso_local global i64 0, align 8
@GATT_CMD_STARTED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@GATT_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @attp_cl_send_cmd(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i64, i64* @GATT_SUCCESS, align 8
  store i64 %10, i64* %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %69

13:                                               ; preds = %4
  %14 = load i32, i32* @GATT_AUTH_SIGN_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GATT_HANDLE_VALUE_CONF, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %25, %13
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @attp_send_msg_to_l2cap(%struct.TYPE_5__* %30, i32* %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @GATT_CONGESTED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @GATT_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36, %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @GATT_HANDLE_VALUE_CONF, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @GATT_CMD_WRITE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @gatt_start_rsp_timer(i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @FALSE, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @gatt_cmd_enq(%struct.TYPE_5__* %51, i32 %52, i32 %53, i32 %54, i32* null)
  br label %56

56:                                               ; preds = %48, %44, %40
  br label %59

57:                                               ; preds = %36
  %58 = load i64, i64* @GATT_INTERNAL_ERROR, align 8
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %57, %56
  br label %68

60:                                               ; preds = %25
  %61 = load i64, i64* @GATT_CMD_STARTED, align 8
  store i64 %61, i64* %9, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @TRUE, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @gatt_cmd_enq(%struct.TYPE_5__* %62, i32 %63, i32 %64, i32 %65, i32* %66)
  br label %68

68:                                               ; preds = %60, %59
  br label %71

69:                                               ; preds = %4
  %70 = load i64, i64* @GATT_ERROR, align 8
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %69, %68
  %72 = load i64, i64* %9, align 8
  ret i64 %72
}

declare dso_local i64 @attp_send_msg_to_l2cap(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @gatt_start_rsp_timer(i32) #1

declare dso_local i32 @gatt_cmd_enq(%struct.TYPE_5__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
