; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_so_cache_timer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_so_cache_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@so_cache_mtx = common dso_local global i32 0, align 4
@so_cache_timeouts = common dso_local global i32 0, align 4
@so_cache_time = common dso_local global i64 0, align 8
@so_cache_head = common dso_local global i32 0, align 4
@cached_sock_count = common dso_local global i64 0, align 8
@SO_CACHE_TIME_LIMIT = common dso_local global i64 0, align 8
@so_cache_ent = common dso_local global i32 0, align 4
@so_cache_zone = common dso_local global i32 0, align 4
@SO_CACHE_MAX_FREE_BATCH = common dso_local global i32 0, align 4
@so_cache_max_freed = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @so_cache_timer() #0 {
  %1 = alloca %struct.socket*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @FALSE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @so_cache_mtx, align 4
  %6 = call i32 @lck_mtx_lock(i32 %5)
  %7 = load i32, i32* @so_cache_timeouts, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @so_cache_timeouts, align 4
  %9 = call i64 (...) @net_uptime()
  store i64 %9, i64* @so_cache_time, align 8
  br label %10

10:                                               ; preds = %43, %0
  %11 = call i32 @STAILQ_EMPTY(i32* @so_cache_head)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load i64, i64* @cached_sock_count, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @VERIFY(i32 %17)
  %19 = call %struct.socket* @STAILQ_FIRST(i32* @so_cache_head)
  store %struct.socket* %19, %struct.socket** %1, align 8
  %20 = load i64, i64* @so_cache_time, align 8
  %21 = load %struct.socket*, %struct.socket** %1, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load i64, i64* @SO_CACHE_TIME_LIMIT, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %44

28:                                               ; preds = %14
  %29 = load i32, i32* @so_cache_ent, align 4
  %30 = call i32 @STAILQ_REMOVE_HEAD(i32* @so_cache_head, i32 %29)
  %31 = load i64, i64* @cached_sock_count, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* @cached_sock_count, align 8
  %33 = load i32, i32* @so_cache_zone, align 4
  %34 = load %struct.socket*, %struct.socket** %1, align 8
  %35 = call i32 @zfree(i32 %33, %struct.socket* %34)
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* @SO_CACHE_MAX_FREE_BATCH, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @so_cache_max_freed, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @so_cache_max_freed, align 4
  br label %44

43:                                               ; preds = %28
  br label %10

44:                                               ; preds = %40, %27, %10
  %45 = call i32 @STAILQ_EMPTY(i32* @so_cache_head)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* @so_cache_mtx, align 4
  %51 = call i32 @lck_mtx_unlock(i32 %50)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i64 @net_uptime(...) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.socket* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @zfree(i32, %struct.socket*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
