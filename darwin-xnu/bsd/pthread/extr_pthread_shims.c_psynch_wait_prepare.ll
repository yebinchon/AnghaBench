; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_shims.c_psynch_wait_prepare.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_shims.c_psynch_wait_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }

@TURNSTILE_NULL = common dso_local global i32 0, align 4
@TURNSTILE_PTHREAD_MUTEX = common dso_local global i32 0, align 4
@TURNSTILE_DELAYED_UPDATE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_THREAD = common dso_local global i32 0, align 4
@THREAD_ABORTSAFE = common dso_local global i32 0, align 4
@TIMEOUT_URGENCY_USER_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.turnstile**, i32, i32, i32)* @psynch_wait_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psynch_wait_prepare(i64 %0, %struct.turnstile** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.turnstile**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.turnstile*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store %struct.turnstile** %1, %struct.turnstile*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.turnstile**, %struct.turnstile*** %7, align 8
  %14 = icmp ne %struct.turnstile** %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %5
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.turnstile**, %struct.turnstile*** %7, align 8
  %18 = load i32, i32* @TURNSTILE_NULL, align 4
  %19 = load i32, i32* @TURNSTILE_PTHREAD_MUTEX, align 4
  %20 = call %struct.turnstile* @turnstile_prepare(i64 %16, %struct.turnstile** %17, i32 %18, i32 %19)
  store %struct.turnstile* %20, %struct.turnstile** %11, align 8
  %21 = load %struct.turnstile*, %struct.turnstile** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @TURNSTILE_DELAYED_UPDATE, align 4
  %24 = load i32, i32* @TURNSTILE_INHERITOR_THREAD, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @turnstile_update_inheritor(%struct.turnstile* %21, i32 %22, i32 %25)
  %27 = call i32 (...) @current_thread()
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @thread_set_pending_block_hint(i32 %27, i32 %28)
  %30 = load %struct.turnstile*, %struct.turnstile** %11, align 8
  %31 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %30, i32 0, i32 0
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %35 = load i32, i32* @TIMEOUT_URGENCY_USER_NORMAL, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @waitq_assert_wait64_leeway(i32* %31, i32 %33, i32 %34, i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %12, align 4
  br label %48

38:                                               ; preds = %5
  %39 = call i32 (...) @current_thread()
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @thread_set_pending_block_hint(i32 %39, i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %45 = load i32, i32* @TIMEOUT_URGENCY_USER_NORMAL, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @assert_wait_deadline_with_leeway(i32 %43, i32 %44, i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %38, %15
  %49 = load i32, i32* %12, align 4
  ret i32 %49
}

declare dso_local %struct.turnstile* @turnstile_prepare(i64, %struct.turnstile**, i32, i32) #1

declare dso_local i32 @turnstile_update_inheritor(%struct.turnstile*, i32, i32) #1

declare dso_local i32 @thread_set_pending_block_hint(i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @waitq_assert_wait64_leeway(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert_wait_deadline_with_leeway(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
