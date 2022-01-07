; ModuleID = '/home/carl/AnghaBench/ccv/serve/extr_async.c_main_async_init.c'
source_filename = "/home/carl/AnghaBench/ccv/serve/extr_async.c_main_async_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@async_queue_semaphore = common dso_local global i32 0, align 4
@queue_length = common dso_local global i32 0, align 4
@async_queue = common dso_local global i32* null, align 8
@main_async = common dso_local global i32 0, align 4
@main_async_drain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_async_init() #0 {
  %1 = call i32 @dispatch_semaphore_create(i32 1)
  store i32 %1, i32* @async_queue_semaphore, align 4
  %2 = load i32, i32* @queue_length, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 4, %3
  %5 = trunc i64 %4 to i32
  %6 = call i64 @malloc(i32 %5)
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** @async_queue, align 8
  %8 = load i32, i32* @main_async_drain, align 4
  %9 = call i32 @ev_async_init(i32* @main_async, i32 %8)
  ret void
}

declare dso_local i32 @dispatch_semaphore_create(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ev_async_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
