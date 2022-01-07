; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_intermediate_results.c_CreateIntermediateResultsDirectory.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_intermediate_results.c_CreateIntermediateResultsDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CreatedResultsDirectory = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"could not create intermediate results directory \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @CreateIntermediateResultsDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CreateIntermediateResultsDirectory() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = call i8* (...) @IntermediateResultsDirectory()
  store i8* %4, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @CreatedResultsDirectory, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %0
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @S_IRWXU, align 4
  %10 = call i32 @mkdir(i8* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @EEXIST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  store i8* %18, i8** %1, align 8
  br label %28

19:                                               ; preds = %13
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 (...) @errcode_for_file_access()
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @ereport(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %19, %7
  store i32 1, i32* @CreatedResultsDirectory, align 4
  br label %26

26:                                               ; preds = %25, %0
  %27 = load i8*, i8** %2, align 8
  store i8* %27, i8** %1, align 8
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i8*, i8** %1, align 8
  ret i8* %29
}

declare dso_local i8* @IntermediateResultsDirectory(...) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
