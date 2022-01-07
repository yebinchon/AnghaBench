; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_update_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_update_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.mbuf* }
%struct.ah_algorithm = type { i32 (%struct.ah_algorithm_state*, i64, i32)* }
%struct.ah_algorithm_state = type { i32 }

@caddr_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ah_update_mbuf: wrong offset specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, i32, i32, %struct.ah_algorithm*, %struct.ah_algorithm_state*)* @ah_update_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ah_update_mbuf(%struct.mbuf* %0, i32 %1, i32 %2, %struct.ah_algorithm* %3, %struct.ah_algorithm_state* %4) #0 {
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ah_algorithm*, align 8
  %10 = alloca %struct.ah_algorithm_state*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ah_algorithm* %3, %struct.ah_algorithm** %9, align 8
  store %struct.ah_algorithm_state* %4, %struct.ah_algorithm_state** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %13, %14
  %16 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = load %struct.ah_algorithm*, %struct.ah_algorithm** %9, align 8
  %22 = getelementptr inbounds %struct.ah_algorithm, %struct.ah_algorithm* %21, i32 0, i32 0
  %23 = load i32 (%struct.ah_algorithm_state*, i64, i32)*, i32 (%struct.ah_algorithm_state*, i64, i32)** %22, align 8
  %24 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %10, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %26 = load i32, i32* @caddr_t, align 4
  %27 = call i64 @mtod(%struct.mbuf* %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load i32, i32* %8, align 4
  %32 = call i32 %23(%struct.ah_algorithm_state* %24, i64 %30, i32 %31)
  br label %111

33:                                               ; preds = %5
  %34 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %34, %struct.mbuf** %11, align 8
  br label %35

35:                                               ; preds = %51, %33
  %36 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %37 = icmp ne %struct.mbuf* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %55

45:                                               ; preds = %38
  %46 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 1
  %54 = load %struct.mbuf*, %struct.mbuf** %53, align 8
  store %struct.mbuf* %54, %struct.mbuf** %11, align 8
  br label %35

55:                                               ; preds = %44, %35
  %56 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %57 = icmp ne %struct.mbuf* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  br label %61

61:                                               ; preds = %107, %60
  %62 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %63 = icmp ne %struct.mbuf* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 0
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i1 [ false, %61 ], [ %66, %64 ]
  br i1 %68, label %69, label %111

69:                                               ; preds = %67
  %70 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %107

75:                                               ; preds = %69
  %76 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %77 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %85 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %12, align 4
  br label %91

89:                                               ; preds = %75
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %89, %83
  %92 = load %struct.ah_algorithm*, %struct.ah_algorithm** %9, align 8
  %93 = getelementptr inbounds %struct.ah_algorithm, %struct.ah_algorithm* %92, i32 0, i32 0
  %94 = load i32 (%struct.ah_algorithm_state*, i64, i32)*, i32 (%struct.ah_algorithm_state*, i64, i32)** %93, align 8
  %95 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %10, align 8
  %96 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %97 = load i32, i32* @caddr_t, align 4
  %98 = call i64 @mtod(%struct.mbuf* %96, i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = load i32, i32* %12, align 4
  %103 = call i32 %94(%struct.ah_algorithm_state* %95, i64 %101, i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %91, %74
  %108 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %109 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %108, i32 0, i32 1
  %110 = load %struct.mbuf*, %struct.mbuf** %109, align 8
  store %struct.mbuf* %110, %struct.mbuf** %11, align 8
  br label %61

111:                                              ; preds = %20, %67
  ret void
}

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
