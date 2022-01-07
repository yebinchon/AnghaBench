; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_purge_flow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_purge_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32 }

@FQF_NEW_FLOW = common dso_local global i32 0, align 4
@FQF_OLD_FLOW = common dso_local global i32 0, align 4
@FQ_IF_ER = common dso_local global i32 0, align 4
@FQ_IF_MAX_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*, i64*, i64*)* @fq_if_purge_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fq_if_purge_flow(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i64 %19
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  %21 = call i32 @_PKTSCHED_PKT_INIT(i32* %12)
  br label %22

22:                                               ; preds = %27, %4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = call i32* @fq_getq_flow(%struct.TYPE_18__* %23, %struct.TYPE_17__* %24, i32* %12)
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i64, i64* %10, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %10, align 8
  %30 = call i64 @pktsched_get_pkt_len(i32* %12)
  %31 = load i64, i64* %11, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %11, align 8
  %33 = call i32 @pktsched_free_pkt(i32* %12)
  br label %22

34:                                               ; preds = %22
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @IFCQ_DROP_ADD(i32 %37, i64 %38, i64 %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FQF_NEW_FLOW, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %50 = call i32 @fq_if_empty_new_flow(%struct.TYPE_17__* %48, %struct.TYPE_19__* %49, i32 0)
  br label %64

51:                                               ; preds = %34
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FQF_OLD_FLOW, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = call i32 @fq_if_empty_old_flow(%struct.TYPE_18__* %59, %struct.TYPE_19__* %60, %struct.TYPE_17__* %61, i32 0)
  br label %63

63:                                               ; preds = %58, %51
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = call i32 @fq_if_destroy_flow(%struct.TYPE_18__* %65, %struct.TYPE_19__* %66, %struct.TYPE_17__* %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %70 = call i64 @FQ_IF_CLASSQ_IDLE(%struct.TYPE_19__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %64
  %73 = load i32, i32* @FQ_IF_ER, align 4
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %89, %72
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @FQ_IF_MAX_STATE, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @pktsched_bit_clr(i32 %81, i32* %87)
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %74

92:                                               ; preds = %74
  br label %93

93:                                               ; preds = %92, %64
  %94 = load i64*, i64** %7, align 8
  %95 = icmp ne i64* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i64, i64* %10, align 8
  %98 = load i64*, i64** %7, align 8
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i64*, i64** %8, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i64, i64* %11, align 8
  %104 = load i64*, i64** %8, align 8
  store i64 %103, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %99
  ret void
}

declare dso_local i32 @_PKTSCHED_PKT_INIT(i32*) #1

declare dso_local i32* @fq_getq_flow(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i64 @pktsched_get_pkt_len(i32*) #1

declare dso_local i32 @pktsched_free_pkt(i32*) #1

declare dso_local i32 @IFCQ_DROP_ADD(i32, i64, i64) #1

declare dso_local i32 @fq_if_empty_new_flow(%struct.TYPE_17__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @fq_if_empty_old_flow(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @fq_if_destroy_flow(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_17__*) #1

declare dso_local i64 @FQ_IF_CLASSQ_IDLE(%struct.TYPE_19__*) #1

declare dso_local i32 @pktsched_bit_clr(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
