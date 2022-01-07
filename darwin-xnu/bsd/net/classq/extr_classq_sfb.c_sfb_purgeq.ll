; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_purgeq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_purgeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfb_purgeq(%struct.sfb* %0, i32* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.sfb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sfb* %0, %struct.sfb** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.sfb*, %struct.sfb** %6, align 8
  %15 = getelementptr inbounds %struct.sfb, %struct.sfb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @IFCQ_CONVERT_LOCK(i32* %17)
  br label %19

19:                                               ; preds = %26, %5
  %20 = load %struct.sfb*, %struct.sfb** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i32* @sfb_getq_flow(%struct.sfb* %20, i32* %21, i64 %22, i32 %23, i32* %13)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i64, i64* %11, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %11, align 8
  %29 = call i64 @pktsched_get_pkt_len(i32* %13)
  %30 = load i64, i64* %12, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %12, align 8
  %32 = call i32 @pktsched_free_pkt(i32* %13)
  br label %19

33:                                               ; preds = %19
  %34 = load i64*, i64** %9, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* %11, align 8
  %38 = load i64*, i64** %9, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i64*, i64** %10, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %12, align 8
  %44 = load i64*, i64** %10, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  ret void
}

declare dso_local i32 @IFCQ_CONVERT_LOCK(i32*) #1

declare dso_local i32* @sfb_getq_flow(%struct.sfb*, i32*, i64, i32, i32*) #1

declare dso_local i64 @pktsched_get_pkt_len(i32*) #1

declare dso_local i32 @pktsched_free_pkt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
