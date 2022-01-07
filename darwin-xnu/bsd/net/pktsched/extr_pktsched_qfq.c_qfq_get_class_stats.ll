; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_get_class_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_get_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i32 }
%struct.qfq_classstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qfq_class = type { i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QFQ_ONE_FP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qfq_get_class_stats(%struct.qfq_if* %0, i32 %1, %struct.qfq_classstats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qfq_if*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qfq_classstats*, align 8
  %8 = alloca %struct.qfq_class*, align 8
  store %struct.qfq_if* %0, %struct.qfq_if** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qfq_classstats* %2, %struct.qfq_classstats** %7, align 8
  %9 = load %struct.qfq_if*, %struct.qfq_if** %5, align 8
  %10 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @IFCQ_LOCK_ASSERT_HELD(i32 %11)
  %13 = load %struct.qfq_if*, %struct.qfq_if** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.qfq_class* @qfq_clh_to_clp(%struct.qfq_if* %13, i32 %14)
  store %struct.qfq_class* %15, %struct.qfq_class** %8, align 8
  %16 = icmp eq %struct.qfq_class* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %96

19:                                               ; preds = %3
  %20 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %21 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.qfq_classstats*, %struct.qfq_classstats** %7, align 8
  %24 = getelementptr inbounds %struct.qfq_classstats, %struct.qfq_classstats* %23, i32 0, i32 11
  store i32 %22, i32* %24, align 4
  %25 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %26 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %25, i32 0, i32 7
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qfq_classstats*, %struct.qfq_classstats** %7, align 8
  %31 = getelementptr inbounds %struct.qfq_classstats, %struct.qfq_classstats* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @QFQ_ONE_FP, align 4
  %33 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %34 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %32, %35
  %37 = load %struct.qfq_classstats*, %struct.qfq_classstats** %7, align 8
  %38 = getelementptr inbounds %struct.qfq_classstats, %struct.qfq_classstats* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %40 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.qfq_classstats*, %struct.qfq_classstats** %7, align 8
  %43 = getelementptr inbounds %struct.qfq_classstats, %struct.qfq_classstats* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 4
  %44 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %45 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %44, i32 0, i32 2
  %46 = call i32 @qlen(i32* %45)
  %47 = load %struct.qfq_classstats*, %struct.qfq_classstats** %7, align 8
  %48 = getelementptr inbounds %struct.qfq_classstats, %struct.qfq_classstats* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %50 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %49, i32 0, i32 2
  %51 = call i32 @qlimit(i32* %50)
  %52 = load %struct.qfq_classstats*, %struct.qfq_classstats** %7, align 8
  %53 = getelementptr inbounds %struct.qfq_classstats, %struct.qfq_classstats* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %55 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qfq_classstats*, %struct.qfq_classstats** %7, align 8
  %58 = getelementptr inbounds %struct.qfq_classstats, %struct.qfq_classstats* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %60 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.qfq_classstats*, %struct.qfq_classstats** %7, align 8
  %63 = getelementptr inbounds %struct.qfq_classstats, %struct.qfq_classstats* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %65 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.qfq_classstats*, %struct.qfq_classstats** %7, align 8
  %68 = getelementptr inbounds %struct.qfq_classstats, %struct.qfq_classstats* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %70 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %69, i32 0, i32 2
  %71 = call i32 @qtype(i32* %70)
  %72 = load %struct.qfq_classstats*, %struct.qfq_classstats** %7, align 8
  %73 = getelementptr inbounds %struct.qfq_classstats, %struct.qfq_classstats* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %75 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %74, i32 0, i32 2
  %76 = call i32 @qstate(i32* %75)
  %77 = load %struct.qfq_classstats*, %struct.qfq_classstats** %7, align 8
  %78 = getelementptr inbounds %struct.qfq_classstats, %struct.qfq_classstats* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %80 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %79, i32 0, i32 2
  %81 = call i64 @q_is_sfb(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %19
  %84 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %85 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %90 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.qfq_classstats*, %struct.qfq_classstats** %7, align 8
  %93 = getelementptr inbounds %struct.qfq_classstats, %struct.qfq_classstats* %92, i32 0, i32 1
  %94 = call i32 @sfb_getstats(i32* %91, i32* %93)
  br label %95

95:                                               ; preds = %88, %83, %19
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %17
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(i32) #1

declare dso_local %struct.qfq_class* @qfq_clh_to_clp(%struct.qfq_if*, i32) #1

declare dso_local i32 @qlen(i32*) #1

declare dso_local i32 @qlimit(i32*) #1

declare dso_local i32 @qtype(i32*) #1

declare dso_local i32 @qstate(i32*) #1

declare dso_local i64 @q_is_sfb(i32*) #1

declare dso_local i32 @sfb_getstats(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
