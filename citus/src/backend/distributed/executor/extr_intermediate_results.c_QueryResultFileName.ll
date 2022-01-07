; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_intermediate_results.c_QueryResultFileName.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_intermediate_results.c_QueryResultFileName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"result key \22%s\22 contains invalid character\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Result keys may only contain letters, numbers, underscores and hyphens.\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s/%s.data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @QueryResultFileName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @QueryResultFileName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = call %struct.TYPE_4__* (...) @makeStringInfo()
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = call i8* (...) @IntermediateResultsDirectory()
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %62, %1
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sge i32 %16, 97
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sle i32 %21, 122
  br i1 %22, label %61, label %23

23:                                               ; preds = %18, %13
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sge i32 %26, 65
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %31, 90
  br i1 %32, label %61, label %33

33:                                               ; preds = %28, %23
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 48
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %61, label %43

43:                                               ; preds = %38, %33
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 95
  br i1 %47, label %61, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_INVALID_NAME, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = load i8*, i8** %2, align 8
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = call i32 @errhint(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @ereport(i32 %54, i32 %59)
  br label %61

61:                                               ; preds = %53, %48, %43, %38, %28, %18
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %5, align 8
  br label %9

65:                                               ; preds = %9
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load i8*, i8** %2, align 8
  %69 = call i32 @appendStringInfo(%struct.TYPE_4__* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %67, i8* %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  ret i8* %72
}

declare dso_local %struct.TYPE_4__* @makeStringInfo(...) #1

declare dso_local i8* @IntermediateResultsDirectory(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_4__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
