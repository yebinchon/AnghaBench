; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_struct.c_WriteFloat.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_struct.c_WriteFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WriteFloat(i32* %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store float %1, float* %5, align 4
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %9 = load float, float* %5, align 4
  %10 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float %9)
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %43, %2
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %7, align 4
  %16 = icmp sgt i32 %14, 1
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 48
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 46
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %47

32:                                               ; preds = %24, %17
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 46
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %41
  store i8 0, i8* %42, align 1
  br label %47

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %45
  store i8 0, i8* %46, align 1
  br label %13

47:                                               ; preds = %39, %31, %13
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %50 = call i64 @fprintf(i32* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %54

53:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @sprintf(i8*, i8*, float) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
