; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_reserve_ttr_deadline_soon.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_reserve_ttr_deadline_soon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"put 0 0 1 1\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"a\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"INSERTED 1\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"reserve-with-timeout 1\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"RESERVED 1 1\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"stats-job 1\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"OK \00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"\0Astate: reserved\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"DEADLINE_SOON\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"release 1 0 0\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"RELEASED\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"\0Astate: ready\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_reserve_ttr_deadline_soon() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @SERVER()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @mustdiallocal(i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @mustsend(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @mustsend(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @ckresp(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @mustsend(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ckresp(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ckresp(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @usleep(i32 200000)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @mustsend(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @ckrespsub(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @ckrespsub(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @mustsend(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @ckresp(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @mustsend(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @ckrespsub(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @ckrespsub(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @mustsend(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @ckresp(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @mustsend(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @ckrespsub(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @ckrespsub(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SERVER(...) #1

declare dso_local i32 @mustdiallocal(i32) #1

declare dso_local i32 @mustsend(i32, i8*) #1

declare dso_local i32 @ckresp(i32, i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @ckrespsub(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
