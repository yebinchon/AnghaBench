; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_score_game.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_score_game.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"game.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"final_score\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"./gnugo --mode gtp < game.txt\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s  \09\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"= %c+%f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @score_game(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store float* %0, float** %2, align 8
  %11 = call i32* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %4, align 8
  %12 = load float*, float** %2, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @print_game(float* %12, i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @fclose(i32* %18)
  %20 = call i32* @popen(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %20, i32** %6, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %32, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @fgetl(i32* %26)
  %28 = call i32 @free(i8* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i8* @fgetl(i32* %29)
  %31 = call i32 @free(i8* %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %21

35:                                               ; preds = %21
  store i8* null, i8** %7, align 8
  store float 0.000000e+00, float* %8, align 4
  store i8 0, i8* %9, align 1
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i32*, i32** %6, align 8
  %38 = call i8* @fgetl(i32* %37)
  store i8* %38, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @sscanf(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %9, float* %8)
  store i32 %45, i32* %10, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %52

51:                                               ; preds = %40
  br label %36

52:                                               ; preds = %50, %36
  %53 = load i8, i8* %9, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 87
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load float, float* %8, align 4
  %58 = fneg float %57
  store float %58, float* %8, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @pclose(i32* %60)
  %62 = load float, float* %8, align 4
  ret float %62
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @print_game(float*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @fgetl(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, float*) #1

declare dso_local i32 @pclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
