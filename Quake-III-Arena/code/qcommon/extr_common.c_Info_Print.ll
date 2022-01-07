; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Info_Print.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Info_Print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"MISSING VALUE\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Info_Print(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 92
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %2, align 8
  br label %14

14:                                               ; preds = %11, %1
  br label %15

15:                                               ; preds = %94, %14
  %16 = load i8*, i8** %2, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %97

19:                                               ; preds = %15
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %33, %19
  %22 = load i8*, i8** %2, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %2, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 92
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ false, %21 ], [ %30, %26 ]
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %2, align 8
  %36 = load i8, i8* %34, align 1
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  store i8 %36, i8* %37, align 1
  br label %21

39:                                               ; preds = %31
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 20
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 20, %50
  %52 = call i32 @Com_Memset(i8* %49, i8 signext 32, i32 %51)
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 20
  store i8 0, i8* %53, align 4
  br label %56

54:                                               ; preds = %39
  %55 = load i8*, i8** %5, align 8
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %54, %48
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %58 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %2, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %97

64:                                               ; preds = %56
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  store i8* %65, i8** %5, align 8
  %66 = load i8*, i8** %2, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %80, %64
  %69 = load i8*, i8** %2, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** %2, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 92
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ false, %68 ], [ %77, %73 ]
  br i1 %79, label %80, label %86

80:                                               ; preds = %78
  %81 = load i8*, i8** %2, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %2, align 8
  %83 = load i8, i8* %81, align 1
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  store i8 %83, i8* %84, align 1
  br label %68

86:                                               ; preds = %78
  %87 = load i8*, i8** %5, align 8
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %2, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i8*, i8** %2, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %2, align 8
  br label %94

94:                                               ; preds = %91, %86
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %96 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  br label %15

97:                                               ; preds = %62, %15
  ret void
}

declare dso_local i32 @Com_Memset(i8*, i8 signext, i32) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
