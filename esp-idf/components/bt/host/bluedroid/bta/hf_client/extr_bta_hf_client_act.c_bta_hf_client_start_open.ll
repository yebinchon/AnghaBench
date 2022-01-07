; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_act.c_bta_hf_client_start_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_act.c_bta_hf_client_start_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@bta_hf_client_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@BTA_ID_HS = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_hf_client_start_open(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = icmp ne %struct.TYPE_8__* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 1), align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bdcpy(i32 %7, i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 2), align 4
  br label %17

17:                                               ; preds = %6, %1
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @PORT_IsOpening(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @BTA_ID_HS, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 1), align 4
  %24 = call i32 @bta_hf_client_collision_cback(i32 0, i32 %22, i32 0, i32 %23)
  br label %29

25:                                               ; preds = %17
  %26 = call i32 (...) @bta_hf_client_close_server()
  %27 = load i32, i32* @BTA_HF_CLIENT_INT, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 0), align 4
  %28 = call i32 (...) @bta_hf_client_do_disc()
  br label %29

29:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i64 @PORT_IsOpening(i32) #1

declare dso_local i32 @bta_hf_client_collision_cback(i32, i32, i32, i32) #1

declare dso_local i32 @bta_hf_client_close_server(...) #1

declare dso_local i32 @bta_hf_client_do_disc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
