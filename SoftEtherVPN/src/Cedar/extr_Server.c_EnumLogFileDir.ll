; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_EnumLogFileDir.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_EnumLogFileDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i64, i8*, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".log\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EnumLogFileDir(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %2
  store i32 1, i32* %10, align 4
  br label %113

29:                                               ; preds = %25
  %30 = trunc i64 %17 to i32
  %31 = call i32 @GetExeDir(i8* %19, i32 %30)
  %32 = trunc i64 %21 to i32
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @Format(i8* %22, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %33)
  %35 = call %struct.TYPE_9__* @EnumDir(i8* %22)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %9, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = icmp eq %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %113

39:                                               ; preds = %29
  store i64 0, i64* %5, align 8
  br label %40

40:                                               ; preds = %107, %39
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %110

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %11, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %106

57:                                               ; preds = %46
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %57
  %63 = load i32, i32* @MAX_PATH, align 4
  %64 = zext i32 %63 to i64
  %65 = call i8* @llvm.stacksave()
  store i8* %65, i8** %12, align 8
  %66 = alloca i8, i64 %64, align 16
  store i64 %64, i64* %13, align 8
  %67 = load i32, i32* @MAX_PATH, align 4
  %68 = zext i32 %67 to i64
  %69 = alloca i8, i64 %68, align 16
  store i64 %68, i64* %14, align 8
  %70 = trunc i64 %68 to i32
  %71 = load i8*, i8** %4, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @Format(i8* %69, i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %71, i8* %74)
  %76 = trunc i64 %64 to i32
  %77 = call i32 @Format(i8* %66, i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %69)
  %78 = call i64 @EndWith(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %62
  %81 = call %struct.TYPE_8__* @ZeroMalloc(i32 24)
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %15, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @StrCpy(i32 %84, i32 4, i8* %69)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @MIN(i64 %88, i32 -1)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @GetMachineName(i32 %99, i32 4)
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %103 = call i32 @Insert(i32* %101, %struct.TYPE_8__* %102)
  br label %104

104:                                              ; preds = %80, %62
  %105 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %105)
  br label %106

106:                                              ; preds = %104, %57, %46
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %5, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %5, align 8
  br label %40

110:                                              ; preds = %40
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %112 = call i32 @FreeDir(%struct.TYPE_9__* %111)
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %38, %28
  %114 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %10, align 4
  switch i32 %115, label %117 [
    i32 0, label %116
    i32 1, label %116
  ]

116:                                              ; preds = %113, %113
  ret void

117:                                              ; preds = %113
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetExeDir(i8*, i32) #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i8*) #2

declare dso_local %struct.TYPE_9__* @EnumDir(i8*) #2

declare dso_local i64 @EndWith(i8*, i8*) #2

declare dso_local %struct.TYPE_8__* @ZeroMalloc(i32) #2

declare dso_local i32 @StrCpy(i32, i32, i8*) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i32 @GetMachineName(i32, i32) #2

declare dso_local i32 @Insert(i32*, %struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @FreeDir(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
