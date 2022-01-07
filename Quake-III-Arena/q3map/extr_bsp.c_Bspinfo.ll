; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_bsp.c_Bspinfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_bsp.c_Bspinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"No files to dump info for.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"---------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".bsp\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Bspinfo(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %50

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %47, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcpy(i8* %20, i8* %25)
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %28 = call i32 @DefaultExtension(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %30 = call i32* @fopen(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @Q_filelength(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @fclose(i32* %36)
  br label %39

38:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %40, i32 %41)
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %44 = call i32 @LoadBSPFile(i8* %43)
  %45 = call i32 (...) @PrintBSPFileSizes()
  %46 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %14

50:                                               ; preds = %11, %14
  ret void
}

declare dso_local i32 @_printf(i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @DefaultExtension(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Q_filelength(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @LoadBSPFile(i8*) #1

declare dso_local i32 @PrintBSPFileSizes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
