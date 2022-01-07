; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_EnumEraseFile.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_EnumEraseFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".log\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".config\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".old\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EnumEraseFile(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32 1, i32* %9, align 4
  br label %82

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call %struct.TYPE_9__* @EnumDir(i8* %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %76, %22
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %79

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %34, i64 %35
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %10, align 8
  %38 = trunc i64 %13 to i32
  %39 = load i8*, i8** %4, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @Format(i8* %15, i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %42)
  %44 = trunc i64 %13 to i32
  %45 = call i32 @NormalizePath(i8* %15, i32 %44, i8* %15)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %31
  %51 = call i64 @EndWith(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = call i64 @EndWith(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = call i64 @EndWith(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56, %53, %50
  %60 = call %struct.TYPE_8__* @ZeroMalloc(i32 8)
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %11, align 8
  %61 = call i32 @CopyStr(i8* %15)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %71 = call i32 @Add(i32* %69, %struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %59, %56
  br label %75

73:                                               ; preds = %31
  %74 = load i32*, i32** %3, align 8
  call void @EnumEraseFile(i32* %74, i8* %15)
  br label %75

75:                                               ; preds = %73, %72
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %25

79:                                               ; preds = %25
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = call i32 @FreeDir(%struct.TYPE_9__* %80)
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %21
  %83 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %9, align 4
  switch i32 %84, label %86 [
    i32 0, label %85
    i32 1, label %85
  ]

85:                                               ; preds = %82, %82
  ret void

86:                                               ; preds = %82
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_9__* @EnumDir(i8*) #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @NormalizePath(i8*, i32, i8*) #2

declare dso_local i64 @EndWith(i8*, i8*) #2

declare dso_local %struct.TYPE_8__* @ZeroMalloc(i32) #2

declare dso_local i32 @CopyStr(i8*) #2

declare dso_local i32 @Add(i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @FreeDir(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
