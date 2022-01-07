; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_getCursorPosition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_getCursorPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\1B[6n\00", align 1
@stdin = common dso_local global i32 0, align 4
@ESC = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d;%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getCursorPosition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getCursorPosition() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %29, %0
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %10, 31
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i32, i32* @stdin, align 4
  %18 = call i32 @fread(i8* %16, i32 1, i32 1, i32 %17)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %32

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 82
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %8

32:                                               ; preds = %28, %20, %8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %34
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %37 = load i8, i8* %36, align 16
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @ESC, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 91
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %32
  store i32 -1, i32* %1, align 4
  br label %56

48:                                               ; preds = %42
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = call i32 @sscanf(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %4, i32* %3)
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 -1, i32* %1, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %54, %53, %47
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
