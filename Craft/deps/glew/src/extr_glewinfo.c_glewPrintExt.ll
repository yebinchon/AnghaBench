; ModuleID = '/home/carl/AnghaBench/Craft/deps/glew/src/extr_glewinfo.c_glewPrintExt.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glew/src/extr_glewinfo.c_glewPrintExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\0A%s:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64)* @glewPrintExt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glewPrintExt(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @f, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %22, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = sub nsw i32 62, %16
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32, i32* @f, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %13

25:                                               ; preds = %13
  %26 = load i32, i32* @f, align 4
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load i32, i32* @f, align 4
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %35, %25
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* @f, align 4
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %51)
  br label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @f, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %46
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %66, %56
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = add nsw i32 %60, 1
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @f, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %57

69:                                               ; preds = %57
  %70 = load i32, i32* @f, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %72 = load i32, i32* @f, align 4
  %73 = call i32 @fflush(i32 %72)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
