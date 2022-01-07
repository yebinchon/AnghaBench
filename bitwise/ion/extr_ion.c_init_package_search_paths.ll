; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_ion.c_init_package_search_paths.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_ion.c_init_package_search_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"IONHOME\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"error: Set the environment variable IONHOME to the Ion home directory (where system_packages is located)\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"system_packages\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"IONPATH\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_package_search_paths() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = call i32 @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @exit(i32 1) #4
  unreachable

13:                                               ; preds = %0
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %2, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %3, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 @path_copy(i8* %17, i8* %18)
  %20 = call i32 @path_join(i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @add_package_search_path(i8* %17)
  %22 = call i32 @add_package_search_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %13
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %45, %26
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 59
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @add_package_search_path_range(i8* %39, i8* %40)
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %38, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  br label %29

48:                                               ; preds = %29
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @add_package_search_path(i8* %53)
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %13
  %57 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %57)
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @path_copy(i8*, i8*) #1

declare dso_local i32 @path_join(i8*, i8*) #1

declare dso_local i32 @add_package_search_path(i8*) #1

declare dso_local i32 @add_package_search_path_range(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
