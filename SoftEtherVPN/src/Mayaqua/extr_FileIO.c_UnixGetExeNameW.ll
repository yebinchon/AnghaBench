; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_UnixGetExeNameW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_UnixGetExeNameW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8** }

@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnixGetExeNameW(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  br label %84

22:                                               ; preds = %18
  %23 = call i8* (...) @GetCurrentPathEnvStr()
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @CopyUtfToUni(i8* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call %struct.TYPE_4__* @ParseSplitedPathW(i8* %26)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %7, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %68

30:                                               ; preds = %22
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %62, %30
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i8**, i8*** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %12, align 8
  %44 = load i32, i32* @MAX_SIZE, align 4
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %13, align 8
  %47 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %14, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @ConbinePathW(i8* %47, i64 %45, i8* %48, i8* %49)
  %51 = call i64 @IsFileExistsInnerW(i8* %47)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @UniStrCpy(i8* %54, i64 %55, i8* %47)
  store i32 2, i32* %15, align 4
  br label %58

57:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %15, align 4
  switch i32 %60, label %85 [
    i32 0, label %61
    i32 2, label %65
  ]

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %11, align 8
  br label %31

65:                                               ; preds = %58, %31
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = call i32 @UniFreeToken(%struct.TYPE_4__* %66)
  br label %68

68:                                               ; preds = %65, %22
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @Free(i8* %69)
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @Free(i8* %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @Win32GetCurrentDirW(i8* %76, i64 %77)
  %79 = load i8*, i8** %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @ConbinePathW(i8* %79, i64 %80, i8* %81, i8* %82)
  br label %84

84:                                               ; preds = %21, %75, %68
  ret void

85:                                               ; preds = %58
  unreachable
}

declare dso_local i8* @GetCurrentPathEnvStr(...) #1

declare dso_local i8* @CopyUtfToUni(i8*) #1

declare dso_local %struct.TYPE_4__* @ParseSplitedPathW(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ConbinePathW(i8*, i64, i8*, i8*) #1

declare dso_local i64 @IsFileExistsInnerW(i8*) #1

declare dso_local i32 @UniStrCpy(i8*, i64, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @UniFreeToken(%struct.TYPE_4__*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @Win32GetCurrentDirW(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
