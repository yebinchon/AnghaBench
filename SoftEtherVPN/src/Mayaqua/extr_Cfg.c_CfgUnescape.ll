; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgUnescape.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgUnescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CfgUnescape(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %103

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @StrLen(i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i8* @ZeroMalloc(i32 %18)
  store i8* %19, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 36
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %30, align 1
  br label %89

31:                                               ; preds = %22, %14
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %85, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %88

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 36
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8 %49, i8* %54, align 1
  br label %84

55:                                               ; preds = %36
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  store i8 48, i8* %56, align 16
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  store i8 120, i8* %57, align 1
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  store i8 %63, i8* %64, align 2
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 3
  store i8 %70, i8* %71, align 1
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %9, align 4
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 4
  store i8 0, i8* %74, align 4
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %76 = call i32 @ToInt(i8* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 %78, i8* %83, align 1
  br label %84

84:                                               ; preds = %55, %44
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %32

88:                                               ; preds = %32
  br label %89

89:                                               ; preds = %88, %28
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @StrLen(i8* %90)
  %92 = add nsw i32 %91, 1
  %93 = call i8* @Malloc(i32 %92)
  store i8* %93, i8** %5, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @StrLen(i8* %95)
  %97 = add nsw i32 %96, 1
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @StrCpy(i8* %94, i32 %97, i8* %98)
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 @Free(i8* %100)
  %102 = load i8*, i8** %5, align 8
  store i8* %102, i8** %2, align 8
  br label %103

103:                                              ; preds = %89, %13
  %104 = load i8*, i8** %2, align 8
  ret i8* %104
}

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @ToInt(i8*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
