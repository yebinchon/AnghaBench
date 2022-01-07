; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/zero-to-n/extr_zero-to-n.c_parse_wakeup_pattern.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/zero-to-n/extr_zero-to-n.c_parse_wakeup_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"chain\00", align 1
@WAKE_CHAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"hop\00", align 1
@WAKE_HOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"broadcast-single-sem\00", align 1
@WAKE_BROADCAST_ONESEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"broadcast-per-thread\00", align 1
@WAKE_BROADCAST_PERTHREAD = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid wakeup pattern \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_wakeup_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_wakeup_pattern(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @WAKE_CHAIN, align 4
  store i32 %8, i32* %2, align 4
  br label %34

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @WAKE_HOP, align 4
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @WAKE_BROADCAST_ONESEM, align 4
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @WAKE_BROADCAST_PERTHREAD, align 4
  store i32 %26, i32* %2, align 4
  br label %34

27:                                               ; preds = %21
  %28 = load i32, i32* @EX_USAGE, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @errx(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %7, %13, %19, %25, %33
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
