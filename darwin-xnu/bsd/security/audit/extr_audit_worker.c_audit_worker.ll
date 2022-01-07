; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/security/audit/extr_audit_worker.c_audit_worker.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/security/audit/extr_audit_worker.c_audit_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.kaudit_queue = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.kaudit_record = type { i32 }

@audit_ctx = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@audit_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@audit_q = common dso_local global %struct.kaudit_queue zeroinitializer, align 4
@audit_worker_cv = common dso_local global i32 0, align 4
@k_q = common dso_local global i32 0, align 4
@audit_q_len = common dso_local global i64 0, align 8
@audit_qctrl = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@audit_watermark_cv = common dso_local global i32 0, align 4
@AR_DRAIN_QUEUE = common dso_local global i32 0, align 4
@audit_q_draining = common dso_local global i64 0, align 8
@audit_drain_cv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @audit_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @audit_worker() #0 {
  %1 = alloca %struct.kaudit_queue, align 4
  %2 = alloca %struct.kaudit_record*, align 8
  %3 = alloca i32, align 4
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @audit_ctx, i32 0, i32 0), align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32* (...) @current_thread()
  store i32* %7, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @audit_ctx, i32 0, i32 0), align 8
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i32 @TAILQ_INIT(%struct.kaudit_queue* %1)
  %10 = call i32 @mtx_lock(i32* @audit_mtx)
  br label %11

11:                                               ; preds = %8, %67
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* @audit_mtx, i32 %12)
  br label %14

14:                                               ; preds = %17, %11
  %15 = call i64 @TAILQ_EMPTY(%struct.kaudit_queue* @audit_q)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @cv_wait_continuation(i32* @audit_worker_cv, i32* @audit_mtx, i32 ptrtoint (void ()* @audit_worker to i32))
  br label %14

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %35, %19
  %21 = call %struct.kaudit_record* @TAILQ_FIRST(%struct.kaudit_queue* @audit_q)
  store %struct.kaudit_record* %21, %struct.kaudit_record** %2, align 8
  %22 = icmp ne %struct.kaudit_record* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %25 = load i32, i32* @k_q, align 4
  %26 = call i32 @TAILQ_REMOVE(%struct.kaudit_queue* @audit_q, %struct.kaudit_record* %24, i32 %25)
  %27 = load i64, i64* @audit_q_len, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* @audit_q_len, align 8
  %29 = load i64, i64* @audit_q_len, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @audit_qctrl, i32 0, i32 0), align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %23
  %36 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %37 = load i32, i32* @k_q, align 4
  %38 = call i32 @TAILQ_INSERT_TAIL(%struct.kaudit_queue* %1, %struct.kaudit_record* %36, i32 %37)
  br label %20

39:                                               ; preds = %20
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @cv_broadcast(i32* @audit_watermark_cv)
  br label %44

44:                                               ; preds = %42, %39
  %45 = call i32 @mtx_unlock(i32* @audit_mtx)
  br label %46

46:                                               ; preds = %66, %44
  %47 = call %struct.kaudit_record* @TAILQ_FIRST(%struct.kaudit_queue* %1)
  store %struct.kaudit_record* %47, %struct.kaudit_record** %2, align 8
  %48 = icmp ne %struct.kaudit_record* %47, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %51 = load i32, i32* @k_q, align 4
  %52 = call i32 @TAILQ_REMOVE(%struct.kaudit_queue* %1, %struct.kaudit_record* %50, i32 %51)
  %53 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %54 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AR_DRAIN_QUEUE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  store i64 0, i64* @audit_q_draining, align 8
  %60 = call i32 @cv_broadcast(i32* @audit_drain_cv)
  br label %66

61:                                               ; preds = %49
  %62 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %63 = call i32 @audit_worker_process_record(%struct.kaudit_record* %62)
  %64 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %65 = call i32 @audit_free(%struct.kaudit_record* %64)
  br label %66

66:                                               ; preds = %61, %59
  br label %46

67:                                               ; preds = %46
  %68 = call i32 @mtx_lock(i32* @audit_mtx)
  br label %11
}

declare dso_local i32* @current_thread(...) #1

declare dso_local i32 @TAILQ_INIT(%struct.kaudit_queue*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(%struct.kaudit_queue*) #1

declare dso_local i32 @cv_wait_continuation(i32*, i32*, i32) #1

declare dso_local %struct.kaudit_record* @TAILQ_FIRST(%struct.kaudit_queue*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.kaudit_queue*, %struct.kaudit_record*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.kaudit_queue*, %struct.kaudit_record*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @audit_worker_process_record(%struct.kaudit_record*) #1

declare dso_local i32 @audit_free(%struct.kaudit_record*) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
