; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_print_game.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_print_game.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"komi 6.5\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"boardsize 19\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"clear_board\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"play black %c%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"play white %c%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_game(float* %0, i32* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 3, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %75, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 19
  br i1 %16, label %17, label %78

17:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %71, %17
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 19
  br i1 %20, label %21, label %74

21:                                               ; preds = %18
  %22 = load float*, float** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %23, 19
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %24, %25
  %27 = call i32 @occupied(float* %22, i32 %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 65, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 8
  %35 = zext i1 %34 to i32
  %36 = add nsw i32 %32, %35
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 19, %37
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %29, %21
  %41 = load float*, float** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %42, 19
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @occupied(float* %41, i32 %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 65, %50
  %52 = load i32, i32* %5, align 4
  %53 = icmp sge i32 %52, 8
  %54 = zext i1 %53 to i32
  %55 = add nsw i32 %51, %54
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 19, %56
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %48, %40
  %60 = load float*, float** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %61, 19
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 @occupied(float* %60, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %59
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %18

74:                                               ; preds = %18
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %14

78:                                               ; preds = %14
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @occupied(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
