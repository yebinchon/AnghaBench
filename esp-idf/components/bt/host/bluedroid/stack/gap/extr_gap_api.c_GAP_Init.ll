; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_api.c_GAP_Init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_api.c_GAP_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@gap_cb_ptr = common dso_local global i32* null, align 8
@BT_STATUS_NOMEM = common dso_local global i32 0, align 4
@gap_cb = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@BT_TRACE_LEVEL_NONE = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@GAP_INITIAL_TRACE_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GAP_Init() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @osi_malloc(i32 4)
  %3 = inttoptr i64 %2 to i32*
  store i32* %3, i32** @gap_cb_ptr, align 8
  %4 = load i32*, i32** @gap_cb_ptr, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @BT_STATUS_NOMEM, align 4
  store i32 %7, i32* %1, align 4
  br label %14

8:                                                ; preds = %0
  %9 = call i32 @memset(%struct.TYPE_3__* @gap_cb, i32 0, i32 4)
  %10 = load i32, i32* @BT_TRACE_LEVEL_NONE, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gap_cb, i32 0, i32 0), align 4
  %11 = call i32 (...) @gap_conn_init()
  %12 = call i32 (...) @gap_attr_db_init()
  %13 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %8, %6
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @gap_conn_init(...) #1

declare dso_local i32 @gap_attr_db_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
