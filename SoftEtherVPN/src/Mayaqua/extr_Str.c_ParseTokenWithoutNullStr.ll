; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ParseTokenWithoutNullStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ParseTokenWithoutNullStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ParseTokenWithoutNullStr(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 0, i8* %11, align 1
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call %struct.TYPE_9__* (...) @NullToken()
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %3, align 8
  br label %123

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i8* (...) @DefaultTokenSplitChars()
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %10, align 8
  %26 = call i32* @NewListFast(i32* null)
  store i32* %26, i32** %6, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @StrLen(i8* %27)
  store i64 %28, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %78, %24
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %13, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %13, align 1
  %41 = call i32 @IsCharInStr(i8* %39, i8 signext %40)
  store i32 %41, i32* %14, align 4
  %42 = load i8, i8* %13, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 1, i32* %14, align 4
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = call i32 @WriteBuf(%struct.TYPE_10__* %50, i8* %13, i32 1)
  br label %76

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = call i32 @WriteBuf(%struct.TYPE_10__* %56, i8* %11, i32 1)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i64 @StrLen(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @CopyStr(i8* %69)
  %71 = call i32 @Insert(i32* %65, i32 %70)
  br label %72

72:                                               ; preds = %64, %55
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %74 = call i32 @ClearBuf(%struct.TYPE_10__* %73)
  br label %75

75:                                               ; preds = %72, %52
  br label %76

76:                                               ; preds = %75, %49
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %76
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %7, align 8
  br label %29

81:                                               ; preds = %29
  %82 = call i8* @ZeroMalloc(i32 16)
  %83 = bitcast i8* %82 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %12, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @LIST_NUM(i32* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = mul i64 8, %91
  %93 = trunc i64 %92 to i32
  %94 = call i8* @ZeroMalloc(i32 %93)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  store i64 0, i64* %7, align 8
  br label %98

98:                                               ; preds = %114, %81
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = icmp ult i64 %99, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %98
  %106 = load i32*, i32** %6, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @LIST_DATA(i32* %106, i64 %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %105
  %115 = load i64, i64* %7, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %7, align 8
  br label %98

117:                                              ; preds = %98
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @ReleaseList(i32* %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %121 = call i32 @FreeBuf(%struct.TYPE_10__* %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %3, align 8
  br label %123

123:                                              ; preds = %117, %17
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %124
}

declare dso_local %struct.TYPE_9__* @NullToken(...) #1

declare dso_local i8* @DefaultTokenSplitChars(...) #1

declare dso_local %struct.TYPE_10__* @NewBuf(...) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i32 @IsCharInStr(i8*, i8 signext) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @Insert(i32*, i32) #1

declare dso_local i32 @CopyStr(i8*) #1

declare dso_local i32 @ClearBuf(%struct.TYPE_10__*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @LIST_NUM(i32*) #1

declare dso_local i32 @LIST_DATA(i32*, i64) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
