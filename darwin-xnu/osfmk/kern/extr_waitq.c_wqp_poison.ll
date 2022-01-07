; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wqp_poison.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wqp_poison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_table = type { i32 }
%struct.lt_elem = type { i32 }
%struct.wq_prepost = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@WQP_POST_POISON = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_table*, %struct.lt_elem*)* @wqp_poison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wqp_poison(%struct.link_table* %0, %struct.lt_elem* %1) #0 {
  %3 = alloca %struct.link_table*, align 8
  %4 = alloca %struct.lt_elem*, align 8
  %5 = alloca %struct.wq_prepost*, align 8
  store %struct.link_table* %0, %struct.link_table** %3, align 8
  store %struct.lt_elem* %1, %struct.lt_elem** %4, align 8
  %6 = load %struct.lt_elem*, %struct.lt_elem** %4, align 8
  %7 = bitcast %struct.lt_elem* %6 to %struct.wq_prepost*
  store %struct.wq_prepost* %7, %struct.wq_prepost** %5, align 8
  %8 = load %struct.link_table*, %struct.link_table** %3, align 8
  %9 = load %struct.wq_prepost*, %struct.wq_prepost** %5, align 8
  %10 = call i32 @wqp_type(%struct.wq_prepost* %9)
  switch i32 %10, label %21 [
    i32 128, label %11
    i32 129, label %12
  ]

11:                                               ; preds = %2
  br label %22

12:                                               ; preds = %2
  %13 = load i8*, i8** @WQP_POST_POISON, align 8
  %14 = load %struct.wq_prepost*, %struct.wq_prepost** %5, align 8
  %15 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i8* %13, i8** %16, align 8
  %17 = load i8*, i8** @WQP_POST_POISON, align 8
  %18 = load %struct.wq_prepost*, %struct.wq_prepost** %5, align 8
  %19 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %12, %11
  ret void
}

declare dso_local i32 @wqp_type(%struct.wq_prepost*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
