; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_main.c_bta_hf_client_api_disable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_main.c_bta_hf_client_api_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTA_ID_HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"BTA HF Client is already disabled, ignoring ...\00", align 1
@BTA_HF_CLIENT_API_DEREGISTER_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @bta_hf_client_api_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_hf_client_api_disable(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @BTA_ID_HS, align 4
  %4 = call i32 @bta_sys_is_register(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %16

8:                                                ; preds = %1
  %9 = load i32, i32* @BTA_ID_HS, align 4
  %10 = call i32 @bta_sys_deregister(i32 %9)
  %11 = load i32, i32* @BTA_HF_CLIENT_API_DEREGISTER_EVT, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @bta_hf_client_sm_execute(i32 %11, i32* %12)
  %14 = load i32, i32* @BTA_ID_HS, align 4
  %15 = call i32 @bta_sys_collision_register(i32 %14, i32* null)
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

declare dso_local i32 @bta_sys_is_register(i32) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*) #1

declare dso_local i32 @bta_sys_deregister(i32) #1

declare dso_local i32 @bta_hf_client_sm_execute(i32, i32*) #1

declare dso_local i32 @bta_sys_collision_register(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
