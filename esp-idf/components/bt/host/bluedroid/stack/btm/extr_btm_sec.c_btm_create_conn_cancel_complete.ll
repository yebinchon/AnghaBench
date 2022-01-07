; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_create_conn_cancel_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_create_conn_cancel_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32)* }

@btm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BTM_ERR_PROCESSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_create_conn_cancel_complete(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @STREAM_TO_UINT8(i32 %4, i32* %5)
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %11 [
    i32 128, label %8
    i32 130, label %10
    i32 129, label %10
  ]

8:                                                ; preds = %1
  %9 = call i32 (...) @btm_sec_bond_cancel_complete()
  br label %19

10:                                               ; preds = %1, %1
  br label %11

11:                                               ; preds = %1, %10
  %12 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %13 = icmp ne i32 (i32)* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %16 = load i32, i32* @BTM_ERR_PROCESSING, align 4
  %17 = call i32 %15(i32 %16)
  br label %18

18:                                               ; preds = %14, %11
  br label %19

19:                                               ; preds = %18, %8
  ret void
}

declare dso_local i32 @STREAM_TO_UINT8(i32, i32*) #1

declare dso_local i32 @btm_sec_bond_cancel_complete(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
