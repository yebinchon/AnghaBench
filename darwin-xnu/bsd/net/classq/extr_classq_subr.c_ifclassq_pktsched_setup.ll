; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_pktsched_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_pktsched_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@QP_MBUF = common dso_local global i32 0, align 4
@IFEF_TXSTART = common dso_local global i32 0, align 4
@ifclassq_sched_fq_codel = common dso_local global i32 0, align 4
@PKTSCHEDT_FQ_CODEL = common dso_local global i32 0, align 4
@PKTSCHEDT_TCQ = common dso_local global i32 0, align 4
@PKTSCHEDT_QFQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifclassq_pktsched_setup(%struct.ifclassq* %0) #0 {
  %2 = alloca %struct.ifclassq*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %2, align 8
  %6 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %7 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %6, i32 0, i32 1
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load i32, i32* @QP_MBUF, align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %11 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFEF_TXSTART, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %69 [
    i32 130, label %21
    i32 128, label %41
    i32 129, label %61
  ]

21:                                               ; preds = %1
  %22 = load i32, i32* @ifclassq_sched_fq_codel, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %26 = load i32, i32* @PKTSCHEDT_FQ_CODEL, align 4
  %27 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %28 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @pktsched_setup(%struct.ifclassq* %25, i32 %26, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %40

32:                                               ; preds = %21
  %33 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %34 = load i32, i32* @PKTSCHEDT_TCQ, align 4
  %35 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %36 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @pktsched_setup(%struct.ifclassq* %33, i32 %34, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %32, %24
  br label %71

41:                                               ; preds = %1
  %42 = load i32, i32* @ifclassq_sched_fq_codel, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %46 = load i32, i32* @PKTSCHEDT_FQ_CODEL, align 4
  %47 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %48 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @pktsched_setup(%struct.ifclassq* %45, i32 %46, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %60

52:                                               ; preds = %41
  %53 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %54 = load i32, i32* @PKTSCHEDT_QFQ, align 4
  %55 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %56 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @pktsched_setup(%struct.ifclassq* %53, i32 %54, i32 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %44
  br label %71

61:                                               ; preds = %1
  %62 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %63 = load i32, i32* @PKTSCHEDT_FQ_CODEL, align 4
  %64 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %65 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @pktsched_setup(%struct.ifclassq* %62, i32 %63, i32 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %71

69:                                               ; preds = %1
  %70 = call i32 @VERIFY(i32 0)
  br label %71

71:                                               ; preds = %69, %61, %60, %40
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @pktsched_setup(%struct.ifclassq*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
