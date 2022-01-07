; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_db.c_db_worker_stop.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_db.c_db_worker_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_enabled = common dso_local global i32 0, align 4
@mtx = common dso_local global i32 0, align 4
@ring = common dso_local global i32 0, align 4
@cnd = common dso_local global i32 0, align 4
@thrd = common dso_local global i32 0, align 4
@load_mtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_worker_stop() #0 {
  %1 = load i32, i32* @db_enabled, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %15

4:                                                ; preds = %0
  %5 = call i32 @mtx_lock(i32* @mtx)
  %6 = call i32 @ring_put_exit(i32* @ring)
  %7 = call i32 @cnd_signal(i32* @cnd)
  %8 = call i32 @mtx_unlock(i32* @mtx)
  %9 = load i32, i32* @thrd, align 4
  %10 = call i32 @thrd_join(i32 %9, i32* null)
  %11 = call i32 @cnd_destroy(i32* @cnd)
  %12 = call i32 @mtx_destroy(i32* @load_mtx)
  %13 = call i32 @mtx_destroy(i32* @mtx)
  %14 = call i32 @ring_free(i32* @ring)
  br label %15

15:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ring_put_exit(i32*) #1

declare dso_local i32 @cnd_signal(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @thrd_join(i32, i32*) #1

declare dso_local i32 @cnd_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @ring_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
