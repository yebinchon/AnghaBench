; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_prepost_reserve_cb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_prepost_reserve_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.waitq_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WQL_WQS = common dso_local global i64 0, align 8
@WQ_ITERATE_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq*, i8*, %struct.waitq_link*)* @waitq_prepost_reserve_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitq_prepost_reserve_cb(%struct.waitq* %0, i8* %1, %struct.waitq_link* %2) #0 {
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.waitq_link*, align 8
  %7 = alloca i32*, align 8
  store %struct.waitq* %0, %struct.waitq** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.waitq_link* %2, %struct.waitq_link** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %7, align 8
  %10 = load %struct.waitq*, %struct.waitq** %4, align 8
  %11 = load %struct.waitq_link*, %struct.waitq_link** %6, align 8
  %12 = call i64 @wql_type(%struct.waitq_link* %11)
  %13 = load i64, i64* @WQL_WQS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.waitq_link*, %struct.waitq_link** %6, align 8
  %17 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @waitq_set_can_prepost(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 2
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %22, %15
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  ret i32 %28
}

declare dso_local i64 @wql_type(%struct.waitq_link*) #1

declare dso_local i64 @waitq_set_can_prepost(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
