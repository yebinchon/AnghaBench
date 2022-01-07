; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/security/audit/extr_audit_worker.c_audit_worker_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/security/audit/extr_audit_worker.c_audit_worker_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@audit_worker = common dso_local global i64 0, align 8
@audit_thread = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"audit_worker_init: Couldn't create audit_worker thread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_worker_init() #0 {
  %1 = call i32 (...) @AUDIT_WORKER_SX_INIT()
  %2 = load i64, i64* @audit_worker, align 8
  %3 = trunc i64 %2 to i32
  %4 = call i32 @kernel_thread_start(i32 %3, i32* null, i64* @audit_thread)
  %5 = load i64, i64* @audit_thread, align 8
  %6 = load i64, i64* @THREAD_NULL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @panic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  ret void
}

declare dso_local i32 @AUDIT_WORKER_SX_INIT(...) #1

declare dso_local i32 @kernel_thread_start(i32, i32*, i64*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
