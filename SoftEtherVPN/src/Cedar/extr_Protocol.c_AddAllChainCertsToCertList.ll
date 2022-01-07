; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_AddAllChainCertsToCertList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_AddAllChainCertsToCertList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i8* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 99, i32 104, i32 97, i32 105, i32 110, i32 95, i32 99, i32 101, i32 114, i32 116, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddAllChainCertsToCertList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i32, i32* @MAX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %3, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %17 = load i32, i32* @MAX_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %82

23:                                               ; preds = %1
  %24 = mul nuw i64 4, %18
  %25 = trunc i64 %24 to i32
  %26 = call i32 @GetExeDirW(i32* %19, i32 %25)
  %27 = mul nuw i64 4, %14
  %28 = trunc i64 %27 to i32
  %29 = call i32 @CombinePathW(i32* %16, i32 %28, i32* %19, i8* bitcast ([12 x i32]* @.str to i8*))
  %30 = call i32 @MakeDirExW(i32* %16)
  %31 = call %struct.TYPE_5__* @EnumDirW(i32* %16)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %6, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %81

34:                                               ; preds = %23
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %75, %34
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %44, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %9, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %41
  %53 = load i32, i32* @MAX_SIZE, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %10, align 8
  %56 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %11, align 8
  %57 = mul nuw i64 4, %54
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @CombinePathW(i32* %56, i32 %58, i32* %16, i8* %61)
  %63 = call i32* @FileToXW(i32* %56)
  store i32* %63, i32** %12, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %52
  %67 = load i32*, i32** %2, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @AddXToCertList(i32* %67, i32* %68)
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @FreeX(i32* %70)
  br label %72

72:                                               ; preds = %66, %52
  %73 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %73)
  br label %74

74:                                               ; preds = %72, %41
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  br label %35

78:                                               ; preds = %35
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = call i32 @FreeDir(%struct.TYPE_5__* %79)
  br label %81

81:                                               ; preds = %78, %23
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %22
  %83 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %7, align 4
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

declare dso_local i32 @GetExeDirW(i32*, i32) #2

declare dso_local i32 @CombinePathW(i32*, i32, i32*, i8*) #2

declare dso_local i32 @MakeDirExW(i32*) #2

declare dso_local %struct.TYPE_5__* @EnumDirW(i32*) #2

declare dso_local i32* @FileToXW(i32*) #2

declare dso_local i32 @AddXToCertList(i32*, i32*) #2

declare dso_local i32 @FreeX(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @FreeDir(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
