; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_threaded-ssl.c_init_locks.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_threaded-ssl.c_init_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lockarray = common dso_local global i32* null, align 8
@thread_id = common dso_local global i64 0, align 8
@lock_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_locks() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @CRYPTO_num_locks()
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 4
  %5 = trunc i64 %4 to i32
  %6 = call i64 @OPENSSL_malloc(i32 %5)
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** @lockarray, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %18, %0
  %9 = load i32, i32* %1, align 4
  %10 = call i32 (...) @CRYPTO_num_locks()
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32*, i32** @lockarray, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @pthread_mutex_init(i32* %16, i32* null)
  br label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %8

21:                                               ; preds = %8
  %22 = load i64, i64* @thread_id, align 8
  %23 = inttoptr i64 %22 to i64 (...)*
  %24 = call i32 @CRYPTO_set_id_callback(i64 (...)* %23)
  %25 = load i64, i64* @lock_callback, align 8
  %26 = inttoptr i64 %25 to void (...)*
  %27 = call i32 @CRYPTO_set_locking_callback(void (...)* %26)
  ret void
}

declare dso_local i64 @OPENSSL_malloc(i32) #1

declare dso_local i32 @CRYPTO_num_locks(...) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @CRYPTO_set_id_callback(i64 (...)*) #1

declare dso_local i32 @CRYPTO_set_locking_callback(void (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
