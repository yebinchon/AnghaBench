; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_tea.c_test_tea.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_tea.c_test_tea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVTEA = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s failed\0Agot      \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\0Aexpected \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AVTEA*, i32*, i32*, i32*, i32, i32*, i32, i8*)* @test_tea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_tea(%struct.AVTEA* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.AVTEA*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.AVTEA* %0, %struct.AVTEA** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %18 = load %struct.AVTEA*, %struct.AVTEA** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32*, i32** %14, align 8
  %23 = load i32, i32* %15, align 4
  %24 = call i32 @av_tea_crypt(%struct.AVTEA* %18, i32* %19, i32* %20, i32 %21, i32* %22, i32 %23)
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = mul nsw i32 8, %27
  %29 = call i64 @memcmp(i32* %25, i32* %26, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %8
  %32 = load i8*, i8** %16, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 0, i32* %17, align 4
  br label %34

34:                                               ; preds = %46, %31
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %13, align 4
  %37 = mul nsw i32 8, %36
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %17, align 4
  br label %34

49:                                               ; preds = %34
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %51

51:                                               ; preds = %63, %49
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %13, align 4
  %54 = mul nsw i32 8, %53
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  br label %51

66:                                               ; preds = %51
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32 @exit(i32 1) #3
  unreachable

69:                                               ; preds = %8
  ret void
}

declare dso_local i32 @av_tea_crypt(%struct.AVTEA*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
