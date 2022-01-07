; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ctr.c_frontend_ctr_exec.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ctr.c_frontend_ctr_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@elf_path_cst = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Attempt to load core: [%s].\0A\00", align 1
@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"content path: [%s].\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Warning:\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"First core launch may take 20\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"seconds! Do not force quit\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"before then or your memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"card may be corrupted!\0A\00", align 1
@ERROR_TEXT = common dso_local global i32 0, align 4
@CFG_LANGUAGE_EN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Can't launch core:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @frontend_ctr_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_ctr_exec(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [3 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = add nsw i32 200, %16
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @DEBUG_VAR(i8* %20)
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @DEBUG_STR(i8* %22)
  %24 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %24, align 16
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  store i8* null, i8** %25, align 16
  %26 = load i8*, i8** @elf_path_cst, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 %28
  store i8* %26, i8** %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 %32
  store i8* null, i8** %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %2
  %41 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %42 = call i32 @path_is_empty(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %46 = call i8* @path_get(i32 %45)
  %47 = call i32 @strcpy(i8* %15, i8* %46)
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 %49
  store i8* %15, i8** %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 %53
  store i8* null, i8** %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %58 = call i8* @path_get(i32 %57)
  %59 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %44, %40, %2
  %61 = load i8*, i8** %3, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %99

63:                                               ; preds = %60
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %63
  %70 = call i64 (...) @envIsHomebrew()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %75 = call i32 @exec_3dsx_no_path_in_args(i8* %73, i8** %74)
  br label %89

76:                                               ; preds = %69
  %77 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %79 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %81 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %82 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %83 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %84 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %85 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %88 = call i32 @exec_cia(i8* %86, i8** %87)
  br label %89

89:                                               ; preds = %76, %72
  %90 = load i32, i32* @ERROR_TEXT, align 4
  %91 = load i32, i32* @CFG_LANGUAGE_EN, align 4
  %92 = call i32 @errorInit(i32* %8, i32 %90, i32 %91)
  %93 = trunc i64 %18 to i32
  %94 = load i8*, i8** %3, align 8
  %95 = call i32 @snprintf(i8* %19, i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %94)
  %96 = call i32 @errorText(i32* %8, i8* %19)
  %97 = call i32 @errorDisp(i32* %8)
  %98 = call i32 @exit(i32 0) #4
  unreachable

99:                                               ; preds = %63, %60
  %100 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %100)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEBUG_VAR(i8*) #2

declare dso_local i32 @DEBUG_STR(i8*) #2

declare dso_local i32 @RARCH_LOG(i8*, i8*) #2

declare dso_local i32 @path_is_empty(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @path_get(i32) #2

declare dso_local i64 @envIsHomebrew(...) #2

declare dso_local i32 @exec_3dsx_no_path_in_args(i8*, i8**) #2

declare dso_local i32 @RARCH_WARN(i8*) #2

declare dso_local i32 @exec_cia(i8*, i8**) #2

declare dso_local i32 @errorInit(i32*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @errorText(i32*, i8*) #2

declare dso_local i32 @errorDisp(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
