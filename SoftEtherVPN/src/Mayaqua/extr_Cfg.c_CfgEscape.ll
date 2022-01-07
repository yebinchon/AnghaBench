; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgEscape.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgEscape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CfgEscape(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %96

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @StrLen(i8* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %16, 3
  %18 = add nsw i32 %17, 2
  %19 = call i8* @ZeroMalloc(i32 %18)
  store i8* %19, i8** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 3
  %26 = add nsw i32 %25, 2
  %27 = call i32 @StrCpy(i8* %23, i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %85

28:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %81, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %84

33:                                               ; preds = %29
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @CfgCheckCharForName(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 %46, i8* %51, align 1
  br label %80

52:                                               ; preds = %33
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 36, i8* %57, align 1
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call i32 @Format(i8* %58, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %67 = load i8, i8* %66, align 16
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 %67, i8* %72, align 1
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 %74, i8* %79, align 1
  br label %80

80:                                               ; preds = %52, %41
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %29

84:                                               ; preds = %29
  br label %85

85:                                               ; preds = %84, %22
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @StrLen(i8* %86)
  %88 = add nsw i32 %87, 1
  %89 = call i8* @Malloc(i32 %88)
  store i8* %89, i8** %5, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @StrCpy(i8* %90, i32 0, i8* %91)
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @Free(i8* %93)
  %95 = load i8*, i8** %5, align 8
  store i8* %95, i8** %2, align 8
  br label %96

96:                                               ; preds = %85, %12
  %97 = load i8*, i8** %2, align 8
  ret i8* %97
}

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i64 @CfgCheckCharForName(i8 signext) #1

declare dso_local i32 @Format(i8*, i32, i8*, i32) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
