; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_MPMMtest.c_thread_join.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_MPMMtest.c_thread_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@threaded = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"joining thread %p\0A\00", align 1
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"pthread_join(%p)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"waiting for pid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @thread_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_join(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load i64, i64* @threaded, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load i32, i32* @verbose, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %10, %7
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @pthread_join(i32 %18, i32* null)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @KERN_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %15
  br label %42

29:                                               ; preds = %1
  %30 = load i32, i32* @verbose, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @waitpid(i32 %40, i32* %4, i32 0)
  br label %42

42:                                               ; preds = %37, %28
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
