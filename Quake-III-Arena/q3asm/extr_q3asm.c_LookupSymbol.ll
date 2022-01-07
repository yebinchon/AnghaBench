; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_q3asm.c_LookupSymbol.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_q3asm.c_LookupSymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }

@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@passNumber = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%i\00", align 1
@currentFileIndex = common dso_local global i32 0, align 4
@symbols = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"ERROR: symbol %s undefined\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LookupSymbol(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @passNumber, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %66

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 36
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @currentFileIndex, align 4
  %25 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  store i8* %12, i8** %3, align 8
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @HashString(i8* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @symbols, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %4, align 8
  br label %30

30:                                               ; preds = %57, %26
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strcmp(i8* %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %66

56:                                               ; preds = %39, %33
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %4, align 8
  br label %30

61:                                               ; preds = %30
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @CodeError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  store i32 0, i32* @passNumber, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @DefineSymbol(i8* %64, i32 0)
  store i32 1, i32* @passNumber, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %61, %46, %15
  %67 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i32 @HashString(i8*) #2

declare dso_local i32 @strcmp(i8*, i32) #2

declare dso_local i32 @CodeError(i8*, i8*) #2

declare dso_local i32 @DefineSymbol(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
