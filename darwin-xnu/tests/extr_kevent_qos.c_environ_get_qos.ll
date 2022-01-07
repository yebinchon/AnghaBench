; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_environ_get_qos.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_environ_get_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENV_VAR_QOS = common dso_local global i32 0, align 4
@qos_env = common dso_local global i32* null, align 8
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getenv(%s)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"getenv(%s) = '%s' should be an integer\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"getenv(%s) = '%s' should be less than 100\00", align 1
@qos_name_env = common dso_local global i32* null, align 8
@wl_function_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8**, i8**)* @environ_get_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @environ_get_qos(i64* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %78, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @ENV_VAR_QOS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %81

15:                                               ; preds = %11
  %16 = load i32*, i32** @qos_env, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @getenv(i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i32, i32* @T_QUIET, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32*, i32** @qos_env, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @T_ASSERT_NOTNULL(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @strtoul(i8* %30, i8** %8, i32 10)
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* @T_QUIET, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i32*, i32** @qos_env, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @T_ASSERT_EQ(i8 signext %34, i8 signext 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %39, i8* %40)
  %42 = load i32, i32* @T_QUIET, align 4
  %43 = load i64, i64* %10, align 8
  %44 = load i32*, i32** @qos_env, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @T_ASSERT_LT(i64 %43, i64 100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %48, i8* %49)
  %51 = load i64, i64* %10, align 8
  %52 = load i64*, i64** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %51, i64* %55, align 8
  %56 = load i32*, i32** @qos_name_env, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @getenv(i32 %60)
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %61, i8** %65, align 8
  %66 = load i32, i32* @T_QUIET, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i32*, i32** @qos_name_env, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @T_ASSERT_NOTNULL(i8* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %15
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %11

81:                                               ; preds = %11
  %82 = load i32, i32* @wl_function_name, align 4
  %83 = call i8* @getenv(i32 %82)
  %84 = load i8**, i8*** %6, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* @T_QUIET, align 4
  %86 = load i8**, i8*** %6, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* @wl_function_name, align 4
  %89 = call i32 @T_ASSERT_NOTNULL(i8* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %88)
  ret void
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @T_ASSERT_NOTNULL(i8*, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @T_ASSERT_EQ(i8 signext, i8 signext, i8*, i32, i8*) #1

declare dso_local i32 @T_ASSERT_LT(i64, i64, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
