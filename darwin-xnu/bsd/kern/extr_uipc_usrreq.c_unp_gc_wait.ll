; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_gc_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_gc_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unp_gcthread = common dso_local global i64 0, align 8
@unp_gcing = common dso_local global i64 0, align 8
@unp_gcwait = common dso_local global i32 0, align 4
@uipc_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"unp_gc_wait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unp_gc_wait() #0 {
  %1 = load i64, i64* @unp_gcthread, align 8
  %2 = call i64 (...) @current_thread()
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %12

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %9, %5
  %7 = load i64, i64* @unp_gcing, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  store i32 1, i32* @unp_gcwait, align 4
  %10 = load i32, i32* @uipc_lock, align 4
  %11 = call i32 @msleep(i64* @unp_gcing, i32 %10, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %6

12:                                               ; preds = %4, %6
  ret void
}

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @msleep(i64*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
