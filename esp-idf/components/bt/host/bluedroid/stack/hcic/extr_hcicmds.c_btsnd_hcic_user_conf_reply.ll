; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_user_conf_reply.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_user_conf_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@HCIC_PARAM_SIZE_UCONF_REPLY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@HCIC_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@HCI_USER_CONF_VALUE_NEG_REPLY = common dso_local global i32 0, align 4
@HCI_USER_CONF_REQUEST_REPLY = common dso_local global i32 0, align 4
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btsnd_hcic_user_conf_reply(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @HCIC_PARAM_SIZE_UCONF_REPLY, align 8
  %9 = call %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64 %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 1
  %16 = bitcast %struct.TYPE_4__* %15 to i32*
  store i32* %16, i32** %7, align 8
  %17 = load i64, i64* @HCIC_PREAMBLE_SIZE, align 8
  %18 = load i64, i64* @HCIC_PARAM_SIZE_UCONF_REPLY, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %13
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @HCI_USER_CONF_VALUE_NEG_REPLY, align 4
  %29 = call i32 @UINT16_TO_STREAM(i32* %27, i32 %28)
  br label %34

30:                                               ; preds = %13
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @HCI_USER_CONF_REQUEST_REPLY, align 4
  %33 = call i32 @UINT16_TO_STREAM(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* @HCIC_PARAM_SIZE_UCONF_REPLY, align 8
  %37 = call i32 @UINT8_TO_STREAM(i32* %35, i64 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @BDADDR_TO_STREAM(i32* %38, i32 %39)
  %41 = load i32, i32* @LOCAL_BR_EDR_CONTROLLER_ID, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = call i32 @btu_hcif_send_cmd(i32 %41, %struct.TYPE_4__* %42)
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i64) #1

declare dso_local i32 @BDADDR_TO_STREAM(i32*, i32) #1

declare dso_local i32 @btu_hcif_send_cmd(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
