; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_mqueue_process_prepost_receive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_mqueue_process_prepost_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.waitq_set = type { i32 }
%struct.TYPE_2__ = type { i32 }

@WQ_ITERATE_INVALIDATE_CONTINUE = common dso_local global i32 0, align 4
@WQ_ITERATE_BREAK_KEEP_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.waitq*, %struct.waitq_set*)* @mqueue_process_prepost_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqueue_process_prepost_receive(i8* %0, %struct.waitq* %1, %struct.waitq_set* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.waitq*, align 8
  %7 = alloca %struct.waitq_set*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.TYPE_2__**, align 8
  store i8* %0, i8** %5, align 8
  store %struct.waitq* %1, %struct.waitq** %6, align 8
  store %struct.waitq_set* %2, %struct.waitq_set** %7, align 8
  %10 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %11 = load %struct.waitq*, %struct.waitq** %6, align 8
  %12 = bitcast %struct.waitq* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i64 @ipc_kmsg_queue_empty(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @WQ_ITERATE_INVALIDATE_CONTINUE, align 4
  store i32 %18, i32* %4, align 4
  br label %29

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_2__**
  store %struct.TYPE_2__** %21, %struct.TYPE_2__*** %9, align 8
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  %23 = icmp ne %struct.TYPE_2__** %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %26, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* @WQ_ITERATE_BREAK_KEEP_LOCKED, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %17
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @ipc_kmsg_queue_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
