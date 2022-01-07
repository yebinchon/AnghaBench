; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_slot_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_slot_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i64 }
%struct.qfq_group = type { i64, i64, i64, i32, %struct.qfq_class** }
%struct.qfq_class = type { %struct.qfq_class*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_if*, %struct.qfq_group*, %struct.qfq_class*)* @qfq_slot_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_slot_remove(%struct.qfq_if* %0, %struct.qfq_group* %1, %struct.qfq_class* %2) #0 {
  %4 = alloca %struct.qfq_if*, align 8
  %5 = alloca %struct.qfq_group*, align 8
  %6 = alloca %struct.qfq_class*, align 8
  %7 = alloca %struct.qfq_class**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.qfq_if* %0, %struct.qfq_if** %4, align 8
  store %struct.qfq_group* %1, %struct.qfq_group** %5, align 8
  store %struct.qfq_class* %2, %struct.qfq_class** %6, align 8
  %11 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %12 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %15 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @qfq_round_down(i32 %13, i64 %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %20 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  %23 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %24 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = lshr i64 %22, %25
  store i64 %26, i64* %9, align 8
  %27 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %28 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %29, %30
  %32 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %33 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = urem i64 %31, %34
  store i64 %35, i64* %8, align 8
  %36 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %37 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %36, i32 0, i32 4
  %38 = load %struct.qfq_class**, %struct.qfq_class*** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %38, i64 %39
  store %struct.qfq_class** %40, %struct.qfq_class*** %7, align 8
  br label %41

41:                                               ; preds = %52, %3
  %42 = load %struct.qfq_class**, %struct.qfq_class*** %7, align 8
  %43 = load %struct.qfq_class*, %struct.qfq_class** %42, align 8
  %44 = icmp ne %struct.qfq_class* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.qfq_class**, %struct.qfq_class*** %7, align 8
  %47 = load %struct.qfq_class*, %struct.qfq_class** %46, align 8
  %48 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %49 = icmp ne %struct.qfq_class* %47, %48
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i1 [ false, %41 ], [ %49, %45 ]
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = load %struct.qfq_class**, %struct.qfq_class*** %7, align 8
  %54 = load %struct.qfq_class*, %struct.qfq_class** %53, align 8
  %55 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %54, i32 0, i32 0
  store %struct.qfq_class** %55, %struct.qfq_class*** %7, align 8
  br label %41

56:                                               ; preds = %50
  %57 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %58 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %57, i32 0, i32 0
  %59 = load %struct.qfq_class*, %struct.qfq_class** %58, align 8
  %60 = load %struct.qfq_class**, %struct.qfq_class*** %7, align 8
  store %struct.qfq_class* %59, %struct.qfq_class** %60, align 8
  %61 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %62 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %61, i32 0, i32 4
  %63 = load %struct.qfq_class**, %struct.qfq_class*** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %63, i64 %64
  %66 = load %struct.qfq_class*, %struct.qfq_class** %65, align 8
  %67 = icmp ne %struct.qfq_class* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %56
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %71 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %70, i32 0, i32 3
  %72 = call i32 @pktsched_bit_clr(i64 %69, i32* %71)
  br label %73

73:                                               ; preds = %68, %56
  ret void
}

declare dso_local i64 @qfq_round_down(i32, i64) #1

declare dso_local i32 @pktsched_bit_clr(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
