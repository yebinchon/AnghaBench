; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_in_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_in_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64 }
%struct.waitq_link = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_in_set(%struct.waitq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.waitq*, align 8
  %4 = alloca %struct.waitq_link*, align 8
  %5 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %3, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.waitq*, %struct.waitq** %3, align 8
  %8 = call i64 @waitq_irq_safe(%struct.waitq* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.waitq*, %struct.waitq** %3, align 8
  %14 = call i32 @waitq_lock(%struct.waitq* %13)
  %15 = load %struct.waitq*, %struct.waitq** %3, align 8
  %16 = getelementptr inbounds %struct.waitq, %struct.waitq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %35

20:                                               ; preds = %12
  %21 = load %struct.waitq*, %struct.waitq** %3, align 8
  %22 = getelementptr inbounds %struct.waitq, %struct.waitq* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.waitq_link* @wql_get_link(i64 %23)
  store %struct.waitq_link* %24, %struct.waitq_link** %4, align 8
  %25 = load %struct.waitq_link*, %struct.waitq_link** %4, align 8
  %26 = icmp ne %struct.waitq_link* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.waitq_link*, %struct.waitq_link** %4, align 8
  %30 = call i32 @wql_put_link(%struct.waitq_link* %29)
  br label %34

31:                                               ; preds = %20
  %32 = load %struct.waitq*, %struct.waitq** %3, align 8
  %33 = getelementptr inbounds %struct.waitq, %struct.waitq* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %27
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.waitq*, %struct.waitq** %3, align 8
  %37 = call i32 @waitq_unlock(%struct.waitq* %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local %struct.waitq_link* @wql_get_link(i64) #1

declare dso_local i32 @wql_put_link(%struct.waitq_link*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
