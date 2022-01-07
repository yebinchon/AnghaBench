; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched.c_pktsched_getqstats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched.c_pktsched_getqstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i32 }
%struct.if_ifclassq_stats = type { i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pktsched_getqstats(%struct.ifclassq* %0, i32 %1, %struct.if_ifclassq_stats* %2) #0 {
  %4 = alloca %struct.ifclassq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.if_ifclassq_stats*, align 8
  %7 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.if_ifclassq_stats* %2, %struct.if_ifclassq_stats** %6, align 8
  %8 = load %struct.ifclassq*, %struct.ifclassq** %4, align 8
  %9 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %8)
  %10 = load %struct.ifclassq*, %struct.ifclassq** %4, align 8
  %11 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %28 [
    i32 128, label %13
    i32 129, label %18
    i32 130, label %23
  ]

13:                                               ; preds = %3
  %14 = load %struct.ifclassq*, %struct.ifclassq** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %6, align 8
  %17 = call i32 @tcq_getqstats_ifclassq(%struct.ifclassq* %14, i32 %15, %struct.if_ifclassq_stats* %16)
  store i32 %17, i32* %7, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.ifclassq*, %struct.ifclassq** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %6, align 8
  %22 = call i32 @qfq_getqstats_ifclassq(%struct.ifclassq* %19, i32 %20, %struct.if_ifclassq_stats* %21)
  store i32 %22, i32* %7, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.ifclassq*, %struct.ifclassq** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %6, align 8
  %27 = call i32 @fq_if_getqstats_ifclassq(%struct.ifclassq* %24, i32 %25, %struct.if_ifclassq_stats* %26)
  store i32 %27, i32* %7, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %23, %18, %13
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @tcq_getqstats_ifclassq(%struct.ifclassq*, i32, %struct.if_ifclassq_stats*) #1

declare dso_local i32 @qfq_getqstats_ifclassq(%struct.ifclassq*, i32, %struct.if_ifclassq_stats*) #1

declare dso_local i32 @fq_if_getqstats_ifclassq(%struct.ifclassq*, i32, %struct.if_ifclassq_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
