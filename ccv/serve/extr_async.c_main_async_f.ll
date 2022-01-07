; ModuleID = '/home/carl/AnghaBench/ccv/serve/extr_async.c_main_async_f.c'
source_filename = "/home/carl/AnghaBench/ccv/serve/extr_async.c_main_async_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { void (i8*)*, i8* }

@async_queue_semaphore = common dso_local global i32 0, align 4
@DISPATCH_TIME_FOREVER = common dso_local global i32 0, align 4
@queue_pending = common dso_local global i32 0, align 4
@queue_length = common dso_local global i32 0, align 4
@async_queue = common dso_local global %struct.TYPE_4__* null, align 8
@queue_position = common dso_local global i64 0, align 8
@EV_DEFAULT_ = common dso_local global i32 0, align 4
@main_async = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_async_f(i8* %0, void (i8*)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca void (i8*)*, align 8
  store i8* %0, i8** %3, align 8
  store void (i8*)* %1, void (i8*)** %4, align 8
  %5 = load void (i8*)*, void (i8*)** %4, align 8
  %6 = call i32 @assert(void (i8*)* %5)
  %7 = load i32, i32* @async_queue_semaphore, align 4
  %8 = load i32, i32* @DISPATCH_TIME_FOREVER, align 4
  %9 = call i32 @dispatch_semaphore_wait(i32 %7, i32 %8)
  %10 = load i32, i32* @queue_pending, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @queue_pending, align 4
  %12 = load i32, i32* @queue_pending, align 4
  %13 = load i32, i32* @queue_length, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32, i32* @queue_length, align 4
  %17 = mul nsw i32 %16, 3
  %18 = add nsw i32 %17, 1
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* @queue_length, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @async_queue, align 8
  %21 = load i32, i32* @queue_length, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 16, %22
  %24 = trunc i64 %23 to i32
  %25 = call i64 @realloc(%struct.TYPE_4__* %20, i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** @async_queue, align 8
  %27 = load i32, i32* @queue_pending, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* @queue_position, align 8
  br label %30

30:                                               ; preds = %15, %2
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @async_queue, align 8
  %33 = load i64, i64* @queue_position, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i8* %31, i8** %35, align 8
  %36 = load void (i8*)*, void (i8*)** %4, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @async_queue, align 8
  %38 = load i64, i64* @queue_position, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store void (i8*)* %36, void (i8*)** %40, align 8
  %41 = load i64, i64* @queue_position, align 8
  %42 = add i64 %41, 1
  %43 = load i32, i32* @queue_length, align 4
  %44 = sext i32 %43 to i64
  %45 = urem i64 %42, %44
  store i64 %45, i64* @queue_position, align 8
  %46 = load i32, i32* @async_queue_semaphore, align 4
  %47 = call i32 @dispatch_semaphore_signal(i32 %46)
  %48 = load i32, i32* @EV_DEFAULT_, align 4
  %49 = load i32, i32* @main_async, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @ev_async_send(i32 %50)
  ret void
}

declare dso_local i32 @assert(void (i8*)*) #1

declare dso_local i32 @dispatch_semaphore_wait(i32, i32) #1

declare dso_local i64 @realloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dispatch_semaphore_signal(i32) #1

declare dso_local i32 @ev_async_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
