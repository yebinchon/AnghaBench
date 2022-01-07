; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_shaders.c_LoadShaderInfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_shaders.c_LoadShaderInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SHADER_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%sscripts/shaderlist.txt\00", align 1
@gamedir = common dso_local global i8* null, align 8
@qtrue = common dso_local global i32 0, align 4
@MAX_OS_PATH = common dso_local global i32 0, align 4
@token = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%sscripts/%s.shader\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%5i shaderInfo\0A\00", align 1
@numShaderInfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadShaderInfo() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_SHADER_FILES, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8*, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %11 = load i8*, i8** @gamedir, align 8
  %12 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %14 = call i32 @LoadScriptFile(i8* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %21, %0
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* @qtrue, align 4
  %18 = call i32 @GetToken(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %35

21:                                               ; preds = %16
  %22 = load i32, i32* @MAX_OS_PATH, align 4
  %23 = call i8* @malloc(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %9, i64 %25
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %9, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @token, align 4
  %32 = call i32 @strcpy(i8* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %15

35:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %42 = load i8*, i8** @gamedir, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %9, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %46)
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %49 = call i32 @ParseShaderFile(i8* %48)
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %9, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %36

58:                                               ; preds = %36
  %59 = load i32, i32* @numShaderInfo, align 4
  %60 = call i32 @qprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %61)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @LoadScriptFile(i8*) #2

declare dso_local i32 @GetToken(i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @ParseShaderFile(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @qprintf(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
