; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_update_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_update_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i64, i32* }
%struct.qfq_class = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qfq_group = type { i64 }

@ER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_if*, %struct.qfq_class*)* @qfq_update_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_update_start(%struct.qfq_if* %0, %struct.qfq_class* %1) #0 {
  %3 = alloca %struct.qfq_if*, align 8
  %4 = alloca %struct.qfq_class*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qfq_group*, align 8
  store %struct.qfq_if* %0, %struct.qfq_if** %3, align 8
  store %struct.qfq_class* %1, %struct.qfq_class** %4, align 8
  %10 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %11 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %16 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @qfq_round_down(i64 %17, i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %21 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @qfq_round_down(i64 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = shl i64 1, %26
  %28 = add i64 %24, %27
  store i64 %28, i64* %6, align 8
  %29 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %30 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %33 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @qfq_gt(i64 %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @qfq_gt(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %37, %2
  %43 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %44 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @ER, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %50 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @mask_from(i32 %48, i32 %53)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %42
  %58 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call %struct.qfq_group* @qfq_ffs(%struct.qfq_if* %58, i64 %59)
  store %struct.qfq_group* %60, %struct.qfq_group** %9, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.qfq_group*, %struct.qfq_group** %9, align 8
  %63 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @qfq_gt(i64 %61, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load %struct.qfq_group*, %struct.qfq_group** %9, align 8
  %69 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %72 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %86

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73, %42
  %75 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %76 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %79 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %86

80:                                               ; preds = %37
  %81 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %82 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %85 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %67, %80, %74
  ret void
}

declare dso_local i64 @qfq_round_down(i64, i32) #1

declare dso_local i64 @qfq_gt(i64, i64) #1

declare dso_local i64 @mask_from(i32, i32) #1

declare dso_local %struct.qfq_group* @qfq_ffs(%struct.qfq_if*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
