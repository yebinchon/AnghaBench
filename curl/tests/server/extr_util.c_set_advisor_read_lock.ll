; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_util.c_set_advisor_read_lock.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_util.c_set_advisor_read_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error creating lock file %s error: %d %s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Error closing lock file %s error: %d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_advisor_read_lock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %3, align 8
  br label %9

9:                                                ; preds = %6
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @errno, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @EINTR, align 4
  %15 = icmp eq i32 %13, %14
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %6, label %18

18:                                               ; preds = %16
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 @logmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %23, i32 %25)
  br label %49

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @fclose(i32* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @EINTR, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %28, label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i8*, i8** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 @logmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %21, %43, %40
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @logmsg(i8*, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
