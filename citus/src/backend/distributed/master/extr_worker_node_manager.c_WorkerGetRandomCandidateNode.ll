; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_worker_node_manager.c_WorkerGetRandomCandidateNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_worker_node_manager.c_WorkerGetRandomCandidateNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@WORKER_RACK_TRIES = common dso_local global i64 0, align 8
@WORKER_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @WorkerGetRandomCandidateNode(i32* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load i64, i64* @WORKER_RACK_TRIES, align 8
  store i64 %14, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @list_length(i32* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @PrimaryNodesNotInList(i32* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @list_length(i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %77

23:                                               ; preds = %1
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = call %struct.TYPE_4__* @FindRandomNodeFromList(i32* %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %4, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %2, align 8
  br label %77

30:                                               ; preds = %23
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @OddNumber(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %36

35:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %34
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %72, %36
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %37
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @linitial(i32* %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %10, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call %struct.TYPE_4__* @FindRandomNodeFromList(i32* %48)
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %4, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* @WORKER_LENGTH, align 4
  %56 = call i64 @strncmp(i8* %53, i8* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %41
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61, %41
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67, %61
  br label %75

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %37

75:                                               ; preds = %70, %37
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %2, align 8
  br label %77

77:                                               ; preds = %75, %26, %22
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %78
}

declare dso_local i64 @list_length(i32*) #1

declare dso_local i32* @PrimaryNodesNotInList(i32*) #1

declare dso_local %struct.TYPE_4__* @FindRandomNodeFromList(i32*) #1

declare dso_local i64 @OddNumber(i64) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
