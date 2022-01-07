; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_worker_node_manager.c_WorkerGetLocalFirstCandidateNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_worker_node_manager.c_WorkerGetLocalFirstCandidateNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Could not find the first worker node for local-node-first policy.\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Make sure that you are not on the master node.\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"localhost.localdomain\00", align 1
@WORKER_LENGTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"could not find worker node for host: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @WorkerGetLocalFirstCandidateNode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @list_length(i32* %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = call %struct.TYPE_4__* (...) @makeStringInfo()
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %5, align 8
  store i8* null, i8** %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = call i8* @ClientHostAddress(%struct.TYPE_4__* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @errmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = call i32 @errdetail(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @errhint(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %18, %12
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @WORKER_LENGTH, align 4
  %31 = call i64 @strncmp(i8* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i8* @pstrdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %33, %25
  %36 = load i8*, i8** %6, align 8
  %37 = call i32* @WorkerGetNodeWithName(i8* %36)
  store i32* %37, i32** %3, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  %44 = call i32 @ereport(i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %49

46:                                               ; preds = %1
  %47 = load i32*, i32** %2, align 8
  %48 = call i32* @WorkerGetRandomCandidateNode(i32* %47)
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %46, %45
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i64 @list_length(i32*) #1

declare dso_local %struct.TYPE_4__* @makeStringInfo(...) #1

declare dso_local i8* @ClientHostAddress(%struct.TYPE_4__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32* @WorkerGetNodeWithName(i8*) #1

declare dso_local i32* @WorkerGetRandomCandidateNode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
