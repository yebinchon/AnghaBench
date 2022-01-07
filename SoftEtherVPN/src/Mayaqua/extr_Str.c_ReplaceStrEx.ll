; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ReplaceStrEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ReplaceStrEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReplaceStrEx(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %6
  %26 = load i8*, i8** %11, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %12, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %6
  store i32 0, i32* %7, align 4
  br label %120

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @StrLen(i8* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @StrLen(i8* %35)
  store i32 %36, i32* %18, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @StrLen(i8* %37)
  store i32 %38, i32* %19, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @CalcReplaceStrEx(i8* %39, i8* %40, i8* %41, i32 %42)
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %20, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i8* @Malloc(i32 %45)
  store i8* %46, i8** %22, align 8
  %47 = load i8*, i8** %22, align 8
  %48 = load i32, i32* %20, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %51

51:                                               ; preds = %32, %78
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @SearchStrEx(i8* %52, i8* %53, i32 %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @INFINITE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %51
  %61 = load i8*, i8** %22, align 8
  %62 = load i32, i32* %21, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %15, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i32 @Copy(i8* %64, i8* %68, i32 %71)
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %15, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* %21, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %21, align 4
  br label %112

78:                                               ; preds = %51
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %16, align 4
  %81 = load i8*, i8** %22, align 8
  %82 = load i32, i32* %21, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i32 @Copy(i8* %84, i8* %88, i32 %91)
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* %21, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %21, align 4
  %98 = load i8*, i8** %22, align 8
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8*, i8** %12, align 8
  %103 = load i32, i32* %19, align 4
  %104 = call i32 @Copy(i8* %101, i8* %102, i32 %103)
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %15, align 4
  br label %51

112:                                              ; preds = %60
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i8*, i8** %22, align 8
  %116 = call i32 @StrCpy(i8* %113, i32 %114, i8* %115)
  %117 = load i8*, i8** %22, align 8
  %118 = call i32 @Free(i8* %117)
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %112, %31
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @CalcReplaceStrEx(i8*, i8*, i8*, i32) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @SearchStrEx(i8*, i8*, i32, i32) #1

declare dso_local i32 @Copy(i8*, i8*, i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
