; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testjobs.c_cttest_job_large_pris.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testjobs.c_cttest_job_large_pris.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_tube = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"should be less\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"should not be less\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_job_large_pris() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @default_tube, align 4
  %4 = call i32 @make_tube(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @TUBE_ASSIGN(i32 %3, i32 %4)
  %6 = load i32, i32* @default_tube, align 4
  %7 = call i32* @make_job(i32 1, i32 0, i32 1, i32 0, i32 %6)
  store i32* %7, i32** %1, align 8
  %8 = load i32, i32* @default_tube, align 4
  %9 = call i32* @make_job(i32 -5, i32 0, i32 1, i32 0, i32 %8)
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @job_pri_less(i32* %10, i32* %11)
  %13 = call i32 @assertf(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @default_tube, align 4
  %15 = call i32* @make_job(i32 -5, i32 0, i32 1, i32 0, i32 %14)
  store i32* %15, i32** %1, align 8
  %16 = load i32, i32* @default_tube, align 4
  %17 = call i32* @make_job(i32 1, i32 0, i32 1, i32 0, i32 %16)
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @job_pri_less(i32* %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assertf(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TUBE_ASSIGN(i32, i32) #1

declare dso_local i32 @make_tube(i8*) #1

declare dso_local i32* @make_job(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assertf(i32, i8*) #1

declare dso_local i32 @job_pri_less(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
