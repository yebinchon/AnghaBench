; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgAddDeclare.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgAddDeclare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG_DECLARE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"{\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CfgAddDeclare(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  br label %42

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @CfgEscape(i8* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @StrLen(i8* %19)
  %21 = add nsw i64 %20, 2
  %22 = load i8*, i8** @TAG_DECLARE, align 8
  %23 = call i64 @StrLen(i8* %22)
  %24 = add nsw i64 %21, %23
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i8* @Malloc(i64 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** @TAG_DECLARE, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @Format(i8* %27, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @CfgAddLine(i32* %31, i8* %32, i64 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @CfgAddLine(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @Free(i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @Free(i8* %40)
  br label %42

42:                                               ; preds = %16, %15
  ret void
}

declare dso_local i8* @CfgEscape(i8*) #1

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i8* @Malloc(i64) #1

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @CfgAddLine(i32*, i8*, i64) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
