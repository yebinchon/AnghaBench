; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Parse.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i32 (i32*, i32)* }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"end of file inside menu item\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@itemParseKeywordHash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unknown menu item keyword %s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"couldn't parse menu item keyword %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Item_Parse(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @trap_PC_ReadToken(i32 %8, %struct.TYPE_5__* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @qfalse, align 4
  store i32 %12, i32* %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 123
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @qfalse, align 4
  store i32 %20, i32* %3, align 4
  br label %65

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %45, %64
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @trap_PC_ReadToken(i32 %23, %struct.TYPE_5__* %6)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @PC_SourceError(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @qfalse, align 4
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 125
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @qtrue, align 4
  store i32 %37, i32* %3, align 4
  br label %65

38:                                               ; preds = %30
  %39 = load i32, i32* @itemParseKeywordHash, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call %struct.TYPE_6__* @KeywordHash_Find(i32 %39, i8* %41)
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %7, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i32, i8*, ...) @PC_SourceError(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %22

50:                                               ; preds = %38
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (i32*, i32)*, i32 (i32*, i32)** %52, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 %53(i32* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i32, i8*, ...) @PC_SourceError(i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @qfalse, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %50
  br label %22

65:                                               ; preds = %58, %36, %26, %19, %11
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @trap_PC_ReadToken(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @PC_SourceError(i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @KeywordHash_Find(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
