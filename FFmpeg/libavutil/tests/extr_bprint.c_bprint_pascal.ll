; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_bprint.c_bprint_pascal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_bprint.c_bprint_pascal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%8d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%8d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @bprint_pascal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bprint_pascal(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [42 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds [42 x i32], [42 x i32]* %7, i64 0, i64 0
  %10 = call i32 @FF_ARRAY_ELEMS(i32* %9)
  %11 = icmp ult i32 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @av_assert0(i32 %12)
  %14 = getelementptr inbounds [42 x i32], [42 x i32]* %7, i64 0, i64 0
  store i32 1, i32* %14, align 16
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %65, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [42 x i32], [42 x i32]* %7, i64 0, i64 %23
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %44, %21
  %28 = load i32, i32* %6, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [42 x i32], [42 x i32]* %7, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [42 x i32], [42 x i32]* %7, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %34, %39
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [42 x i32], [42 x i32]* %7, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %6, align 4
  br label %27

47:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %59, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [42 x i32], [42 x i32]* %7, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %48

62:                                               ; preds = %48
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %17

68:                                               ; preds = %17
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @av_bprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
