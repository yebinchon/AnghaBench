; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_add_srv_chg_clt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_add_srv_chg_clt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"gatt_add_srv_chg_clt\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"enqueue a srv chg client\00", align 1
@gatt_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FIXED_QUEUE_MAX_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gatt_add_srv_chg_clt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = call i64 @osi_malloc(i32 4)
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @memcpy(i32* %10, i32* %11, i32 4)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gatt_cb, i32 0, i32 0), align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %16 = call i32 @fixed_queue_enqueue(i32 %13, i32* %14, i32 %15)
  br label %17

17:                                               ; preds = %8, %1
  %18 = load i32*, i32** %3, align 8
  ret i32* %18
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fixed_queue_enqueue(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
