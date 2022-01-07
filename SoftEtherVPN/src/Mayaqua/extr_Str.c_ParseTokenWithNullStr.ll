; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ParseTokenWithNullStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ParseTokenWithNullStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ParseTokenWithNullStr(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 0, i8* %10, align 1
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call %struct.TYPE_9__* (...) @NullToken()
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %3, align 8
  br label %109

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i8* (...) @DefaultTokenSplitChars()
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %9, align 8
  %25 = call i32* @NewListFast(i32* null)
  store i32* %25, i32** %6, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @StrLen(i8* %26)
  store i64 %27, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %64, %23
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %12, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %12, align 1
  %40 = call i32 @IsCharInStr(i8* %38, i8 signext %39)
  store i32 %40, i32* %13, align 4
  %41 = load i8, i8* %12, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 1, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = call i32 @WriteBuf(%struct.TYPE_10__* %49, i8* %12, i32 1)
  br label %63

51:                                               ; preds = %45
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = call i32 @WriteBuf(%struct.TYPE_10__* %52, i8* %10, i32 1)
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @CopyStr(i8* %58)
  %60 = call i32 @Insert(i32* %54, i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = call i32 @ClearBuf(%struct.TYPE_10__* %61)
  br label %63

63:                                               ; preds = %51, %48
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %7, align 8
  br label %28

67:                                               ; preds = %28
  %68 = call i8* @ZeroMalloc(i32 16)
  %69 = bitcast i8* %68 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %11, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @LIST_NUM(i32* %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = mul i64 8, %77
  %79 = trunc i64 %78 to i32
  %80 = call i8* @ZeroMalloc(i32 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  store i64 0, i64* %7, align 8
  br label %84

84:                                               ; preds = %100, %67
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %85, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load i32*, i32** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @LIST_DATA(i32* %92, i64 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %94, i32* %99, align 4
  br label %100

100:                                              ; preds = %91
  %101 = load i64, i64* %7, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %7, align 8
  br label %84

103:                                              ; preds = %84
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @ReleaseList(i32* %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = call i32 @FreeBuf(%struct.TYPE_10__* %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %3, align 8
  br label %109

109:                                              ; preds = %103, %16
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %110
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
