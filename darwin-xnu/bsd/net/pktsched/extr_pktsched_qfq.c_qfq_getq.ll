; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_getq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_getq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_class = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_class*, i32*)* @qfq_getq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_getq(%struct.qfq_class* %0, i32* %1) #0 {
  %3 = alloca %struct.qfq_class*, align 8
  %4 = alloca i32*, align 8
  store %struct.qfq_class* %0, %struct.qfq_class** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.qfq_class*, %struct.qfq_class** %3, align 8
  %6 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @IFCQ_LOCK_ASSERT_HELD(i32 %9)
  %11 = load %struct.qfq_class*, %struct.qfq_class** %3, align 8
  %12 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %11, i32 0, i32 0
  %13 = call i64 @q_is_sfb(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.qfq_class*, %struct.qfq_class** %3, align 8
  %17 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.qfq_class*, %struct.qfq_class** %3, align 8
  %22 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.qfq_class*, %struct.qfq_class** %3, align 8
  %25 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %24, i32 0, i32 0
  %26 = load i32*, i32** %4, align 8
  call void @sfb_getq(i32* %23, i32* %25, i32* %26)
  br label %35

27:                                               ; preds = %15, %2
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.qfq_class*, %struct.qfq_class** %3, align 8
  %30 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %29, i32 0, i32 0
  %31 = call i32 @qptype(i32* %30)
  %32 = load %struct.qfq_class*, %struct.qfq_class** %3, align 8
  %33 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %32, i32 0, i32 0
  %34 = call i32 @_getq(i32* %33)
  call void @pktsched_pkt_encap(i32* %28, i32 %31, i32 %34)
  br label %35

35:                                               ; preds = %27, %20
  ret void
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(i32) #1

declare dso_local i64 @q_is_sfb(i32*) #1

declare dso_local void @sfb_getq(i32*, i32*, i32*) #1

declare dso_local void @pktsched_pkt_encap(i32*, i32, i32) #1

declare dso_local i32 @qptype(i32*) #1

declare dso_local i32 @_getq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
