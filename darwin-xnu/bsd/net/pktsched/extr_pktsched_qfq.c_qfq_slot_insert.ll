; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_slot_insert.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_slot_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i64 }
%struct.qfq_group = type { i64, i64, i64, i32, %struct.qfq_class** }
%struct.qfq_class = type { %struct.qfq_class* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_if*, %struct.qfq_group*, %struct.qfq_class*, i64)* @qfq_slot_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_slot_insert(%struct.qfq_if* %0, %struct.qfq_group* %1, %struct.qfq_class* %2, i64 %3) #0 {
  %5 = alloca %struct.qfq_if*, align 8
  %6 = alloca %struct.qfq_group*, align 8
  %7 = alloca %struct.qfq_class*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.qfq_if* %0, %struct.qfq_if** %5, align 8
  store %struct.qfq_group* %1, %struct.qfq_group** %6, align 8
  store %struct.qfq_class* %2, %struct.qfq_class** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %13 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  %16 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %17 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = lshr i64 %15, %18
  store i64 %19, i64* %9, align 8
  %20 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %21 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %22, %23
  %25 = load %struct.qfq_if*, %struct.qfq_if** %5, align 8
  %26 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = urem i64 %24, %27
  store i64 %28, i64* %10, align 8
  %29 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %30 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %29, i32 0, i32 4
  %31 = load %struct.qfq_class**, %struct.qfq_class*** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %31, i64 %32
  %34 = load %struct.qfq_class*, %struct.qfq_class** %33, align 8
  %35 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %36 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %35, i32 0, i32 0
  store %struct.qfq_class* %34, %struct.qfq_class** %36, align 8
  %37 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %38 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %39 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %38, i32 0, i32 4
  %40 = load %struct.qfq_class**, %struct.qfq_class*** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %40, i64 %41
  store %struct.qfq_class* %37, %struct.qfq_class** %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %45 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %44, i32 0, i32 3
  %46 = call i32 @pktsched_bit_set(i64 %43, i32* %45)
  ret void
}

declare dso_local i32 @pktsched_bit_set(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
