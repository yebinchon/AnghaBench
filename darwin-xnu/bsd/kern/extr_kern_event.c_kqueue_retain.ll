; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_retain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_retain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32 }
%struct.kqworkloop = type { i32 }

@KQ_DYNAMIC = common dso_local global i32 0, align 4
@KQ_WORKLOOP_RETAINS_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"kq(%p) retain overflow\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"kq(%p) resurrection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqueue*)* @kqueue_retain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqueue_retain(%struct.kqueue* %0) #0 {
  %2 = alloca %struct.kqueue*, align 8
  %3 = alloca %struct.kqworkloop*, align 8
  %4 = alloca i64, align 8
  store %struct.kqueue* %0, %struct.kqueue** %2, align 8
  %5 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %6 = bitcast %struct.kqueue* %5 to %struct.kqworkloop*
  store %struct.kqworkloop* %6, %struct.kqworkloop** %3, align 8
  %7 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %8 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @KQ_DYNAMIC, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %16 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %15, i32 0, i32 0
  %17 = call i64 @OSIncrementAtomic(i32* %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @KQ_WORKLOOP_RETAINS_MAX, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %23 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.kqueue* %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %29 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.kqueue* %28)
  br label %30

30:                                               ; preds = %13, %27, %24
  ret void
}

declare dso_local i64 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @panic(i8*, %struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
