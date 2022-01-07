; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kmake.c_extract_opcode_info.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kmake.c_extract_opcode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ID_OPHANDLER_NAME = common dso_local global i8* null, align 8
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_SPEC_PROC_LENGTH = common dso_local global i32 0, align 4
@MAX_SPEC_EA_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extract_opcode_info(i8* %0, i8* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** @ID_OPHANDLER_NAME, align 8
  %15 = call i8* @strstr(i8* %13, i8* %14)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %101

19:                                               ; preds = %5
  %20 = load i8*, i8** @ID_OPHANDLER_NAME, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = add nsw i64 %21, 1
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %28 = call i32 @check_strcncpy(i8* %25, i8* %26, i8 signext 44, i32 %27)
  %29 = load i8*, i8** %12, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 44
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %101

37:                                               ; preds = %19
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @skip_spaces(i8* %40)
  %42 = load i8*, i8** %12, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @atoi(i8* %45)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %101

53:                                               ; preds = %37
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @skip_spaces(i8* %56)
  %58 = load i8*, i8** %12, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i32, i32* @MAX_SPEC_PROC_LENGTH, align 4
  %64 = call i32 @check_strcncpy(i8* %61, i8* %62, i8 signext 44, i32 %63)
  %65 = load i8*, i8** %12, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 44
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %101

73:                                               ; preds = %53
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @skip_spaces(i8* %76)
  %78 = load i8*, i8** %12, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* @MAX_SPEC_EA_LENGTH, align 4
  %84 = call i32 @check_strcncpy(i8* %81, i8* %82, i8 signext 41, i32 %83)
  %85 = load i8*, i8** %12, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %12, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 41
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %101

93:                                               ; preds = %73
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %12, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @skip_spaces(i8* %96)
  %98 = load i8*, i8** %12, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %12, align 8
  store i32 1, i32* %6, align 4
  br label %101

101:                                              ; preds = %93, %92, %72, %52, %36, %18
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @check_strcncpy(i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @skip_spaces(i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
