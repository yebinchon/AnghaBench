; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_env_set_qos.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_env_set_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENV_VAR_QOS = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s=%d\00", align 1
@qos_env = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@qos_name_env = common dso_local global i32* null, align 8
@wl_function_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i8**, i8*)* @env_set_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @env_set_qos(i8** %0, i8** %1, i8** %2, i8* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %56, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @ENV_VAR_QOS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %12
  %17 = load i32, i32* @T_QUIET, align 4
  %18 = load i32*, i32** @qos_env, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %27)
  %29 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %28, i32* null)
  %30 = load i32, i32* @T_QUIET, align 4
  %31 = load i32*, i32** @qos_name_env, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i8**, i8*** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @asprintf(i8** %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* %40)
  %42 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %41, i32* null)
  %43 = load i8*, i8** %10, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 2, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  store i8* %43, i8** %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 2, %51
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %50, i64 %54
  store i8* %49, i8** %55, align 8
  br label %56

56:                                               ; preds = %16
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %12

59:                                               ; preds = %12
  %60 = load i32, i32* @T_QUIET, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 2, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  %66 = load i32, i32* @wl_function_name, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @asprintf(i8** %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %67)
  %69 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %68, i32* null)
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 2, %71
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %70, i64 %74
  store i8* null, i8** %75, align 8
  ret void
}

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i32*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
