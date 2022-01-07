; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_CDKeyValidate.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_CDKeyValidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDKEY_LEN = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@CDCHKSUM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CL_CDKeyValidate(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @CDKEY_LEN, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @qfalse, align 4
  store i32 %17, i32* %3, align 4
  br label %82

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = load i32, i32* @CDCHKSUM_LEN, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @qfalse, align 4
  store i32 %27, i32* %3, align 4
  br label %82

28:                                               ; preds = %21, %18
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %59, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  %36 = load i8, i8* %34, align 1
  store i8 %36, i8* %6, align 1
  %37 = load i8, i8* %6, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sge i32 %38, 97
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i8, i8* %6, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 122
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8, i8* %6, align 1
  %46 = sext i8 %45 to i32
  %47 = sub nsw i32 %46, 32
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %6, align 1
  br label %49

49:                                               ; preds = %44, %40, %33
  %50 = load i8, i8* %6, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %57 [
    i32 50, label %52
    i32 51, label %52
    i32 55, label %52
    i32 65, label %52
    i32 66, label %52
    i32 67, label %52
    i32 68, label %52
    i32 71, label %52
    i32 72, label %52
    i32 74, label %52
    i32 76, label %52
    i32 80, label %52
    i32 82, label %52
    i32 83, label %52
    i32 84, label %52
    i32 87, label %52
  ]

52:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49
  %53 = load i8, i8* %6, align 1
  %54 = sext i8 %53 to i32
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @qfalse, align 4
  store i32 %58, i32* %3, align 4
  br label %82

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %29

62:                                               ; preds = %29
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i8*, i8** %5, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @Q_stricmp(i8* %69, i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @qtrue, align 4
  store i32 %74, i32* %3, align 4
  br label %82

75:                                               ; preds = %68, %62
  %76 = load i8*, i8** %5, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @qtrue, align 4
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @qfalse, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %78, %73, %57, %26, %16
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
