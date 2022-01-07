; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_dequeue_cl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_dequeue_cl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcq_if = type { %struct.ifclassq* }
%struct.ifclassq = type { i32 }
%struct.tcq_class = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcq_if*, %struct.tcq_class*, i32, %struct.TYPE_5__*)* @tcq_dequeue_cl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcq_dequeue_cl(%struct.tcq_if* %0, %struct.tcq_class* %1, i32 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca %struct.tcq_if*, align 8
  %6 = alloca %struct.tcq_class*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.ifclassq*, align 8
  %10 = alloca i32, align 4
  store %struct.tcq_if* %0, %struct.tcq_if** %5, align 8
  store %struct.tcq_class* %1, %struct.tcq_class** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %11 = load %struct.tcq_if*, %struct.tcq_if** %5, align 8
  %12 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %11, i32 0, i32 0
  %13 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  store %struct.ifclassq* %13, %struct.ifclassq** %9, align 8
  %14 = load %struct.ifclassq*, %struct.ifclassq** %9, align 8
  %15 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %14)
  %16 = load %struct.tcq_class*, %struct.tcq_class** %6, align 8
  %17 = icmp eq %struct.tcq_class* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load %struct.tcq_if*, %struct.tcq_if** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @MBUF_SCIDX(i32 %20)
  %22 = call %struct.tcq_class* @tcq_clh_to_clp(%struct.tcq_if* %19, i32 %21)
  store %struct.tcq_class* %22, %struct.tcq_class** %6, align 8
  %23 = load %struct.tcq_class*, %struct.tcq_class** %6, align 8
  %24 = icmp eq %struct.tcq_class* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %76

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %4
  %30 = load %struct.tcq_class*, %struct.tcq_class** %6, align 8
  %31 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %30, i32 0, i32 2
  %32 = call i64 @qempty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %76

37:                                               ; preds = %29
  %38 = load %struct.ifclassq*, %struct.ifclassq** %9, align 8
  %39 = call i32 @IFCQ_IS_EMPTY(%struct.ifclassq* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @VERIFY(i32 %42)
  %44 = load %struct.tcq_class*, %struct.tcq_class** %6, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = call i32 @tcq_getq(%struct.tcq_class* %44, %struct.TYPE_5__* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %37
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = call i32 @pktsched_get_pkt_len(%struct.TYPE_5__* %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.ifclassq*, %struct.ifclassq** %9, align 8
  %55 = call i32 @IFCQ_DEC_LEN(%struct.ifclassq* %54)
  %56 = load %struct.ifclassq*, %struct.ifclassq** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @IFCQ_DEC_BYTES(%struct.ifclassq* %56, i32 %57)
  %59 = load %struct.tcq_class*, %struct.tcq_class** %6, align 8
  %60 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %59, i32 0, i32 2
  %61 = call i64 @qempty(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load %struct.tcq_class*, %struct.tcq_class** %6, align 8
  %65 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %51
  %69 = load %struct.tcq_class*, %struct.tcq_class** %6, align 8
  %70 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %69, i32 0, i32 0
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @PKTCNTR_ADD(i32* %70, i32 1, i32 %71)
  %73 = load %struct.ifclassq*, %struct.ifclassq** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @IFCQ_XMIT_ADD(%struct.ifclassq* %73, i32 1, i32 %74)
  br label %76

76:                                               ; preds = %25, %34, %68, %37
  ret void
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local %struct.tcq_class* @tcq_clh_to_clp(%struct.tcq_if*, i32) #1

declare dso_local i32 @MBUF_SCIDX(i32) #1

declare dso_local i64 @qempty(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IFCQ_IS_EMPTY(%struct.ifclassq*) #1

declare dso_local i32 @tcq_getq(%struct.tcq_class*, %struct.TYPE_5__*) #1

declare dso_local i32 @pktsched_get_pkt_len(%struct.TYPE_5__*) #1

declare dso_local i32 @IFCQ_DEC_LEN(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_DEC_BYTES(%struct.ifclassq*, i32) #1

declare dso_local i32 @PKTCNTR_ADD(i32*, i32, i32) #1

declare dso_local i32 @IFCQ_XMIT_ADD(%struct.ifclassq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
