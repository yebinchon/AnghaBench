; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_walg.c_waldirlock.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_walg.c_waldirlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.flock = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"/lock\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s/lock\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@F_WRLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waldirlock(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.flock, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = add nsw i32 %12, %13
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @twarn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @snprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @O_WRONLY, align 4
  %31 = load i32, i32* @O_CREAT, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @open(i8* %29, i32 %32, i32 384)
  store i32 %33, i32* %5, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = call i32 @twarn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

40:                                               ; preds = %22
  %41 = load i32, i32* @F_WRLCK, align 4
  %42 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @SEEK_SET, align 4
  %44 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @F_SETLK, align 4
  %49 = call i32 @fcntl(i32 %47, i32 %48, %struct.flock* %6)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = call i32 @twarn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

54:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %52, %38, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @twarn(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
