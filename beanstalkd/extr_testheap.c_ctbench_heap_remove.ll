; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testheap.c_ctbench_heap_remove.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testheap.c_ctbench_heap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, i32, i32 }

@job_setpos = common dso_local global i32 0, align 4
@job_pri_less = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"allocate job\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctbench_heap_remove(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  store i32 %0, i32* %2, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32** null, i32*** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %9 = load i32, i32* @job_setpos, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %11 = load i32, i32* @job_pri_less, align 4
  store i32 %11, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %22, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = call i32* @make_job(i32 1, i32 0, i32 1, i32 0, i32 0)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @assertf(i32* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @heapinsert(%struct.TYPE_4__* %3, i32* %20)
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %12

25:                                               ; preds = %12
  %26 = load i32, i32* %2, align 4
  %27 = call i32** @calloc(i32 %26, i32 8)
  store i32** %27, i32*** %6, align 8
  %28 = call i32 (...) @ctresettimer()
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %40, %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = call i64 @heapremove(%struct.TYPE_4__* %3, i32 0)
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32**, i32*** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* %35, i32** %39, align 8
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %29

43:                                               ; preds = %29
  %44 = call i32 (...) @ctstoptimer()
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = call i32 @free(i32** %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %59, %43
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i32**, i32*** %6, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @job_free(i32* %57)
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %48

62:                                               ; preds = %48
  %63 = load i32**, i32*** %6, align 8
  %64 = call i32 @free(i32** %63)
  ret void
}

declare dso_local i32* @make_job(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assertf(i32*, i8*) #1

declare dso_local i32 @heapinsert(%struct.TYPE_4__*, i32*) #1

declare dso_local i32** @calloc(i32, i32) #1

declare dso_local i32 @ctresettimer(...) #1

declare dso_local i64 @heapremove(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ctstoptimer(...) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32 @job_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
