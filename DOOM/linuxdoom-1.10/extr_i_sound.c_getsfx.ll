; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_sound.c_getsfx.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_sound.c_getsfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"ds%s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dspistol\00", align 1
@PU_STATIC = common dso_local global i32 0, align 4
@SAMPLECOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getsfx(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [20 x i8], align 16
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %16 = call i32 @W_CheckNumForName(i8* %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @W_GetNumForName(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %11, align 4
  br label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %22 = call i32 @W_GetNumForName(i8* %21)
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @W_LumpLength(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @PU_STATIC, align 4
  %28 = call i64 @W_CacheLumpNum(i32 %26, i32 %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 8
  %32 = load i32, i32* @SAMPLECOUNT, align 4
  %33 = sub nsw i32 %32, 1
  %34 = add nsw i32 %31, %33
  %35 = load i32, i32* @SAMPLECOUNT, align 4
  %36 = sdiv i32 %34, %35
  %37 = load i32, i32* @SAMPLECOUNT, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 8
  %41 = load i32, i32* @PU_STATIC, align 4
  %42 = call i64 @Z_Malloc(i32 %40, i32 %41, i32 0)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %59, %23
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 8
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 -128, i8* %58, align 1
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %49

62:                                               ; preds = %49
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @Z_Free(i8* %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %4, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 8
  ret i8* %68
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @W_CheckNumForName(i8*) #1

declare dso_local i32 @W_GetNumForName(i8*) #1

declare dso_local i32 @W_LumpLength(i32) #1

declare dso_local i64 @W_CacheLumpNum(i32, i32) #1

declare dso_local i64 @Z_Malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @Z_Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
