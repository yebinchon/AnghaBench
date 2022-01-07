; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_textfilter.c_do_counters.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_textfilter.c_do_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_counters.counter_id = internal global i32 -1, align 4
@do_counters.counter = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"@@\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%i%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_counters(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %4, align 8
  br label %6

6:                                                ; preds = %39, %22, %1
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @strstr(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %49

10:                                               ; preds = %6
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 2
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp slt i32 %14, 48
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sgt i32 %20, 57
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %10
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  br label %6

25:                                               ; preds = %16
  %26 = load i32, i32* @do_counters.counter_id, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %30, 48
  %32 = icmp ne i32 %26, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 48
  store i32 %38, i32* @do_counters.counter_id, align 4
  store i32 1, i32* @do_counters.counter, align 4
  br label %39

39:                                               ; preds = %33, %25
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %41 = load i32, i32* @do_counters.counter, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @do_counters.counter, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  %45 = call i32 @snprintf(i8* %40, i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %44)
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %48 = call i32 @strcpy(i8* %46, i8* %47)
  br label %6

49:                                               ; preds = %6
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
