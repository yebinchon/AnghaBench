; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_get_class_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_get_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcq_if = type { i32 }
%struct.tcq_classstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tcq_class = type { i32*, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcq_get_class_stats(%struct.tcq_if* %0, i32 %1, %struct.tcq_classstats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcq_if*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcq_classstats*, align 8
  %8 = alloca %struct.tcq_class*, align 8
  store %struct.tcq_if* %0, %struct.tcq_if** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tcq_classstats* %2, %struct.tcq_classstats** %7, align 8
  %9 = load %struct.tcq_if*, %struct.tcq_if** %5, align 8
  %10 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @IFCQ_LOCK_ASSERT_HELD(i32 %11)
  %13 = load %struct.tcq_if*, %struct.tcq_if** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.tcq_class* @tcq_clh_to_clp(%struct.tcq_if* %13, i32 %14)
  store %struct.tcq_class* %15, %struct.tcq_class** %8, align 8
  %16 = icmp eq %struct.tcq_class* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = load %struct.tcq_class*, %struct.tcq_class** %8, align 8
  %21 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tcq_classstats*, %struct.tcq_classstats** %7, align 8
  %24 = getelementptr inbounds %struct.tcq_classstats, %struct.tcq_classstats* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tcq_class*, %struct.tcq_class** %8, align 8
  %26 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tcq_classstats*, %struct.tcq_classstats** %7, align 8
  %29 = getelementptr inbounds %struct.tcq_classstats, %struct.tcq_classstats* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.tcq_class*, %struct.tcq_class** %8, align 8
  %31 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %30, i32 0, i32 1
  %32 = call i32 @qlen(i32* %31)
  %33 = load %struct.tcq_classstats*, %struct.tcq_classstats** %7, align 8
  %34 = getelementptr inbounds %struct.tcq_classstats, %struct.tcq_classstats* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tcq_class*, %struct.tcq_class** %8, align 8
  %36 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %35, i32 0, i32 1
  %37 = call i32 @qlimit(i32* %36)
  %38 = load %struct.tcq_classstats*, %struct.tcq_classstats** %7, align 8
  %39 = getelementptr inbounds %struct.tcq_classstats, %struct.tcq_classstats* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tcq_class*, %struct.tcq_class** %8, align 8
  %41 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tcq_classstats*, %struct.tcq_classstats** %7, align 8
  %44 = getelementptr inbounds %struct.tcq_classstats, %struct.tcq_classstats* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.tcq_class*, %struct.tcq_class** %8, align 8
  %46 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.tcq_classstats*, %struct.tcq_classstats** %7, align 8
  %49 = getelementptr inbounds %struct.tcq_classstats, %struct.tcq_classstats* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.tcq_class*, %struct.tcq_class** %8, align 8
  %51 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tcq_classstats*, %struct.tcq_classstats** %7, align 8
  %54 = getelementptr inbounds %struct.tcq_classstats, %struct.tcq_classstats* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.tcq_class*, %struct.tcq_class** %8, align 8
  %56 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %55, i32 0, i32 1
  %57 = call i32 @qtype(i32* %56)
  %58 = load %struct.tcq_classstats*, %struct.tcq_classstats** %7, align 8
  %59 = getelementptr inbounds %struct.tcq_classstats, %struct.tcq_classstats* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.tcq_class*, %struct.tcq_class** %8, align 8
  %61 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %60, i32 0, i32 1
  %62 = call i32 @qstate(i32* %61)
  %63 = load %struct.tcq_classstats*, %struct.tcq_classstats** %7, align 8
  %64 = getelementptr inbounds %struct.tcq_classstats, %struct.tcq_classstats* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tcq_class*, %struct.tcq_class** %8, align 8
  %66 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %65, i32 0, i32 1
  %67 = call i64 @q_is_sfb(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %19
  %70 = load %struct.tcq_class*, %struct.tcq_class** %8, align 8
  %71 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.tcq_class*, %struct.tcq_class** %8, align 8
  %76 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.tcq_classstats*, %struct.tcq_classstats** %7, align 8
  %79 = getelementptr inbounds %struct.tcq_classstats, %struct.tcq_classstats* %78, i32 0, i32 0
  %80 = call i32 @sfb_getstats(i32* %77, i32* %79)
  br label %81

81:                                               ; preds = %74, %69, %19
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %17
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(i32) #1

declare dso_local %struct.tcq_class* @tcq_clh_to_clp(%struct.tcq_if*, i32) #1

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
