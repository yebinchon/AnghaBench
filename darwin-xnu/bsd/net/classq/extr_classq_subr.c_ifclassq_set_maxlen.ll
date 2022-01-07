; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_set_maxlen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_set_maxlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i32 }

@if_sndq_maxlen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ifclassq_set_maxlen(%struct.ifclassq* %0, i32 %1) #0 {
  %3 = alloca %struct.ifclassq*, align 8
  %4 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ifclassq*, %struct.ifclassq** %3, align 8
  %6 = call i32 @IFCQ_LOCK(%struct.ifclassq* %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @if_sndq_maxlen, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.ifclassq*, %struct.ifclassq** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @IFCQ_SET_MAXLEN(%struct.ifclassq* %12, i32 %13)
  %15 = load %struct.ifclassq*, %struct.ifclassq** %3, align 8
  %16 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %15)
  ret void
}

declare dso_local i32 @IFCQ_LOCK(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_SET_MAXLEN(%struct.ifclassq*, i32) #1

declare dso_local i32 @IFCQ_UNLOCK(%struct.ifclassq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
