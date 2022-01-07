; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgReadNextFolderBin.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgReadNextFolderBin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CfgReadNextFolderBin(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32, i32* @MAX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %2
  store i32 1, i32* %13, align 4
  br label %124

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = trunc i64 %16 to i32
  %28 = call i32 @ReadBufStr(i32* %26, i8* %18, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* @CfgCreateFolder(i32* %29, i8* %18)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @ReadBufInt(i32* %31)
  store i64 %32, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %40, %25
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %7, align 8
  call void @CfgReadNextFolderBin(i32* %38, i32* %39)
  br label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %9, align 8
  br label %33

43:                                               ; preds = %33
  %44 = load i32*, i32** %3, align 8
  %45 = call i64 @ReadBufInt(i32* %44)
  store i64 %45, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %46

46:                                               ; preds = %120, %43
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %123

50:                                               ; preds = %46
  %51 = load i32*, i32** %3, align 8
  %52 = trunc i64 %16 to i32
  %53 = call i32 @ReadBufStr(i32* %51, i8* %18, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i64 @ReadBufInt(i32* %54)
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  switch i64 %56, label %119 [
    i64 130, label %57
    i64 129, label %62
    i64 131, label %67
    i64 128, label %82
    i64 132, label %111
  ]

57:                                               ; preds = %50
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = call i64 @ReadBufInt(i32* %59)
  %61 = call i32 @CfgAddInt(i32* %58, i8* %18, i64 %60)
  br label %119

62:                                               ; preds = %50
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @ReadBufInt64(i32* %64)
  %66 = call i32 @CfgAddInt64(i32* %63, i8* %18, i32 %65)
  br label %119

67:                                               ; preds = %50
  %68 = load i32*, i32** %3, align 8
  %69 = call i64 @ReadBufInt(i32* %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32* @ZeroMalloc(i64 %70)
  store i32* %71, i32** %11, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @ReadBuf(i32* %72, i32* %73, i64 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @CfgAddByte(i32* %76, i8* %18, i32* %77, i64 %78)
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @Free(i32* %80)
  br label %119

82:                                               ; preds = %50
  %83 = load i32*, i32** %3, align 8
  %84 = call i64 @ReadBufInt(i32* %83)
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, 1
  %87 = call i32* @ZeroMalloc(i64 %86)
  store i32* %87, i32** %11, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @ReadBuf(i32* %88, i32* %89, i64 %90)
  %92 = load i32*, i32** %11, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @StrLen(i32* %93)
  %95 = call i32 @CalcUtf8ToUni(i32* %92, i32 %94)
  %96 = add nsw i32 %95, 4
  %97 = sext i32 %96 to i64
  %98 = call i32* @ZeroMalloc(i64 %97)
  store i32* %98, i32** %12, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @StrLen(i32* %101)
  %103 = call i32 @Utf8ToUni(i32* %99, i32 0, i32* %100, i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @CfgAddUniStr(i32* %104, i8* %18, i32* %105)
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @Free(i32* %107)
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @Free(i32* %109)
  br label %119

111:                                              ; preds = %50
  %112 = load i32*, i32** %7, align 8
  %113 = load i32*, i32** %3, align 8
  %114 = call i64 @ReadBufInt(i32* %113)
  %115 = icmp eq i64 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 0, i32 1
  %118 = call i32 @CfgAddBool(i32* %112, i8* %18, i32 %117)
  br label %119

119:                                              ; preds = %50, %111, %82, %67, %62, %57
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %9, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %9, align 8
  br label %46

123:                                              ; preds = %46
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %123, %24
  %125 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %13, align 4
  switch i32 %126, label %128 [
    i32 0, label %127
    i32 1, label %127
  ]

127:                                              ; preds = %124, %124
  ret void

128:                                              ; preds = %124
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ReadBufStr(i32*, i8*, i32) #2

declare dso_local i32* @CfgCreateFolder(i32*, i8*) #2

declare dso_local i64 @ReadBufInt(i32*) #2

declare dso_local i32 @CfgAddInt(i32*, i8*, i64) #2

declare dso_local i32 @CfgAddInt64(i32*, i8*, i32) #2

declare dso_local i32 @ReadBufInt64(i32*) #2

declare dso_local i32* @ZeroMalloc(i64) #2

declare dso_local i32 @ReadBuf(i32*, i32*, i64) #2

declare dso_local i32 @CfgAddByte(i32*, i8*, i32*, i64) #2

declare dso_local i32 @Free(i32*) #2

declare dso_local i32 @CalcUtf8ToUni(i32*, i32) #2

declare dso_local i32 @StrLen(i32*) #2

declare dso_local i32 @Utf8ToUni(i32*, i32, i32*, i32) #2

declare dso_local i32 @CfgAddUniStr(i32*, i8*, i32*) #2

declare dso_local i32 @CfgAddBool(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
