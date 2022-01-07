; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testheap.c_ctbench_heap_insert.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testheap.c_ctbench_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__**, i32, i32 }

@job_setpos = common dso_local global i32 0, align 4
@job_pri_less = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctbench_heap_insert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.TYPE_12__** @calloc(i32 %6, i32 8)
  store %struct.TYPE_12__** %7, %struct.TYPE_12__*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %40, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = call %struct.TYPE_12__* @make_job(i32 1, i32 0, i32 1, i32 0, i32 0)
  %14 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %14, i64 %16
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %17, align 8
  %18 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %18, i64 %20
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = call i32 @assert(%struct.TYPE_12__* %22)
  %24 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %24, i64 %26
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %33, i64 %35
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  store i32 %32, i32* %39, align 4
  br label %40

40:                                               ; preds = %12
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %8

43:                                               ; preds = %8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store %struct.TYPE_12__** null, %struct.TYPE_12__*** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %46 = load i32, i32* @job_setpos, align 4
  store i32 %46, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  %48 = load i32, i32* @job_pri_less, align 4
  store i32 %48, i32* %47, align 4
  %49 = call i32 (...) @ctresettimer()
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %61, %43
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %55, i64 %57
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = call i32 @heapinsert(%struct.TYPE_13__* %5, %struct.TYPE_12__* %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %50

64:                                               ; preds = %50
  %65 = call i32 (...) @ctstoptimer()
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %73, %64
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = call i32 @heapremove(%struct.TYPE_13__* %5, i32 0)
  %72 = call i32 @job_free(i32 %71)
  br label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %66

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %78 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %77, align 8
  %79 = call i32 @free(%struct.TYPE_12__** %78)
  %80 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %81 = call i32 @free(%struct.TYPE_12__** %80)
  ret void
}

declare dso_local %struct.TYPE_12__** @calloc(i32, i32) #1

declare dso_local %struct.TYPE_12__* @make_job(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @ctresettimer(...) #1

declare dso_local i32 @heapinsert(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ctstoptimer(...) #1

declare dso_local i32 @job_free(i32) #1

declare dso_local i32 @heapremove(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
