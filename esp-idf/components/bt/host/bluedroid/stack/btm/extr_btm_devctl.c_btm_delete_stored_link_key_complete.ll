; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_btm_delete_stored_link_key_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_btm_delete_stored_link_key_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@btm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@BTM_CB_EVT_DELETE_STORED_LINK_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_delete_stored_link_key_complete(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32 (%struct.TYPE_7__*)**, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %6 = bitcast i32 (%struct.TYPE_7__*)* %5 to i32 (%struct.TYPE_7__*)**
  store i32 (%struct.TYPE_7__*)** %6, i32 (%struct.TYPE_7__*)*** %3, align 8
  store i32 (%struct.TYPE_7__*)* null, i32 (%struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %7 = load i32 (%struct.TYPE_7__*)**, i32 (%struct.TYPE_7__*)*** %3, align 8
  %8 = icmp ne i32 (%struct.TYPE_7__*)** %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @BTM_CB_EVT_DELETE_STORED_LINK_KEYS, align 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @STREAM_TO_UINT8(i32 %13, i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @STREAM_TO_UINT16(i32 %17, i32* %18)
  %20 = load i32 (%struct.TYPE_7__*)**, i32 (%struct.TYPE_7__*)*** %3, align 8
  %21 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %20, align 8
  %22 = call i32 %21(%struct.TYPE_7__* %4)
  br label %23

23:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @STREAM_TO_UINT8(i32, i32*) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
