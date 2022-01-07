; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_run_client_server.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_run_client_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENV_VAR_QOS = common dso_local global i32 0, align 4
@ENV_VAR_FUNCTION = common dso_local global i32 0, align 4
@g_expected_qos = common dso_local global i32* null, align 8
@g_expected_qos_name = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [36 x i8] c"com.apple.xnu.test.kevent_qos.plist\00", align 1
@HELPER_TIMEOUT_SECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i8**, i8*)* @run_client_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_client_server(i8* %0, i8* %1, i32* %2, i8** %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i32, i32* @ENV_VAR_QOS, align 4
  %16 = mul nsw i32 2, %15
  %17 = load i32, i32* @ENV_VAR_FUNCTION, align 4
  %18 = add nsw i32 %16, %17
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8*, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @env_set_qos(i8** %22, i32* %23, i8** %24, i8* %25)
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %50, %5
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @ENV_VAR_QOS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @g_expected_qos, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i8**, i8*** %9, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** @g_expected_qos_name, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %45, i8** %49, align 8
  br label %50

50:                                               ; preds = %31
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %27

53:                                               ; preds = %27
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @dt_launchd_helper_env(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %55, i8** %22)
  store i32 %56, i32* %54, align 4
  %57 = getelementptr inbounds i32, i32* %54, i64 1
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @dt_fork_helper(i8* %58)
  store i32 %59, i32* %57, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %61 = load i32, i32* @HELPER_TIMEOUT_SECS, align 4
  %62 = call i32 @dt_run_helpers(i32* %60, i32 2, i32 %61)
  %63 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @env_set_qos(i8**, i32*, i8**, i8*) #2

declare dso_local i32 @dt_launchd_helper_env(i8*, i8*, i8**) #2

declare dso_local i32 @dt_fork_helper(i8*) #2

declare dso_local i32 @dt_run_helpers(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
