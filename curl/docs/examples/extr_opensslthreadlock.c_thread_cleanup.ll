; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_opensslthreadlock.c_thread_cleanup.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_opensslthreadlock.c_thread_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mutex_buf = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @mutex_buf, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %26

6:                                                ; preds = %0
  %7 = call i32 @CRYPTO_set_id_callback(i32* null)
  %8 = call i32 @CRYPTO_set_locking_callback(i32* null)
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %20, %6
  %10 = load i32, i32* %2, align 4
  %11 = call i32 (...) @CRYPTO_num_locks()
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i32*, i32** @mutex_buf, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MUTEX_CLEANUP(i32 %18)
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %9

23:                                               ; preds = %9
  %24 = load i32*, i32** @mutex_buf, align 8
  %25 = call i32 @free(i32* %24)
  store i32* null, i32** @mutex_buf, align 8
  store i32 1, i32* %1, align 4
  br label %26

26:                                               ; preds = %23, %5
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @CRYPTO_set_id_callback(i32*) #1

declare dso_local i32 @CRYPTO_set_locking_callback(i32*) #1

declare dso_local i32 @CRYPTO_num_locks(...) #1

declare dso_local i32 @MUTEX_CLEANUP(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
