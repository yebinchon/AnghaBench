; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_ConsoleLocalReadLine.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_ConsoleLocalReadLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [2 x i32] [i32 62, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"CON_USER_CANCEL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ConsoleLocalReadLine(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %59

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i8* bitcast ([2 x i32]* @.str to i8*), i8** %6, align 8
  br label %21

21:                                               ; preds = %20, %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @ConsoleWriteOutFile(%struct.TYPE_7__* %22, i8* %23, i32 0)
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = call i8* @ConsoleReadNextFromInFile(%struct.TYPE_7__* %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @UniPrint(i8* bitcast ([3 x i32]* @.str.1 to i8*), i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @UniPrint(i8* bitcast ([4 x i32]* @.str.2 to i8*), i8* %40)
  br label %42

42:                                               ; preds = %37, %32
  br label %46

43:                                               ; preds = %27, %21
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @Prompt(i8* %44)
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @ConsoleWriteOutFile(%struct.TYPE_7__* %50, i8* %51, i32 1)
  br label %57

53:                                               ; preds = %46
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 @ConsoleWriteOutFile(%struct.TYPE_7__* %54, i8* %55, i32 1)
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %57, %12
  %60 = load i8*, i8** %4, align 8
  ret i8* %60
}

declare dso_local i32 @ConsoleWriteOutFile(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i8* @ConsoleReadNextFromInFile(%struct.TYPE_7__*) #1

declare dso_local i32 @UniPrint(i8*, i8*) #1

declare dso_local i8* @Prompt(i8*) #1

declare dso_local i8* @_UU(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
