; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched.c_pktsched_teardown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched.c_pktsched_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i32, i32, i32 }

@IFCQF_ENABLED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pktsched_teardown(%struct.ifclassq* %0) #0 {
  %2 = alloca %struct.ifclassq*, align 8
  %3 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %5 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %4)
  %6 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %7 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @if_qflush(i32 %8, i32 1)
  %10 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %11 = call i32 @IFCQ_IS_EMPTY(%struct.ifclassq* %10)
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load i32, i32* @IFCQF_ENABLED, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %16 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %20 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %32 [
    i32 130, label %22
    i32 128, label %23
    i32 129, label %26
    i32 131, label %29
  ]

22:                                               ; preds = %1
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %25 = call i32 @tcq_teardown_ifclassq(%struct.ifclassq* %24)
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %1
  %27 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %28 = call i32 @qfq_teardown_ifclassq(%struct.ifclassq* %27)
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %1
  %30 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %31 = call i32 @fq_if_teardown_ifclassq(%struct.ifclassq* %30)
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %29, %26, %23, %22
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @if_qflush(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IFCQ_IS_EMPTY(%struct.ifclassq*) #1

declare dso_local i32 @tcq_teardown_ifclassq(%struct.ifclassq*) #1

declare dso_local i32 @qfq_teardown_ifclassq(%struct.ifclassq*) #1

declare dso_local i32 @fq_if_teardown_ifclassq(%struct.ifclassq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
