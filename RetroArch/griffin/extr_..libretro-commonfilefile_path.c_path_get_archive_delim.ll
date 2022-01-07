; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilefile_path.c_path_get_archive_delim.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilefile_path.c_path_get_archive_delim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c".zip#\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".apk#\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".7z#\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @path_get_archive_delim(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @find_last_slash(i8* %6)
  store i8* %7, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %34

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strcasestr(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strcasestr(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %24, i8** %2, align 8
  br label %34

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @strcasestr(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  store i8* %32, i8** %2, align 8
  br label %34

33:                                               ; preds = %25
  store i8* null, i8** %2, align 8
  br label %34

34:                                               ; preds = %33, %30, %22, %10
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i8* @find_last_slash(i8*) #1

declare dso_local i8* @strcasestr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
