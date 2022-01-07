; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_CL_AddKeyUpCommands.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_CL_AddKeyUpCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"-%s %i %i\0A\00", align 1
@time = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_AddKeyUpCommands(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %106

13:                                               ; preds = %2
  %14 = load i64, i64* @qfalse, align 8
  store i64 %14, i64* %9, align 8
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %15, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %103, %13
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 59
  br i1 %23, label %31, label %24

24:                                               ; preds = %16
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %87, label %31

31:                                               ; preds = %24, %16
  %32 = load i8*, i8** %7, align 8
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @time, align 4
  %43 = call i32 @Com_sprintf(i8* %38, i32 1024, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %41, i32 %42)
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %45 = call i32 @Cbuf_AddText(i8* %44)
  %46 = load i64, i64* @qtrue, align 8
  store i64 %46, i64* %9, align 8
  br label %55

47:                                               ; preds = %31
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %52 = call i32 @Cbuf_AddText(i8* %51)
  %53 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %37
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %56, i8** %7, align 8
  br label %57

57:                                               ; preds = %83, %55
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sle i32 %63, 32
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 59
  br i1 %72, label %73, label %81

73:                                               ; preds = %65, %57
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %73, %65
  %82 = phi i1 [ false, %65 ], [ %80, %73 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %57

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %24
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %7, align 8
  store i8 %92, i8* %93, align 1
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %87
  br label %106

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %16

106:                                              ; preds = %12, %101
  ret void
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @Cbuf_AddText(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
