; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_ZipAddFileStart.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_ZipAddFileStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i8*, i32, i8*, i8*, i64, i8* }
%struct.TYPE_10__ = type { i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ZipAddFileStart(%struct.TYPE_8__* %0, i8* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = icmp eq %struct.TYPE_8__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @IsEmptyStr(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %5
  store i32 1, i32* %15, align 4
  br label %94

27:                                               ; preds = %22
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i64 (...) @LocalTime64()
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %15, align 4
  br label %94

38:                                               ; preds = %32
  %39 = trunc i64 %17 to i32
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @StrCpy(i8* %19, i32 %39, i8* %40)
  %42 = trunc i64 %17 to i32
  %43 = call i32 @ReplaceStrEx(i8* %19, i32 %42, i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %44 = call %struct.TYPE_9__* @ZeroMalloc(i32 48)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %13, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @StrCpy(i8* %47, i32 8, i8* %19)
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 4
  store i64 %52, i64* %54, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %62 = call i32 @Add(i32 %60, %struct.TYPE_9__* %61)
  %63 = call i32 @Zero(i8* %14, i32 1)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %73 = call i32 @WriteZipDataHeader(%struct.TYPE_9__* %72, i8* %14, i32 0)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = call i32 @WriteFifo(%struct.TYPE_10__* %76, i8* %14, i32 1)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @StrLen(i8* %86)
  %88 = call i32 @WriteFifo(%struct.TYPE_10__* %80, i8* %83, i32 %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store i32 -1, i32* %90, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %93, align 8
  store i32 0, i32* %15, align 4
  br label %94

94:                                               ; preds = %38, %37, %26
  %95 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %15, align 4
  switch i32 %96, label %98 [
    i32 0, label %97
    i32 1, label %97
  ]

97:                                               ; preds = %94, %94
  ret void

98:                                               ; preds = %94
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i64 @LocalTime64(...) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @ReplaceStrEx(i8*, i32, i8*, i8*, i8*, i32) #2

declare dso_local %struct.TYPE_9__* @ZeroMalloc(i32) #2

declare dso_local i32 @Add(i32, %struct.TYPE_9__*) #2

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32 @WriteZipDataHeader(%struct.TYPE_9__*, i8*, i32) #2

declare dso_local i32 @WriteFifo(%struct.TYPE_10__*, i8*, i32) #2

declare dso_local i32 @StrLen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
