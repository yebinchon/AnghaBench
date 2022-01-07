; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_clh_to_clp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_clh_to_clp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_class = type { i32 }
%struct.qfq_if = type { i32, %struct.qfq_class**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qfq_class* (%struct.qfq_if*, i32)* @qfq_clh_to_clp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qfq_class* @qfq_clh_to_clp(%struct.qfq_if* %0, i32 %1) #0 {
  %3 = alloca %struct.qfq_class*, align 8
  %4 = alloca %struct.qfq_if*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qfq_class*, align 8
  %7 = alloca i32, align 4
  store %struct.qfq_if* %0, %struct.qfq_if** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %9 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @IFCQ_LOCK_ASSERT_HELD(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %14 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = srem i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %18 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %17, i32 0, i32 1
  %19 = load %struct.qfq_class**, %struct.qfq_class*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %19, i64 %21
  %23 = load %struct.qfq_class*, %struct.qfq_class** %22, align 8
  store %struct.qfq_class* %23, %struct.qfq_class** %6, align 8
  %24 = icmp ne %struct.qfq_class* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %27 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  store %struct.qfq_class* %32, %struct.qfq_class** %3, align 8
  br label %62

33:                                               ; preds = %25, %2
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %58, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %37 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %34
  %41 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %42 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %41, i32 0, i32 1
  %43 = load %struct.qfq_class**, %struct.qfq_class*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %43, i64 %45
  %47 = load %struct.qfq_class*, %struct.qfq_class** %46, align 8
  store %struct.qfq_class* %47, %struct.qfq_class** %6, align 8
  %48 = icmp ne %struct.qfq_class* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %51 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  store %struct.qfq_class* %56, %struct.qfq_class** %3, align 8
  br label %62

57:                                               ; preds = %49, %40
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %34

61:                                               ; preds = %34
  store %struct.qfq_class* null, %struct.qfq_class** %3, align 8
  br label %62

62:                                               ; preds = %61, %55, %31
  %63 = load %struct.qfq_class*, %struct.qfq_class** %3, align 8
  ret %struct.qfq_class* %63
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
