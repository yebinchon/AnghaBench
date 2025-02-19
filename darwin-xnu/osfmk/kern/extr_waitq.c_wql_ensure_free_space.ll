; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wql_ensure_free_space.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wql_ensure_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@g_wqlinktable = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@g_min_free_table_elem = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Forcing table growth: nelem=%d, used=%d, min_free=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wql_ensure_free_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wql_ensure_free_space() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wqlinktable, i32 0, i32 0), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wqlinktable, i32 0, i32 1), align 8
  %3 = sub nsw i64 %1, %2
  %4 = load i64, i64* @g_min_free_table_elem, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wqlinktable, i32 0, i32 1), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wqlinktable, i32 0, i32 0), align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wqlinktable, i32 0, i32 0), align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_wqlinktable, i32 0, i32 1), align 8
  %13 = load i64, i64* @g_min_free_table_elem, align 8
  %14 = call i32 @wqdbg_v(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %12, i64 %13)
  %15 = load i64, i64* @g_min_free_table_elem, align 8
  %16 = call i32 @ltable_grow(%struct.TYPE_3__* @g_wqlinktable, i64 %15)
  br label %17

17:                                               ; preds = %10, %6
  br label %18

18:                                               ; preds = %17, %0
  ret void
}

declare dso_local i32 @wqdbg_v(i8*, i64, i64, i64) #1

declare dso_local i32 @ltable_grow(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
