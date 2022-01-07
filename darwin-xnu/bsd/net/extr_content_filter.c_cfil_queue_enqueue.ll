; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_queue_enqueue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_queue_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfil_queue = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfil_queue*, i32, i64)* @cfil_queue_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfil_queue_enqueue(%struct.cfil_queue* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.cfil_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.cfil_queue* %0, %struct.cfil_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.cfil_queue*, %struct.cfil_queue** %4, align 8
  %8 = call i32 @CFIL_QUEUE_VERIFY(%struct.cfil_queue* %7)
  %9 = load %struct.cfil_queue*, %struct.cfil_queue** %4, align 8
  %10 = getelementptr inbounds %struct.cfil_queue, %struct.cfil_queue* %9, i32 0, i32 1
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @MBUFQ_ENQUEUE(i32* %10, i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.cfil_queue*, %struct.cfil_queue** %4, align 8
  %15 = getelementptr inbounds %struct.cfil_queue, %struct.cfil_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load %struct.cfil_queue*, %struct.cfil_queue** %4, align 8
  %19 = call i32 @CFIL_QUEUE_VERIFY(%struct.cfil_queue* %18)
  ret void
}

declare dso_local i32 @CFIL_QUEUE_VERIFY(%struct.cfil_queue*) #1

declare dso_local i32 @MBUFQ_ENQUEUE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
