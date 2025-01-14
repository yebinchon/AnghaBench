; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { %struct.ifclassq* }
%struct.ifclassq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qfq_destroy(%struct.qfq_if* %0) #0 {
  %2 = alloca %struct.qfq_if*, align 8
  %3 = alloca %struct.ifclassq*, align 8
  %4 = alloca i32, align 4
  store %struct.qfq_if* %0, %struct.qfq_if** %2, align 8
  %5 = load %struct.qfq_if*, %struct.qfq_if** %2, align 8
  %6 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %5, i32 0, i32 0
  %7 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  store %struct.ifclassq* %7, %struct.ifclassq** %3, align 8
  %8 = load %struct.ifclassq*, %struct.ifclassq** %3, align 8
  %9 = call i32 @IFCQ_LOCK(%struct.ifclassq* %8)
  %10 = load %struct.qfq_if*, %struct.qfq_if** %2, align 8
  %11 = call i32 @qfq_destroy_locked(%struct.qfq_if* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ifclassq*, %struct.ifclassq** %3, align 8
  %13 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %12)
  %14 = load i32, i32* %4, align 4
  ret i32 %14
}

declare dso_local i32 @IFCQ_LOCK(%struct.ifclassq*) #1

declare dso_local i32 @qfq_destroy_locked(%struct.qfq_if*) #1

declare dso_local i32 @IFCQ_UNLOCK(%struct.ifclassq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
