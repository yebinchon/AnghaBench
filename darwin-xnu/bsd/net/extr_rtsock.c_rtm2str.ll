; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_rtsock.c_rtm2str.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_rtsock.c_rtm2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"RTM_?\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"RTM_ADD\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"RTM_DELETE\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"RTM_CHANGE\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"RTM_GET\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"RTM_LOSING\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"RTM_REDIRECT\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"RTM_MISS\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"RTM_LOCK\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"RTM_OLDADD\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"RTM_OLDDEL\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"RTM_RESOLVE\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"RTM_NEWADDR\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"RTM_DELADDR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"RTM_IFINFO\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"RTM_NEWMADDR\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"RTM_DELMADDR\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"RTM_GET_SILENT\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"RTM_IFINFO2\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"RTM_NEWMADDR2\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"RTM_GET2\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"RTM_GET_EXT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rtm2str(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %26 [
    i32 148, label %5
    i32 145, label %6
    i32 147, label %7
    i32 143, label %8
    i32 136, label %9
    i32 129, label %10
    i32 135, label %11
    i32 137, label %12
    i32 131, label %13
    i32 130, label %14
    i32 128, label %15
    i32 134, label %16
    i32 146, label %17
    i32 139, label %18
    i32 133, label %19
    i32 144, label %20
    i32 140, label %21
    i32 138, label %22
    i32 132, label %23
    i32 142, label %24
    i32 141, label %25
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %26

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %26

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %26

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %26

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %26

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %26

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %26

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %26

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %26

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %26

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %26

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %26

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %26

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %26

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %26

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %26

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %26

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %26

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %26

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %26

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %26

26:                                               ; preds = %1, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
