; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_config_file.c_config_read_keys.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_config_file.c_config_read_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"binddev = \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"input: can't handle dev: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"input: parse error: %16s..\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"parse failed: %16s..\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"config: unhandled action \22%s\22\0A\00", align 1
@in_adev = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_read_keys(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  store i8* %10, i8** %6, align 8
  br label %11

11:                                               ; preds = %91, %30, %1
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %92

20:                                               ; preds = %18
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 10
  store i8* %22, i8** %6, align 8
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @get_line(i8* %23, i32 256, i8* %24)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %27 = call i32 @in_config_parse_dev(i8* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %11

33:                                               ; preds = %20
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @in_unbind_all(i32 %34, i32 -1, i32 -1)
  br label %36

36:                                               ; preds = %90, %63, %52, %33
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @strstr(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %38, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %91

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %91

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 32
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %36

55:                                               ; preds = %45
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @get_line(i8* %56, i32 128, i8* %57)
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %60 = call i8* @strchr(i8* %59, i8 signext 61)
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  br label %36

66:                                               ; preds = %55
  %67 = load i8*, i8** %5, align 8
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %71 = call i32 @mystrip(i8* %70)
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @mystrip(i8* %72)
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @parse_bind_val(i8* %74, i32* %8)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %87

78:                                               ; preds = %66
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @in_config_bind_key(i32 %82, i8* %83, i32 %84, i32 %85)
  br label %90

87:                                               ; preds = %78, %66
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @lprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %81
  br label %36

91:                                               ; preds = %44, %36
  br label %11

92:                                               ; preds = %18
  %93 = call i32 (...) @in_clean_binds()
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @get_line(i8*, i32, i8*) #1

declare dso_local i32 @in_config_parse_dev(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @in_unbind_all(i32, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @mystrip(i8*) #1

declare dso_local i32 @parse_bind_val(i8*, i32*) #1

declare dso_local i32 @in_config_bind_key(i32, i8*, i32, i32) #1

declare dso_local i32 @lprintf(i8*, i8*) #1

declare dso_local i32 @in_clean_binds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
