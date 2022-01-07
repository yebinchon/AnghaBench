; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_InitConsoleMessageHeap.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_InitConsoleMessageHeap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

@consolemessageheap = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"max_messages\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@freeconsolemessages = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitConsoleMessageHeap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  %7 = call i32 @FreeMemory(%struct.TYPE_5__* %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i64 @LibVarValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 16
  %14 = trunc i64 %13 to i32
  %15 = call i64 @GetClearedHunkMemory(i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** @consolemessageheap, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %24, align 8
  store i32 1, i32* %1, align 4
  br label %25

25:                                               ; preds = %51, %8
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %2, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %44
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %50, align 8
  br label %51

51:                                               ; preds = %30
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %25

54:                                               ; preds = %25
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sub nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  %61 = load i32, i32* %2, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @consolemessageheap, align 8
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** @freeconsolemessages, align 8
  ret void
}

declare dso_local i32 @FreeMemory(%struct.TYPE_5__*) #1

declare dso_local i64 @LibVarValue(i8*, i8*) #1

declare dso_local i64 @GetClearedHunkMemory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
