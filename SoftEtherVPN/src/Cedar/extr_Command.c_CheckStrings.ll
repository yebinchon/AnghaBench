; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckStrings.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckStrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32** }

@.str = private unnamed_addr constant [21 x i8] c"CHECK_TEST_123456789\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 44, i32 37, i32 117, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 44, i32 0], align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"UniParseToken Failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"UniToInt Failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"UniToStr Failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckStrings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %2, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %3, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  %18 = load i32, i32* @MAX_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %21 = mul nuw i64 4, %19
  %22 = trunc i64 %21 to i32
  %23 = call i32 @UniStrCpy(i32* %20, i32 %22, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %35, %0
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = mul nuw i64 4, %19
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @UniFormat(i32* %20, i32 %32, i8* bitcast ([6 x i32]* @.str.2 to i8*), i32* %20, i32 %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %24

38:                                               ; preds = %24
  %39 = call %struct.TYPE_4__* @UniParseToken(i32* %20, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %9, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %59, %38
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @UniToInt(i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %40

62:                                               ; preds = %40
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = call i32 @UniFreeToken(%struct.TYPE_4__* %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 @Print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %85

70:                                               ; preds = %62
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @UniToInt(i32* %71)
  %73 = icmp ne i32 %72, 123456789
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @Print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %85

76:                                               ; preds = %70
  %77 = trunc i64 %15 to i32
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @UniToStr(i8* %17, i32 %77, i32* %78)
  %80 = call i32 @ToInt(i8* %17)
  %81 = icmp ne i32 %80, 123456789
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 @Print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %85

84:                                               ; preds = %76
  store i32 1, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %85

85:                                               ; preds = %84, %82, %74, %68
  %86 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %1, align 4
  ret i32 %87
}

declare dso_local i32* @_UU(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniStrCpy(i32*, i32, i8*) #1

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @UniParseToken(i32*, i8*) #1

declare dso_local i32 @UniToInt(i32*) #1

declare dso_local i32 @UniFreeToken(%struct.TYPE_4__*) #1

declare dso_local i32 @Print(i8*) #1

declare dso_local i32 @UniToStr(i8*, i32, i32*) #1

declare dso_local i32 @ToInt(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
