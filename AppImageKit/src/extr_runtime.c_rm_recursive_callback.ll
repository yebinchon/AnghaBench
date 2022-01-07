; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_runtime.c_rm_recursive_callback.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_runtime.c_rm_recursive_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.FTW = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: ftw error: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to remove %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to remove directory %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Unexpected fts_info\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rm_recursive_callback(i8* %0, %struct.stat* %1, i32 %2, %struct.FTW* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.FTW*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.stat* %1, %struct.stat** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.FTW* %3, %struct.FTW** %9, align 8
  %10 = load %struct.stat*, %struct.stat** %7, align 8
  %11 = load %struct.FTW*, %struct.FTW** %9, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %42 [
    i32 130, label %13
    i32 133, label %13
    i32 134, label %19
    i32 131, label %20
    i32 129, label %20
    i32 128, label %20
    i32 132, label %31
  ]

13:                                               ; preds = %4, %4
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @errno, align 4
  %17 = call i8* @strerror(i32 %16)
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %17)
  store i32 1, i32* %5, align 4
  br label %46

19:                                               ; preds = %4
  br label %45

20:                                               ; preds = %4, %4, %4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @remove(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @errno, align 4
  %28 = call i8* @strerror(i32 %27)
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %28)
  store i32 0, i32* %5, align 4
  br label %46

30:                                               ; preds = %20
  br label %45

31:                                               ; preds = %4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @rmdir(i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @errno, align 4
  %39 = call i8* @strerror(i32 %38)
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %37, i8* %39)
  store i32 0, i32* %5, align 4
  br label %46

41:                                               ; preds = %31
  br label %45

42:                                               ; preds = %4
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %46

45:                                               ; preds = %41, %30, %19
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %42, %35, %24, %13
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
