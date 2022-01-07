; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgAddData.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgAddData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CfgAddData(i32* %0, i64 %1, i8* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i8* null, i8** %16, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %6
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %20, %6
  br label %117

30:                                               ; preds = %26
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @CfgEscape(i8* %31)
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @CfgEscape(i8* %33)
  store i8* %34, i8** %15, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %11, align 8
  %39 = call i8* @CfgEscape(i8* %38)
  store i8* %39, i8** %16, align 8
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i8*, i8** %14, align 8
  %42 = call i64 @StrLen(i8* %41)
  %43 = load i8*, i8** %15, align 8
  %44 = call i64 @StrLen(i8* %43)
  %45 = add nsw i64 %42, %44
  %46 = add nsw i64 %45, 2
  %47 = add nsw i64 %46, 64
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = call i8* @Malloc(i64 %49)
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %80

53:                                               ; preds = %40
  %54 = load i8*, i8** %13, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @CfgTypeToStr(i64 %56)
  %58 = call i32 @StrCpy(i8* %54, i64 %55, i32 %57)
  %59 = load i8*, i8** %13, align 8
  %60 = load i64, i64* %17, align 8
  %61 = call i32 @StrCat(i8* %59, i64 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %13, align 8
  %63 = load i64, i64* %17, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @StrCat(i8* %62, i64 %63, i8* %64)
  %66 = load i8*, i8** %13, align 8
  %67 = load i64, i64* %17, align 8
  %68 = call i32 @StrCat(i8* %66, i64 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %69 = load i8*, i8** %13, align 8
  %70 = load i64, i64* %17, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @StrCat(i8* %69, i64 %70, i8* %71)
  %73 = load i8*, i8** %13, align 8
  %74 = load i64, i64* %17, align 8
  %75 = call i32 @StrCat(i8* %73, i64 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %76 = load i8*, i8** %13, align 8
  %77 = load i64, i64* %17, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = call i32 @StrCat(i8* %76, i64 %77, i8* %78)
  br label %100

80:                                               ; preds = %40
  %81 = load i8*, i8** %13, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @CfgTypeToStr(i64 %83)
  %85 = call i32 @StrCpy(i8* %81, i64 %82, i32 %84)
  %86 = load i8*, i8** %13, align 8
  %87 = load i64, i64* %17, align 8
  %88 = call i32 @StrCat(i8* %86, i64 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %89 = load i8*, i8** %13, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = call i32 @StrCat(i8* %89, i64 %90, i8* %91)
  %93 = load i8*, i8** %13, align 8
  %94 = load i64, i64* %17, align 8
  %95 = call i32 @StrCat(i8* %93, i64 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %96 = load i8*, i8** %13, align 8
  %97 = load i64, i64* %17, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = call i32 @StrCat(i8* %96, i64 %97, i8* %98)
  br label %100

100:                                              ; preds = %80, %53
  %101 = load i8*, i8** %14, align 8
  %102 = call i32 @Free(i8* %101)
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 @Free(i8* %103)
  %105 = load i8*, i8** %16, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i8*, i8** %16, align 8
  %109 = call i32 @Free(i8* %108)
  br label %110

110:                                              ; preds = %107, %100
  %111 = load i32*, i32** %7, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @CfgAddLine(i32* %111, i8* %112, i64 %113)
  %115 = load i8*, i8** %13, align 8
  %116 = call i32 @Free(i8* %115)
  br label %117

117:                                              ; preds = %110, %29
  ret void
}

declare dso_local i8* @CfgEscape(i8*) #1

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i8* @Malloc(i64) #1

declare dso_local i32 @StrCpy(i8*, i64, i32) #1

declare dso_local i32 @CfgTypeToStr(i64) #1

declare dso_local i32 @StrCat(i8*, i64, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @CfgAddLine(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
