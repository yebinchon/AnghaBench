; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_file.c_filermjob.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_file.c_filermjob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filermjob(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = icmp ne %struct.TYPE_13__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %51

8:                                                ; preds = %2
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = icmp ne %struct.TYPE_13__* %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %51

15:                                               ; preds = %8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %31, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %38
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = call i32 @filedecref(%struct.TYPE_13__* %49)
  br label %51

51:                                               ; preds = %15, %14, %7
  ret void
}

declare dso_local i32 @filedecref(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
