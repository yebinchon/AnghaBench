; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_calc_index.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_calc_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_class = type { i32, i32 }

@QFQ_MIN_SLOT_SHIFT = common dso_local global i32 0, align 4
@pktsched_verbose = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: %s qid=%d grp=%d W=%u, L=%u, I=%d\0A\00", align 1
@QFQ_ONE_FP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qfq_class*, i32, i32)* @qfq_calc_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_calc_index(%struct.qfq_class* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qfq_class*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qfq_class* %0, %struct.qfq_class** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @QFQ_MIN_SLOT_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %42

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @__fls(i64 %21)
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @QFQ_MIN_SLOT_SHIFT, align 4
  %28 = add nsw i32 %26, %27
  %29 = sub nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = shl i64 1, %30
  %32 = sub i64 %25, %31
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i64, i64* @pktsched_verbose, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load i32, i32* @LOG_DEBUG, align 4
  %47 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %48 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @QFQIF_IFP(i32 %49)
  %51 = call i32 @if_name(i32 %50)
  %52 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %53 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @qfq_style(i32 %54)
  %56 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %57 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @QFQ_ONE_FP, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sdiv i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @log(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %55, i32 %58, i32 %59, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %45, %42
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local i32 @__fls(i64) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @if_name(i32) #1

declare dso_local i32 @QFQIF_IFP(i32) #1

declare dso_local i32 @qfq_style(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
