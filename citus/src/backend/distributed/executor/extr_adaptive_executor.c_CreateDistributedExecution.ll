; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_CreateDistributedExecution.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_CreateDistributedExecution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i8**, i8*, i8*, i32*, i64, i8*, i8*, i8*, i8*, i32*, %struct.TYPE_6__*, i32, i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@NIL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32, i32*, i32, i32, %struct.TYPE_6__*, i32*, i32)* @CreateDistributedExecution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @CreateDistributedExecution(i32 %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_6__* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = call i64 @palloc0(i32 144)
  %18 = inttoptr i64 %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %15, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 19
  store i32 %19, i32* %21, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 18
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** @NIL, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @NIL, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = call i64 @palloc0(i32 4)
  %35 = inttoptr i64 %34 to i32*
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 17
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 16
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 15
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %43, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 14
  store i32* %44, i32** %46, align 8
  %47 = load i8*, i8** @NIL, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 13
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @NIL, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 12
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i8* @list_length(i32* %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 11
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i8* @list_length(i32* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 10
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  store i32 0, i32* %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %73 = icmp ne %struct.TYPE_6__* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %7
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %76 = call i32* @TupleDescGetAttInMetadata(%struct.TYPE_6__* %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 8
  store i32* %76, i32** %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i64 @palloc0(i32 %84)
  %86 = inttoptr i64 %85 to i8**
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 5
  store i8** %86, i8*** %88, align 8
  br label %94

89:                                               ; preds = %7
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 8
  store i32* null, i32** %91, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  store i8** null, i8*** %93, align 8
  br label %94

94:                                               ; preds = %89, %74
  %95 = load i32*, i32** %9, align 8
  %96 = call i64 @ShouldExecuteTasksLocally(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @TaskListModifiesDatabase(i32 %99, i32* %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 7
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 6
  %111 = call i32 @ExtractLocalAndRemoteTasks(i32 %105, i32* %106, i8** %108, i8** %110)
  br label %112

112:                                              ; preds = %98, %94
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  ret %struct.TYPE_7__* %113
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i8* @list_length(i32*) #1

declare dso_local i32* @TupleDescGetAttInMetadata(%struct.TYPE_6__*) #1

declare dso_local i64 @ShouldExecuteTasksLocally(i32*) #1

declare dso_local i32 @TaskListModifiesDatabase(i32, i32*) #1

declare dso_local i32 @ExtractLocalAndRemoteTasks(i32, i32*, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
