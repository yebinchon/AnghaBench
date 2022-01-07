; ModuleID = '/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoise.c'
source_filename = "/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINENOISE_MAX_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @linenoise(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @LINENOISE_MAX_LINE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = call i64 (...) @isUnsupportedTerm()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 @fflush(i32 %18)
  %20 = load i32, i32* @LINENOISE_MAX_LINE, align 4
  %21 = load i32, i32* @stdin, align 4
  %22 = call i32* @fgets(i8* %12, i32 %20, i32 %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %64

25:                                               ; preds = %15
  %26 = call i64 @strlen(i8* %12)
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %48, %25
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %12, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %12, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 13
  br label %44

44:                                               ; preds = %37, %30
  %45 = phi i1 [ true, %30 ], [ %43, %37 ]
  br label %46

46:                                               ; preds = %44, %27
  %47 = phi i1 [ false, %27 ], [ %45, %44 ]
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i8, i8* %12, i64 %51
  store i8 0, i8* %52, align 1
  br label %27

53:                                               ; preds = %46
  %54 = call i8* @strdup(i8* %12)
  store i8* %54, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %64

55:                                               ; preds = %1
  %56 = load i32, i32* @LINENOISE_MAX_LINE, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @linenoiseRaw(i8* %12, i32 %56, i8* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i8* null, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %64

62:                                               ; preds = %55
  %63 = call i8* @strdup(i8* %12)
  store i8* %63, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %61, %53, %24
  %65 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i8*, i8** %2, align 8
  ret i8* %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isUnsupportedTerm(...) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @linenoiseRaw(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
