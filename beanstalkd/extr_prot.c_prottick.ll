; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_prot.c_prottick.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_prot.c_prottick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_22__**, i64 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i64 }

@tubes = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @prottick(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  store i64 3600000000000, i64* %6, align 8
  %11 = call i64 (...) @nanoseconds()
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %46, %1
  %13 = call %struct.TYPE_21__* (...) @soonest_delayed_job()
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %3, align 8
  %14 = icmp ne %struct.TYPE_21__* %13, null
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = sub nsw i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @min(i64 %25, i64 %26)
  store i64 %27, i64* %6, align 8
  br label %47

28:                                               ; preds = %15
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @heapremove(%struct.TYPE_16__* %32, i32 %35)
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %39 = call i32 @enqueue_job(%struct.TYPE_20__* %37, %struct.TYPE_21__* %38, i32 0, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %45 = call i32 @bury_job(%struct.TYPE_20__* %43, %struct.TYPE_21__* %44, i32 0)
  br label %46

46:                                               ; preds = %42, %28
  br label %12

47:                                               ; preds = %24, %12
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %82, %47
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @tubes, i32 0, i32 0), align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load %struct.TYPE_19__**, %struct.TYPE_19__*** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @tubes, i32 0, i32 1), align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %53, i64 %54
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  store %struct.TYPE_19__* %56, %struct.TYPE_19__** %5, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = sub nsw i64 %59, %60
  store i64 %61, i64* %7, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %52
  %67 = load i64, i64* %7, align 8
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = call i32 (...) @process_queue()
  br label %81

73:                                               ; preds = %66, %52
  %74 = load i64, i64* %7, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @min(i64 %77, i64 %78)
  store i64 %79, i64* %6, align 8
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %69
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %9, align 8
  br label %48

85:                                               ; preds = %48
  br label %86

86:                                               ; preds = %110, %85
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %118

92:                                               ; preds = %86
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %96, i64 0
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  store %struct.TYPE_22__* %98, %struct.TYPE_22__** %10, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %4, align 8
  %103 = sub nsw i64 %101, %102
  store i64 %103, i64* %7, align 8
  %104 = load i64, i64* %7, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %92
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i64 @min(i64 %107, i64 %108)
  store i64 %109, i64* %6, align 8
  br label %118

110:                                              ; preds = %92
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = call i32 @heapremove(%struct.TYPE_16__* %112, i32 0)
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %117 = call i32 @conn_timeout(%struct.TYPE_22__* %116)
  br label %86

118:                                              ; preds = %106, %86
  %119 = call i32 (...) @epollq_apply()
  %120 = load i64, i64* %6, align 8
  ret i64 %120
}

declare dso_local i64 @nanoseconds(...) #1

declare dso_local %struct.TYPE_21__* @soonest_delayed_job(...) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @heapremove(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @enqueue_job(%struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @bury_job(%struct.TYPE_20__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @process_queue(...) #1

declare dso_local i32 @conn_timeout(%struct.TYPE_22__*) #1

declare dso_local i32 @epollq_apply(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
