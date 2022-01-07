; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_export_flowstats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_export_flowstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.fq_codel_flowstats = type { i32, i32, i32, i32 }

@FQF_NEW_FLOW = common dso_local global i32 0, align 4
@FQ_FLOWSTATS_NEW_FLOW = common dso_local global i32 0, align 4
@FQF_OLD_FLOW = common dso_local global i32 0, align 4
@FQ_FLOWSTATS_OLD_FLOW = common dso_local global i32 0, align 4
@FQF_DELAY_HIGH = common dso_local global i32 0, align 4
@FQ_FLOWSTATS_DELAY_HIGH = common dso_local global i32 0, align 4
@FQF_FLOWCTL_ON = common dso_local global i32 0, align 4
@FQ_FLOWSTATS_FLOWCTL_ON = common dso_local global i32 0, align 4
@FQ_FLOWSTATS_LARGE_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, %struct.fq_codel_flowstats*)* @fq_export_flowstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fq_export_flowstats(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, %struct.fq_codel_flowstats* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.fq_codel_flowstats*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.fq_codel_flowstats* %2, %struct.fq_codel_flowstats** %6, align 8
  %7 = load %struct.fq_codel_flowstats*, %struct.fq_codel_flowstats** %6, align 8
  %8 = call i32 @bzero(%struct.fq_codel_flowstats* %7, i32 16)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.fq_codel_flowstats*, %struct.fq_codel_flowstats** %6, align 8
  %13 = getelementptr inbounds %struct.fq_codel_flowstats, %struct.fq_codel_flowstats* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fq_codel_flowstats*, %struct.fq_codel_flowstats** %6, align 8
  %18 = getelementptr inbounds %struct.fq_codel_flowstats, %struct.fq_codel_flowstats* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fq_codel_flowstats*, %struct.fq_codel_flowstats** %6, align 8
  %23 = getelementptr inbounds %struct.fq_codel_flowstats, %struct.fq_codel_flowstats* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FQF_NEW_FLOW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32, i32* @FQ_FLOWSTATS_NEW_FLOW, align 4
  %32 = load %struct.fq_codel_flowstats*, %struct.fq_codel_flowstats** %6, align 8
  %33 = getelementptr inbounds %struct.fq_codel_flowstats, %struct.fq_codel_flowstats* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FQF_OLD_FLOW, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @FQ_FLOWSTATS_OLD_FLOW, align 4
  %45 = load %struct.fq_codel_flowstats*, %struct.fq_codel_flowstats** %6, align 8
  %46 = getelementptr inbounds %struct.fq_codel_flowstats, %struct.fq_codel_flowstats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FQF_DELAY_HIGH, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @FQ_FLOWSTATS_DELAY_HIGH, align 4
  %58 = load %struct.fq_codel_flowstats*, %struct.fq_codel_flowstats** %6, align 8
  %59 = getelementptr inbounds %struct.fq_codel_flowstats, %struct.fq_codel_flowstats* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FQF_FLOWCTL_ON, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i32, i32* @FQ_FLOWSTATS_FLOWCTL_ON, align 4
  %71 = load %struct.fq_codel_flowstats*, %struct.fq_codel_flowstats** %6, align 8
  %72 = getelementptr inbounds %struct.fq_codel_flowstats, %struct.fq_codel_flowstats* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = icmp eq %struct.TYPE_5__* %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i32, i32* @FQ_FLOWSTATS_LARGE_FLOW, align 4
  %83 = load %struct.fq_codel_flowstats*, %struct.fq_codel_flowstats** %6, align 8
  %84 = getelementptr inbounds %struct.fq_codel_flowstats, %struct.fq_codel_flowstats* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %75
  ret void
}

declare dso_local i32 @bzero(%struct.fq_codel_flowstats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
