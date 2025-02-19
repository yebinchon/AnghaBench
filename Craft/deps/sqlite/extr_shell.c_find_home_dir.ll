; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_find_home_dir.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_find_home_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@find_home_dir.home_dir = internal global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @find_home_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_home_dir() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = load i8*, i8** @find_home_dir.home_dir, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i8*, i8** @find_home_dir.home_dir, align 8
  store i8* %9, i8** %1, align 8
  br label %44

10:                                               ; preds = %0
  %11 = call i32 (...) @getuid()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.passwd* @getpwuid(i32 %12)
  store %struct.passwd* %13, %struct.passwd** %2, align 8
  %14 = icmp ne %struct.passwd* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.passwd*, %struct.passwd** %2, align 8
  %17 = getelementptr inbounds %struct.passwd, %struct.passwd* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** @find_home_dir.home_dir, align 8
  br label %19

19:                                               ; preds = %15, %10
  %20 = load i8*, i8** @find_home_dir.home_dir, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** @find_home_dir.home_dir, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i8*, i8** @find_home_dir.home_dir, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load i8*, i8** @find_home_dir.home_dir, align 8
  %29 = call i32 @strlen30(i8* %28)
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i8* @malloc(i32 %31)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** @find_home_dir.home_dir, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @memcpy(i8* %36, i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %27
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** @find_home_dir.home_dir, align 8
  br label %42

42:                                               ; preds = %40, %24
  %43 = load i8*, i8** @find_home_dir.home_dir, align 8
  store i8* %43, i8** %1, align 8
  br label %44

44:                                               ; preds = %42, %8
  %45 = load i8*, i8** %1, align 8
  ret i8* %45
}

declare dso_local i32 @getuid(...) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlen30(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
