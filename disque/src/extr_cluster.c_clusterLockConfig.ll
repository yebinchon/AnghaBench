; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterLockConfig.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterLockConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Can't open %s in order to acquire a lock: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@LOCK_EX = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [166 x i8] c"Sorry, the cluster configuration file %s is already used by a different Disque node. Please make sure that different nodes use different cluster configuration files.\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Impossible to lock %s: %s\00", align 1
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clusterLockConfig(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @O_WRONLY, align 4
  %7 = load i32, i32* @O_CREAT, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @open(i8* %5, i32 %8, i32 420)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @LL_WARNING, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = load i64, i64* @errno, align 8
  %16 = call i32 @strerror(i64 %15)
  %17 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %16)
  %18 = load i32, i32* @C_ERR, align 4
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @LOCK_EX, align 4
  %22 = load i32, i32* @LOCK_NB, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @flock(i32 %20, i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EWOULDBLOCK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @LL_WARNING, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %31, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %40

34:                                               ; preds = %26
  %35 = load i32, i32* @LL_WARNING, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = load i64, i64* @errno, align 8
  %38 = call i32 @strerror(i64 %37)
  %39 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %38)
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load i32, i32* @C_ERR, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %19
  %45 = load i32, i32* @C_OK, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %40, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @serverLog(i32, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @flock(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
