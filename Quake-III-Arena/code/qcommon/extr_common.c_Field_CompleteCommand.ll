; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Field_CompleteCommand.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Field_CompleteCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64 }

@completionField = common dso_local global %struct.TYPE_6__* null, align 8
@completionString = common dso_local global i8* null, align 8
@matchCount = common dso_local global i32 0, align 4
@shortestMatch = common dso_local global i64* null, align 8
@FindMatches = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\\%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"]%s\0A\00", align 1
@PrintMatches = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Field_CompleteCommand(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** @completionField, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completionField, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @Cmd_TokenizeString(i8* %7)
  %9 = call i8* @Cmd_Argv(i32 0)
  store i8* %9, i8** @completionString, align 8
  %10 = load i8*, i8** @completionString, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 92
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** @completionString, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %1
  %22 = load i8*, i8** @completionString, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** @completionString, align 8
  br label %24

24:                                               ; preds = %21, %15
  store i32 0, i32* @matchCount, align 4
  %25 = load i64*, i64** @shortestMatch, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 0, i64* %26, align 8
  %27 = load i8*, i8** @completionString, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %93

31:                                               ; preds = %24
  %32 = load i32, i32* @FindMatches, align 4
  %33 = call i32 @Cmd_CommandCompletion(i32 %32)
  %34 = load i32, i32* @FindMatches, align 4
  %35 = call i32 @Cvar_CommandCompletion(i32 %34)
  %36 = load i32, i32* @matchCount, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %93

39:                                               ; preds = %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completionField, align 8
  %41 = call i32 @Com_Memcpy(%struct.TYPE_6__* %3, %struct.TYPE_6__* %40, i32 16)
  %42 = load i32, i32* @matchCount, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completionField, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i64*, i64** @shortestMatch, align 8
  %49 = call i32 @Com_sprintf(i8* %47, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %48)
  %50 = call i32 (...) @Cmd_Argc()
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completionField, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @Q_strcat(i8* %55, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %62

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** @completionString, align 8
  %61 = call i32 @ConcatRemaining(i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completionField, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completionField, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %93

69:                                               ; preds = %39
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completionField, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i64*, i64** @shortestMatch, align 8
  %74 = call i32 @Com_sprintf(i8* %72, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completionField, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completionField, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** @completionString, align 8
  %84 = call i32 @ConcatRemaining(i8* %82, i8* %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completionField, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @Com_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  %89 = load i32, i32* @PrintMatches, align 4
  %90 = call i32 @Cmd_CommandCompletion(i32 %89)
  %91 = load i32, i32* @PrintMatches, align 4
  %92 = call i32 @Cvar_CommandCompletion(i32 %91)
  br label %93

93:                                               ; preds = %69, %62, %38, %30
  ret void
}

declare dso_local i32 @Cmd_TokenizeString(i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @Cmd_CommandCompletion(i32) #1

declare dso_local i32 @Cvar_CommandCompletion(i32) #1

declare dso_local i32 @Com_Memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i64*) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #1

declare dso_local i32 @ConcatRemaining(i8*, i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
