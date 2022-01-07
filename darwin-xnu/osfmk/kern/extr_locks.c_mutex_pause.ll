; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_mutex_pause.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_mutex_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COLLISION_COUNTS = common dso_local global i64 0, align 8
@max_collision_count = common dso_local global i32* null, align 8
@MAX_COLLISION = common dso_local global i64 0, align 8
@collision_backoffs = common dso_local global i64* null, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@THREAD_TIMED_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mutex_pause(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @MAX_COLLISION_COUNTS, align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @MAX_COLLISION_COUNTS, align 8
  %10 = sub i64 %9, 1
  store i64 %10, i64* %2, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32*, i32** @max_collision_count, align 8
  %13 = load i64, i64* %2, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @MAX_COLLISION, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i64, i64* @MAX_COLLISION, align 8
  %22 = sub i64 %21, 1
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %20, %11
  %24 = load i64*, i64** @collision_backoffs, align 8
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  %28 = load i32, i32* @THREAD_UNINT, align 4
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @NSEC_PER_USEC, align 4
  %31 = call i64 @assert_wait_timeout(i32 ptrtoint (void (i64)* @mutex_pause to i32), i32 %28, i64 %29, i32 %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @THREAD_WAITING, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %38 = call i64 @thread_block(i32 %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @THREAD_TIMED_OUT, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  ret void
}

declare dso_local i64 @assert_wait_timeout(i32, i32, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
