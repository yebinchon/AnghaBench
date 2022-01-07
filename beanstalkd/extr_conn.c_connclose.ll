; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_conn.c_connclose.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_conn.c_connclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32, %struct.TYPE_14__*, %struct.TYPE_12__*, i32, i64, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"close %d\0A\00", align 1
@Copy = common dso_local global i64 0, align 8
@CONN_TYPE_PRODUCER = common dso_local global i32 0, align 4
@cur_producer_ct = common dso_local global i32 0, align 4
@CONN_TYPE_WORKER = common dso_local global i32 0, align 4
@cur_worker_ct = common dso_local global i32 0, align 4
@cur_conn_ct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @connclose(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %3 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 9
  %5 = call i32 @sockwant(%struct.TYPE_16__* %4, i32 0)
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @close(i32 %9)
  %11 = load i64, i64* @verbose, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = call i32 @job_free(%struct.TYPE_17__* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = icmp ne %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %19
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 7
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @Copy, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = call i32 @job_free(%struct.TYPE_17__* %40)
  br label %42

42:                                               ; preds = %37, %28, %19
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 7
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CONN_TYPE_PRODUCER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* @cur_producer_ct, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* @cur_producer_ct, align 4
  br label %58

58:                                               ; preds = %55, %42
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CONN_TYPE_WORKER, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @cur_worker_ct, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* @cur_worker_ct, align 4
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i32, i32* @cur_conn_ct, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* @cur_conn_ct, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %72 = call i32 @remove_waiting_conn(%struct.TYPE_15__* %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = call i64 @has_reserved_job(%struct.TYPE_15__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = call i32 @enqueue_reserved_jobs(%struct.TYPE_15__* %77)
  br label %79

79:                                               ; preds = %76, %68
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 5
  %82 = call i32 @ms_clear(i32* %81)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = call i32 @TUBE_ASSIGN(%struct.TYPE_12__* %91, i32* null)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %79
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @heapremove(i32* %101, i32 %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %97, %79
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %110 = call i32 @free(%struct.TYPE_15__* %109)
  ret void
}

declare dso_local i32 @sockwant(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @job_free(%struct.TYPE_17__*) #1

declare dso_local i32 @remove_waiting_conn(%struct.TYPE_15__*) #1

declare dso_local i64 @has_reserved_job(%struct.TYPE_15__*) #1

declare dso_local i32 @enqueue_reserved_jobs(%struct.TYPE_15__*) #1

declare dso_local i32 @ms_clear(i32*) #1

declare dso_local i32 @TUBE_ASSIGN(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @heapremove(i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
