; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_ReadValue.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_ReadValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_VALUE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ReadValue(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %128

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %126 [
    i32 131, label %20
    i32 130, label %24
    i32 132, label %28
    i32 129, label %53
    i32 128, label %83
  ]

20:                                               ; preds = %18
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @ReadBufInt(i32* %21)
  %23 = call i32* @NewIntValue(i32 %22)
  store i32* %23, i32** %14, align 8
  br label %126

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @ReadBufInt64(i32* %25)
  %27 = call i32* @NewInt64Value(i32 %26)
  store i32* %27, i32** %14, align 8
  br label %126

28:                                               ; preds = %18
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @ReadBufInt(i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @MAX_VALUE_SIZE, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %126

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  %37 = call i8* @Malloc(i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @ReadBuf(i32* %38, i8* %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @Free(i8* %45)
  br label %126

47:                                               ; preds = %35
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32* @NewDataValue(i8* %48, i32 %49)
  store i32* %50, i32** %14, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @Free(i8* %51)
  br label %126

53:                                               ; preds = %18
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @ReadBufInt(i32* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @MAX_VALUE_SIZE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %126

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i8* @Malloc(i32 %63)
  store i8* %64, i8** %9, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ReadBuf(i32* %65, i8* %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @Free(i8* %72)
  br label %126

74:                                               ; preds = %61
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %9, align 8
  %80 = call i32* @NewStrValue(i8* %79)
  store i32* %80, i32** %14, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @Free(i8* %81)
  br label %126

83:                                               ; preds = %18
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @ReadBufInt(i32* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @MAX_VALUE_SIZE, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %126

90:                                               ; preds = %83
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i8* @ZeroMalloc(i32 %92)
  store i8* %93, i8** %7, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @ReadBuf(i32* %94, i8* %95, i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @Free(i8* %101)
  br label %126

103:                                              ; preds = %90
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @CalcUtf8ToUni(i8* %104, i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @Free(i8* %110)
  br label %126

112:                                              ; preds = %103
  %113 = load i32, i32* %11, align 4
  %114 = call i8* @Malloc(i32 %113)
  store i8* %114, i8** %10, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @Utf8ToUni(i8* %115, i32 %116, i8* %117, i32 %118)
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @Free(i8* %120)
  %122 = load i8*, i8** %10, align 8
  %123 = call i32* @NewUniStrValue(i8* %122)
  store i32* %123, i32** %14, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @Free(i8* %124)
  br label %126

126:                                              ; preds = %18, %112, %109, %100, %89, %74, %71, %60, %47, %44, %34, %24, %20
  %127 = load i32*, i32** %14, align 8
  store i32* %127, i32** %3, align 8
  br label %128

128:                                              ; preds = %126, %17
  %129 = load i32*, i32** %3, align 8
  ret i32* %129
}

declare dso_local i32* @NewIntValue(i32) #1

declare dso_local i32 @ReadBufInt(i32*) #1

declare dso_local i32* @NewInt64Value(i32) #1

declare dso_local i32 @ReadBufInt64(i32*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @ReadBuf(i32*, i8*, i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32* @NewDataValue(i8*, i32) #1

declare dso_local i32* @NewStrValue(i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @CalcUtf8ToUni(i8*, i32) #1

declare dso_local i32 @Utf8ToUni(i8*, i32, i8*, i32) #1

declare dso_local i32* @NewUniStrValue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
