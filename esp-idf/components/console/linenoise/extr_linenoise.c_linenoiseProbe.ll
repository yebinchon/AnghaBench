; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_linenoiseProbe.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_linenoiseProbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDIN_FILENO = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\1B[5n\00", align 1
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linenoiseProbe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = load i32, i32* @STDIN_FILENO, align 4
  %9 = load i32, i32* @F_GETFL, align 4
  %10 = call i32 (i32, i32, ...) @fcntl(i32 %8, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @O_NONBLOCK, align 4
  %12 = load i32, i32* %2, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* @STDIN_FILENO, align 4
  %15 = load i32, i32* @F_SETFL, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %59

21:                                               ; preds = %0
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 200, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %32, %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = icmp ult i64 %28, 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %42

32:                                               ; preds = %30
  %33 = call i32 @usleep(i32 10000)
  %34 = load i32, i32* @stdin, align 4
  %35 = call i32 @fread(i8* %6, i32 1, i32 1, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  br label %24

42:                                               ; preds = %30
  %43 = load i32, i32* @O_NONBLOCK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %2, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* @STDIN_FILENO, align 4
  %48 = load i32, i32* @F_SETFL, align 4
  %49 = load i32, i32* %2, align 4
  %50 = call i32 (i32, i32, ...) @fcntl(i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 -1, i32* %1, align 4
  br label %59

54:                                               ; preds = %42
  %55 = load i64, i64* %5, align 8
  %56 = icmp ult i64 %55, 4
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 -2, i32* %1, align 4
  br label %59

58:                                               ; preds = %54
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %58, %57, %53, %20
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
