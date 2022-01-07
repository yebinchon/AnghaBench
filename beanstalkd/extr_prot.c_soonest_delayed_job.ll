; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_prot.c_soonest_delayed_job.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_prot.c_soonest_delayed_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@tubes = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* ()* @soonest_delayed_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @soonest_delayed_job() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  store i64 0, i64* %2, align 8
  br label %5

5:                                                ; preds = %42, %0
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tubes, i32 0, i32 0), align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %5
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tubes, i32 0, i32 1), align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %10, i64 %11
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %42

20:                                               ; preds = %9
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %24, i64 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %4, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29, %20
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %1, align 8
  br label %41

41:                                               ; preds = %39, %29
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i64, i64* %2, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %2, align 8
  br label %5

45:                                               ; preds = %5
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  ret %struct.TYPE_10__* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
