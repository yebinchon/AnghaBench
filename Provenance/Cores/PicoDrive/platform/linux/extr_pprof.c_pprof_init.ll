; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_pprof.c_pprof_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_pprof.c_pprof_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"pprof: measured diff is %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"pprof: ftok failed\00", align 1
@IPC_CREAT = common dso_local global i32 0, align 4
@IPC_EXCL = common dso_local global i32 0, align 4
@shmemid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"pprof: shmget failed\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"pprof: shmat failed\00", align 1
@pp_counters = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"pprof: pp_counters cleared.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pprof_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %5 = call i32 (...) @pprof_get_one()
  store i32 %5, i32* %4, align 4
  %6 = call i32 (...) @pprof_get_one()
  %7 = load i32, i32* %4, align 4
  %8 = sub i32 %6, %7
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @ftok(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 44811054)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %47

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @IPC_CREAT, align 4
  %18 = load i32, i32* @IPC_EXCL, align 4
  %19 = or i32 %17, %18
  %20 = or i32 %19, 420
  %21 = call i32 @shmget(i32 %16, i32 1, i32 %20)
  store i32 %21, i32* @shmemid, align 4
  %22 = load i32, i32* @shmemid, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @shmget(i32 %25, i32 1, i32 420)
  store i32 %26, i32* @shmemid, align 4
  %27 = load i32, i32* @shmemid, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %47

31:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i32, i32* @shmemid, align 4
  %34 = call i8* @shmat(i32 %33, i32* null, i32 0)
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = icmp eq i8* %35, inttoptr (i64 -1 to i8*)
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %47

39:                                               ; preds = %32
  %40 = load i8*, i8** %3, align 8
  store i8* %40, i8** @pp_counters, align 8
  %41 = load i32, i32* %1, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8*, i8** @pp_counters, align 8
  %45 = call i32 @memset(i8* %44, i32 0, i32 1)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %13, %29, %37, %43, %39
  ret void
}

declare dso_local i32 @pprof_get_one(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ftok(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i8* @shmat(i32, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
