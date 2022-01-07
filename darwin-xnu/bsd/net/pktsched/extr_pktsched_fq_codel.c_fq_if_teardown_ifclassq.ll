; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_teardown_ifclassq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_teardown_ifclassq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i64, i32* }

@PKTSCHEDT_FQ_CODEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fq_if_teardown_ifclassq(%struct.ifclassq* %0) #0 {
  %2 = alloca %struct.ifclassq*, align 8
  %3 = alloca i32*, align 8
  store %struct.ifclassq* %0, %struct.ifclassq** %2, align 8
  %4 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %5 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %8 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %13 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PKTSCHEDT_FQ_CODEL, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ false, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @fq_if_destroy(i32* %21)
  %23 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %24 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %26 = call i32 @ifclassq_detach(%struct.ifclassq* %25)
  ret i32 %26
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @fq_if_destroy(i32*) #1

declare dso_local i32 @ifclassq_detach(%struct.ifclassq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
