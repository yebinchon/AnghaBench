; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_qflush.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ifclassq }
%struct.ifclassq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_qflush(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifclassq*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  store %struct.ifclassq* %7, %struct.ifclassq** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %12 = call i32 @IFCQ_LOCK(%struct.ifclassq* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %15 = call i64 @IFCQ_IS_ENABLED(%struct.ifclassq* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %19 = call i32 @IFCQ_PURGE(%struct.ifclassq* %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %22 = call i32 @IFCQ_IS_EMPTY(%struct.ifclassq* %21)
  %23 = call i32 @VERIFY(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %28 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %27)
  br label %29

29:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @IFCQ_LOCK(%struct.ifclassq*) #1

declare dso_local i64 @IFCQ_IS_ENABLED(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_PURGE(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IFCQ_IS_EMPTY(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_UNLOCK(%struct.ifclassq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
