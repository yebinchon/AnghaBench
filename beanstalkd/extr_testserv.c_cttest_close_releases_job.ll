; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_close_releases_job.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_close_releases_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"reserve-with-timeout 1\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"put 0 0 100 1\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"a\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"INSERTED 1\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"RESERVED 1 1\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"stats-job 1\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"OK \00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"\0Astate: reserved\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_close_releases_job() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @SERVER()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @mustdiallocal(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @mustdiallocal(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @mustsend(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @mustsend(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @mustsend(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ckresp(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @ckresp(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @ckresp(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @mustsend(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ckrespsub(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ckrespsub(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @close(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @mustsend(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ckresp(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ckresp(i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SERVER(...) #1

declare dso_local i32 @mustdiallocal(i32) #1

declare dso_local i32 @mustsend(i32, i8*) #1

declare dso_local i32 @ckresp(i32, i8*) #1

declare dso_local i32 @ckrespsub(i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
