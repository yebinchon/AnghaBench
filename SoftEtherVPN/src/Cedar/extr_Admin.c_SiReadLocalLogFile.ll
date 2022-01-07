; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_SiReadLocalLogFile.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_SiReadLocalLogFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@FTP_BLOCK_SIZE = common dso_local global i32 0, align 4
@FILE_BEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiReadLocalLogFile(i32* %0, i8* %1, i64 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = icmp eq %struct.TYPE_4__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26, %4
  store i32 1, i32* %13, align 4
  br label %81

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = call i32 @Zero(%struct.TYPE_4__* %34, i32 4)
  %36 = trunc i64 %18 to i32
  %37 = call i32 @GetExeDir(i8* %20, i32 %36)
  %38 = trunc i64 %22 to i32
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @Format(i8* %23, i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %39)
  %41 = call i32* @FileOpenEx(i8* %23, i32 0, i32 0)
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %80

44:                                               ; preds = %33
  %45 = load i32*, i32** %12, align 8
  %46 = call i64 @FileSize(i32* %45)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i32, i32* @FTP_BLOCK_SIZE, align 4
  %55 = call i64 @MIN(i64 %53, i32 %54)
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = call i8* @ZeroMalloc(i64 %56)
  store i8* %57, i8** %16, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* @FILE_BEGIN, align 4
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @FileSeek(i32* %58, i32 %59, i64 %60)
  %62 = load i32*, i32** %12, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @FileRead(i32* %62, i8* %63, i64 %64)
  %66 = call i32 (...) @NewBuf()
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %16, align 8
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @WriteBuf(i32 %71, i8* %72, i64 %73)
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 @Free(i8* %75)
  br label %77

77:                                               ; preds = %50, %44
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @FileClose(i32* %78)
  br label %80

80:                                               ; preds = %77, %33
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %80, %32
  %82 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %13, align 4
  switch i32 %83, label %85 [
    i32 0, label %84
    i32 1, label %84
  ]

84:                                               ; preds = %81, %81
  ret void

85:                                               ; preds = %81
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @GetExeDir(i8*, i32) #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @FileOpenEx(i8*, i32, i32) #2

declare dso_local i64 @FileSize(i32*) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i8* @ZeroMalloc(i64) #2

declare dso_local i32 @FileSeek(i32*, i32, i64) #2

declare dso_local i32 @FileRead(i32*, i8*, i64) #2

declare dso_local i32 @NewBuf(...) #2

declare dso_local i32 @WriteBuf(i32, i8*, i64) #2

declare dso_local i32 @Free(i8*) #2

declare dso_local i32 @FileClose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
