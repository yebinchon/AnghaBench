; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_cmdlib.c_ExpandPath.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_cmdlib.c_ExpandPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ExpandPath.full = internal global [1024 x i8] zeroinitializer, align 16
@qdir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"ExpandPath called without qdir set\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ExpandPath(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** @qdir, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 47
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 92
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %14, %8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ExpandPath.full, i64 0, i64 0), i8* %27)
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ExpandPath.full, i64 0, i64 0), i8** %2, align 8
  br label %33

29:                                               ; preds = %20
  %30 = load i8*, i8** @qdir, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ExpandPath.full, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31)
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ExpandPath.full, i64 0, i64 0), i8** %2, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
