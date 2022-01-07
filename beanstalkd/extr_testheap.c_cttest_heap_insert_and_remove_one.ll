; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testheap.c_cttest_heap_insert_and_remove_one.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testheap.c_cttest_heap_insert_and_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@job_setpos = common dso_local global i32 0, align 4
@job_pri_less = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"allocate job\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"insert should succeed\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"j1 should come back out\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"h should be empty.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_heap_insert_and_remove_one() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %8 = load i32, i32* @job_setpos, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %10 = load i32, i32* @job_pri_less, align 4
  store i32 %10, i32* %9, align 8
  %11 = call i32* @make_job(i32 1, i32 0, i32 1, i32 0, i32 0)
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = call i32 @assertf(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @heapinsert(%struct.TYPE_4__* %1, i32* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @assertf(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32* @heapremove(%struct.TYPE_4__* %1, i32 0)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = icmp eq i32* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assertf(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assertf(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @free(i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @job_free(i32* %33)
  ret void
}

declare dso_local i32* @make_job(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assertf(i32, i8*) #1

declare dso_local i32 @heapinsert(%struct.TYPE_4__*, i32*) #1

declare dso_local i32* @heapremove(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @job_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
