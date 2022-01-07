; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_prot.c_conn_timeout.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_prot.c_conn_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32 }

@timeout_ct = common dso_local global i32 0, align 4
@MSG_DEADLINE_SOON = common dso_local global i32 0, align 4
@MSG_TIMED_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @conn_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_timeout(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %7 = call i64 @conn_waiting(%struct.TYPE_19__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %11 = call i64 @conndeadlinesoon(%struct.TYPE_19__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %9, %1
  br label %15

15:                                               ; preds = %63, %14
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %17 = call %struct.TYPE_18__* @connsoonestjob(%struct.TYPE_19__* %16)
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %4, align 8
  %18 = icmp ne %struct.TYPE_18__* %17, null
  br i1 %18, label %19, label %66

19:                                               ; preds = %15
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 (...) @nanoseconds()
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %66

27:                                               ; preds = %19
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = icmp eq %struct.TYPE_18__* %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = call %struct.TYPE_18__* @job_copy(%struct.TYPE_18__* %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %39, align 8
  br label %40

40:                                               ; preds = %33, %27
  %41 = load i32, i32* @timeout_ct, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @timeout_ct, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = call i32 @remove_this_reserved_job(%struct.TYPE_19__* %51, %struct.TYPE_18__* %52)
  %54 = call i32 @enqueue_job(i32 %50, i32 %53, i32 0, i32 0)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %57, label %63

57:                                               ; preds = %40
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = call i32 @bury_job(i32 %60, %struct.TYPE_18__* %61, i32 0)
  br label %63

63:                                               ; preds = %57, %40
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %65 = call i32 @connsched(%struct.TYPE_19__* %64)
  br label %15

66:                                               ; preds = %26, %15
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %71 = call i32 @remove_waiting_conn(%struct.TYPE_19__* %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %73 = load i32, i32* @MSG_DEADLINE_SOON, align 4
  %74 = call i32 @reply_msg(%struct.TYPE_19__* %72, i32 %73)
  br label %93

75:                                               ; preds = %66
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %77 = call i64 @conn_waiting(%struct.TYPE_19__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  store i64 -1, i64* %86, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %88 = call i32 @remove_waiting_conn(%struct.TYPE_19__* %87)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %90 = load i32, i32* @MSG_TIMED_OUT, align 4
  %91 = call i32 @reply_msg(%struct.TYPE_19__* %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %79, %75
  br label %93

93:                                               ; preds = %92, %69
  ret void
}

declare dso_local i64 @conn_waiting(%struct.TYPE_19__*) #1

declare dso_local i64 @conndeadlinesoon(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @connsoonestjob(%struct.TYPE_19__*) #1

declare dso_local i64 @nanoseconds(...) #1

declare dso_local %struct.TYPE_18__* @job_copy(%struct.TYPE_18__*) #1

declare dso_local i32 @enqueue_job(i32, i32, i32, i32) #1

declare dso_local i32 @remove_this_reserved_job(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @bury_job(i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @connsched(%struct.TYPE_19__*) #1

declare dso_local i32 @remove_waiting_conn(%struct.TYPE_19__*) #1

declare dso_local i32 @reply_msg(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
