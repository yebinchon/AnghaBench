; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/tools/extr_pertest.c_TestInput.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/tools/extr_pertest.c_TestInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@CurPer = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"%s Timeout in %d seconds\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Data present before press. result code: %08X\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"result code: %08X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestInput(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurPer, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 %16(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = call i32 (...) @YabauseGetTicks()
  store i32 %22, i32* %10, align 4
  %23 = call i32 (...) @YabauseGetTicks()
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %42, %4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurPer, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 %30(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %34, %27
  %41 = phi i1 [ false, %27 ], [ %39, %34 ]
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = call i32 (...) @YabauseGetTicks()
  store i32 %43, i32* %11, align 4
  br label %27

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 0, i32* %5, align 4
  br label %57

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i32 1, i32* %5, align 4
  br label %57

56:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %53, %47
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @YabauseGetTicks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
