; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_purge_sc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_purge_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcq_if = type { %struct.ifclassq* }
%struct.ifclassq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }

@MBUF_SC_UNSPEC = common dso_local global i64 0, align 8
@IFCQ_SC_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcq_if*, %struct.TYPE_5__*)* @tcq_purge_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcq_purge_sc(%struct.tcq_if* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.tcq_if*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.ifclassq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tcq_if* %0, %struct.tcq_if** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.tcq_if*, %struct.tcq_if** %3, align 8
  %10 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %9, i32 0, i32 0
  %11 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  store %struct.ifclassq* %11, %struct.ifclassq** %5, align 8
  %12 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %13 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MBUF_SC_UNSPEC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @MBUF_VALID_SC(i64 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %19, %2
  %26 = phi i1 [ true, %2 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @VERIFY(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @VERIFY(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MBUF_SC_UNSPEC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %25
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @MBUF_SCIDX(i64 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @IFCQ_SC_MAX, align 8
  %47 = icmp ult i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @VERIFY(i32 %48)
  %50 = load %struct.tcq_if*, %struct.tcq_if** %3, align 8
  %51 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %52 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = call i32 @tcq_purgeq(%struct.tcq_if* %50, i32 %57, i32 %60, i64* %62, i64* %64)
  br label %102

66:                                               ; preds = %25
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  store i64 0, i64* %6, align 8
  br label %71

71:                                               ; preds = %98, %66
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @IFCQ_SC_MAX, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load %struct.tcq_if*, %struct.tcq_if** %3, align 8
  %77 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %78 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @tcq_purgeq(%struct.tcq_if* %76, i32 %83, i32 %86, i64* %7, i64* %8)
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, %93
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %75
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %6, align 8
  br label %71

101:                                              ; preds = %71
  br label %102

102:                                              ; preds = %101, %40
  ret void
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @MBUF_VALID_SC(i64) #1

declare dso_local i64 @MBUF_SCIDX(i64) #1

declare dso_local i32 @tcq_purgeq(%struct.tcq_if*, i32, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
