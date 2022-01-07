; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wql_poison.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wql_poison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_table = type { i32 }
%struct.lt_elem = type { i32 }
%struct.waitq_link = type { i32, i32, i64, i32, i64, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@WQL_WQS_POISON = common dso_local global i32 0, align 4
@WQL_LINK_POISON = common dso_local global i8* null, align 8
@THREAD_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_table*, %struct.lt_elem*)* @wql_poison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wql_poison(%struct.link_table* %0, %struct.lt_elem* %1) #0 {
  %3 = alloca %struct.link_table*, align 8
  %4 = alloca %struct.lt_elem*, align 8
  %5 = alloca %struct.waitq_link*, align 8
  store %struct.link_table* %0, %struct.link_table** %3, align 8
  store %struct.lt_elem* %1, %struct.lt_elem** %4, align 8
  %6 = load %struct.lt_elem*, %struct.lt_elem** %4, align 8
  %7 = bitcast %struct.lt_elem* %6 to %struct.waitq_link*
  store %struct.waitq_link* %7, %struct.waitq_link** %5, align 8
  %8 = load %struct.link_table*, %struct.link_table** %3, align 8
  %9 = load %struct.waitq_link*, %struct.waitq_link** %5, align 8
  %10 = call i32 @wql_type(%struct.waitq_link* %9)
  switch i32 %10, label %25 [
    i32 128, label %11
    i32 129, label %16
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @WQL_WQS_POISON, align 4
  %13 = load %struct.waitq_link*, %struct.waitq_link** %5, align 8
  %14 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  br label %26

16:                                               ; preds = %2
  %17 = load i8*, i8** @WQL_LINK_POISON, align 8
  %18 = load %struct.waitq_link*, %struct.waitq_link** %5, align 8
  %19 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load i8*, i8** @WQL_LINK_POISON, align 8
  %22 = load %struct.waitq_link*, %struct.waitq_link** %5, align 8
  %23 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %16, %11
  ret void
}

declare dso_local i32 @wql_type(%struct.waitq_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
