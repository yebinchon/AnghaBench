; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_enqueue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcq_if = type { %struct.tcq_class*, %struct.ifclassq* }
%struct.ifclassq = type { i32 }
%struct.tcq_class = type { i32, i32, %struct.tcq_if* }
%struct.TYPE_5__ = type { i64 }
%struct.pf_mtag = type { i32 }

@CLASSQEQ_DROP = common dso_local global i32 0, align 4
@CLASSQEQ_SUCCESS_FC = common dso_local global i32 0, align 4
@CLASSQEQ_DROP_FC = common dso_local global i32 0, align 4
@CLASSQEQ_DROP_SP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcq_enqueue(%struct.tcq_if* %0, %struct.tcq_class* %1, %struct.TYPE_5__* %2, %struct.pf_mtag* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcq_if*, align 8
  %7 = alloca %struct.tcq_class*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.pf_mtag*, align 8
  %10 = alloca %struct.ifclassq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tcq_if* %0, %struct.tcq_if** %6, align 8
  store %struct.tcq_class* %1, %struct.tcq_class** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store %struct.pf_mtag* %3, %struct.pf_mtag** %9, align 8
  %13 = load %struct.tcq_if*, %struct.tcq_if** %6, align 8
  %14 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %13, i32 0, i32 1
  %15 = load %struct.ifclassq*, %struct.ifclassq** %14, align 8
  store %struct.ifclassq* %15, %struct.ifclassq** %10, align 8
  %16 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %17 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %16)
  %18 = load %struct.tcq_class*, %struct.tcq_class** %7, align 8
  %19 = icmp eq %struct.tcq_class* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.tcq_class*, %struct.tcq_class** %7, align 8
  %22 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %21, i32 0, i32 2
  %23 = load %struct.tcq_if*, %struct.tcq_if** %22, align 8
  %24 = load %struct.tcq_if*, %struct.tcq_if** %6, align 8
  %25 = icmp eq %struct.tcq_if* %23, %24
  br label %26

26:                                               ; preds = %20, %4
  %27 = phi i1 [ true, %4 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @VERIFY(i32 %28)
  %30 = load %struct.tcq_class*, %struct.tcq_class** %7, align 8
  %31 = icmp eq %struct.tcq_class* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load %struct.tcq_if*, %struct.tcq_if** %6, align 8
  %34 = call %struct.tcq_class* @tcq_clh_to_clp(%struct.tcq_if* %33, i32 0)
  store %struct.tcq_class* %34, %struct.tcq_class** %7, align 8
  %35 = load %struct.tcq_class*, %struct.tcq_class** %7, align 8
  %36 = icmp eq %struct.tcq_class* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.tcq_if*, %struct.tcq_if** %6, align 8
  %39 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %38, i32 0, i32 0
  %40 = load %struct.tcq_class*, %struct.tcq_class** %39, align 8
  store %struct.tcq_class* %40, %struct.tcq_class** %7, align 8
  %41 = load %struct.tcq_class*, %struct.tcq_class** %7, align 8
  %42 = icmp eq %struct.tcq_class* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %45 = call i32 @IFCQ_CONVERT_LOCK(%struct.ifclassq* %44)
  %46 = load i32, i32* @CLASSQEQ_DROP, align 4
  store i32 %46, i32* %5, align 4
  br label %102

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %32
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.tcq_class*, %struct.tcq_class** %7, align 8
  %54 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %53, i32 0, i32 1
  %55 = call i64 @qptype(i32* %54)
  %56 = icmp eq i64 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @VERIFY(i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = call i32 @pktsched_get_pkt_len(%struct.TYPE_5__* %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.tcq_class*, %struct.tcq_class** %7, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = load %struct.pf_mtag*, %struct.pf_mtag** %9, align 8
  %64 = call i32 @tcq_addq(%struct.tcq_class* %61, %struct.TYPE_5__* %62, %struct.pf_mtag* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %49
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @CLASSQEQ_SUCCESS_FC, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @CLASSQEQ_DROP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @CLASSQEQ_DROP_FC, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @CLASSQEQ_DROP_SP, align 4
  %82 = icmp eq i32 %80, %81
  br label %83

83:                                               ; preds = %79, %75, %71
  %84 = phi i1 [ true, %75 ], [ true, %71 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @VERIFY(i32 %85)
  %87 = load %struct.tcq_class*, %struct.tcq_class** %7, align 8
  %88 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %87, i32 0, i32 0
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @PKTCNTR_ADD(i32* %88, i32 1, i32 %89)
  %91 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @IFCQ_DROP_ADD(%struct.ifclassq* %91, i32 1, i32 %92)
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %5, align 4
  br label %102

95:                                               ; preds = %67, %49
  %96 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %97 = call i32 @IFCQ_INC_LEN(%struct.ifclassq* %96)
  %98 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @IFCQ_INC_BYTES(%struct.ifclassq* %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %95, %83, %43
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.tcq_class* @tcq_clh_to_clp(%struct.tcq_if*, i32) #1

declare dso_local i32 @IFCQ_CONVERT_LOCK(%struct.ifclassq*) #1

declare dso_local i64 @qptype(i32*) #1

declare dso_local i32 @pktsched_get_pkt_len(%struct.TYPE_5__*) #1

declare dso_local i32 @tcq_addq(%struct.tcq_class*, %struct.TYPE_5__*, %struct.pf_mtag*) #1

declare dso_local i32 @PKTCNTR_ADD(i32*, i32, i32) #1

declare dso_local i32 @IFCQ_DROP_ADD(%struct.ifclassq*, i32, i32) #1

declare dso_local i32 @IFCQ_INC_LEN(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_INC_BYTES(%struct.ifclassq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
