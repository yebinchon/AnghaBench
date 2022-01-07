; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiGetNextRecommendedVLanName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiGetNextRecommendedVLanName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CiGetNextRecommendedVLanName(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %83

22:                                               ; preds = %18
  %23 = call i32 @Zero(%struct.TYPE_7__* %8, i32 16)
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @CcEnumVLan(i32* %24, %struct.TYPE_7__* %8)
  %26 = load i64, i64* @ERR_NO_ERROR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %83

29:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %74, %29
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 128
  br i1 %32, label %33, label %77

33:                                               ; preds = %30
  %34 = load i32, i32* @MAX_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %13, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %14, align 8
  %38 = trunc i64 %35 to i32
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @CiGenerateVLanRegulatedName(i8* %37, i32 %38, i32 %39)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %59, %33
  %42 = load i32, i32* %11, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %48, i64 %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @StrCmpi(i32 %54, i8* %37)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32 1, i32* %10, align 4
  br label %62

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %41

62:                                               ; preds = %57, %41
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  store i32 1, i32* %12, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @StrCpy(i8* %66, i32 %67, i8* %37)
  store i32 2, i32* %15, align 4
  br label %70

69:                                               ; preds = %62
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %15, align 4
  switch i32 %72, label %85 [
    i32 0, label %73
    i32 2, label %77
  ]

73:                                               ; preds = %70
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %30

77:                                               ; preds = %70, %30
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @CiFreeClientEnumVLan(%struct.TYPE_7__* %8)
  br label %82

82:                                               ; preds = %80, %77
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %28, %21
  %84 = load i32, i32* %4, align 4
  ret i32 %84

85:                                               ; preds = %70
  unreachable
}

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @CcEnumVLan(i32*, %struct.TYPE_7__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CiGenerateVLanRegulatedName(i8*, i32, i32) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CiFreeClientEnumVLan(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
