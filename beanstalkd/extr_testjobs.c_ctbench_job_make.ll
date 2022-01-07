; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testjobs.c_ctbench_job_make.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testjobs.c_ctbench_job_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_tube = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctbench_job_make(i32 %0) #0 {
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
  %10 = call i32 (...) @ctresettimer()
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %22, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* @default_tube, align 4
  %17 = call i32* @make_job(i32 0, i32 0, i32 1, i32 0, i32 %16)
  %18 = load i32**, i32*** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  store i32* %17, i32** %21, align 8
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %11

25:                                               ; preds = %11
  %26 = call i32 (...) @ctstoptimer()
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %38, %25
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32**, i32*** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @job_free(i32* %36)
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %27

41:                                               ; preds = %27
  %42 = load i32**, i32*** %4, align 8
  %43 = call i32 @free(i32** %42)
  ret void
}

declare dso_local i32** @calloc(i32, i32) #1

declare dso_local i32 @TUBE_ASSIGN(i32, i32) #1

declare dso_local i32 @make_tube(i8*) #1

declare dso_local i32 @ctresettimer(...) #1

declare dso_local i32* @make_job(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctstoptimer(...) #1

declare dso_local i32 @job_free(i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
