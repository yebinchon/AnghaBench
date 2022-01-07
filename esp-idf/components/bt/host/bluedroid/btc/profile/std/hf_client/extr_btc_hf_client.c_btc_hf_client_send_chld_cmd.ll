; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_btc_hf_client.c_btc_hf_client_send_chld_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_btc_hf_client.c_btc_hf_client_send_chld_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@hf_client_local_param = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BTA_HF_CLIENT_CHLD_REL = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_AT_CMD_CHLD = common dso_local global i32 0, align 4
@BT_STATUS_UNSUPPORTED = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_PEER_FEAT_3WAY = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_CHLD_MERGE = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_CHLD_MERGE_DETACH = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_PEER_ECC = common dso_local global i32 0, align 4
@BT_STATUS_FAIL = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @btc_hf_client_send_chld_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc_hf_client_send_chld_cmd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = call i32 (...) @CHECK_HF_CLIENT_SLC_CONNECTED()
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %97 [
    i32 130, label %8
    i32 129, label %19
    i32 134, label %30
    i32 133, label %41
    i32 132, label %52
    i32 128, label %63
    i32 131, label %80
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 0), align 4
  %10 = load i32, i32* @BTA_HF_CLIENT_CHLD_REL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 2), align 4
  %15 = load i32, i32* @BTA_HF_CLIENT_AT_CMD_CHLD, align 4
  %16 = call i32 @BTA_HfClientSendAT(i32 %14, i32 %15, i32 0, i32 0, i32* null)
  br label %97

17:                                               ; preds = %8
  %18 = load i32, i32* @BT_STATUS_UNSUPPORTED, align 4
  store i32 %18, i32* %3, align 4
  br label %99

19:                                               ; preds = %2
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 1), align 4
  %21 = load i32, i32* @BTA_HF_CLIENT_PEER_FEAT_3WAY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 2), align 4
  %26 = load i32, i32* @BTA_HF_CLIENT_AT_CMD_CHLD, align 4
  %27 = call i32 @BTA_HfClientSendAT(i32 %25, i32 %26, i32 1, i32 0, i32* null)
  br label %97

28:                                               ; preds = %19
  %29 = load i32, i32* @BT_STATUS_UNSUPPORTED, align 4
  store i32 %29, i32* %3, align 4
  br label %99

30:                                               ; preds = %2
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 1), align 4
  %32 = load i32, i32* @BTA_HF_CLIENT_PEER_FEAT_3WAY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 2), align 4
  %37 = load i32, i32* @BTA_HF_CLIENT_AT_CMD_CHLD, align 4
  %38 = call i32 @BTA_HfClientSendAT(i32 %36, i32 %37, i32 2, i32 0, i32* null)
  br label %97

39:                                               ; preds = %30
  %40 = load i32, i32* @BT_STATUS_UNSUPPORTED, align 4
  store i32 %40, i32* %3, align 4
  br label %99

41:                                               ; preds = %2
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 0), align 4
  %43 = load i32, i32* @BTA_HF_CLIENT_CHLD_MERGE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 2), align 4
  %48 = load i32, i32* @BTA_HF_CLIENT_AT_CMD_CHLD, align 4
  %49 = call i32 @BTA_HfClientSendAT(i32 %47, i32 %48, i32 3, i32 0, i32* null)
  br label %97

50:                                               ; preds = %41
  %51 = load i32, i32* @BT_STATUS_UNSUPPORTED, align 4
  store i32 %51, i32* %3, align 4
  br label %99

52:                                               ; preds = %2
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 0), align 4
  %54 = load i32, i32* @BTA_HF_CLIENT_CHLD_MERGE_DETACH, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 2), align 4
  %59 = load i32, i32* @BTA_HF_CLIENT_AT_CMD_CHLD, align 4
  %60 = call i32 @BTA_HfClientSendAT(i32 %58, i32 %59, i32 4, i32 0, i32* null)
  br label %97

61:                                               ; preds = %52
  %62 = load i32, i32* @BT_STATUS_UNSUPPORTED, align 4
  store i32 %62, i32* %3, align 4
  br label %99

63:                                               ; preds = %2
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 1), align 4
  %65 = load i32, i32* @BTA_HF_CLIENT_PEER_ECC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @BT_STATUS_FAIL, align 4
  store i32 %72, i32* %3, align 4
  br label %99

73:                                               ; preds = %68
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 2), align 4
  %75 = load i32, i32* @BTA_HF_CLIENT_AT_CMD_CHLD, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @BTA_HfClientSendAT(i32 %74, i32 %75, i32 1, i32 %76, i32* null)
  br label %97

78:                                               ; preds = %63
  %79 = load i32, i32* @BT_STATUS_UNSUPPORTED, align 4
  store i32 %79, i32* %3, align 4
  br label %99

80:                                               ; preds = %2
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 1), align 4
  %82 = load i32, i32* @BTA_HF_CLIENT_PEER_ECC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @BT_STATUS_FAIL, align 4
  store i32 %89, i32* %3, align 4
  br label %99

90:                                               ; preds = %85
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 2), align 4
  %92 = load i32, i32* @BTA_HF_CLIENT_AT_CMD_CHLD, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @BTA_HfClientSendAT(i32 %91, i32 %92, i32 2, i32 %93, i32* null)
  br label %97

95:                                               ; preds = %80
  %96 = load i32, i32* @BT_STATUS_UNSUPPORTED, align 4
  store i32 %96, i32* %3, align 4
  br label %99

97:                                               ; preds = %2, %90, %73, %57, %46, %35, %24, %13
  %98 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %95, %88, %78, %71, %61, %50, %39, %28, %17
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @CHECK_HF_CLIENT_SLC_CONNECTED(...) #1

declare dso_local i32 @BTA_HfClientSendAT(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
