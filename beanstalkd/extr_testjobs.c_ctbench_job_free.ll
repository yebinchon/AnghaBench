; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testjobs.c_ctbench_job_free.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testjobs.c_ctbench_job_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_tube = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctbench_job_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32** @calloc(i32 %5, i32 8)
  store i32** %6, i32*** %4, align 8
  %7 = load i32, i32* @default_tube, align 4
  %8 = call i32 @make_tube(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @TUBE_ASSIGN(i32 %7, i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %21, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i32, i32* @default_tube, align 4
  %16 = call i32* @make_job(i32 0, i32 0, i32 1, i32 0, i32 %15)
  %17 = load i32**, i32*** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  store i32* %16, i32** %20, align 8
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %10

24:                                               ; preds = %10
  %25 = call i32 (...) @ctresettimer()
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %37, %24
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32**, i32*** %4, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @job_free(i32* %35)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %26

40:                                               ; preds = %26
  %41 = call i32 (...) @ctstoptimer()
  %42 = load i32**, i32*** %4, align 8
  %43 = call i32 @free(i32** %42)
  ret void
}

declare dso_local i32** @calloc(i32, i32) #1

declare dso_local i32 @TUBE_ASSIGN(i32, i32) #1

declare dso_local i32 @make_tube(i8*) #1

declare dso_local i32* @make_job(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctresettimer(...) #1

declare dso_local i32 @job_free(i32*) #1

declare dso_local i32 @ctstoptimer(...) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
