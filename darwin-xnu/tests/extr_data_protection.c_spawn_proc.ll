; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_data_protection.c_spawn_proc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_data_protection.c_spawn_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"launch tool: %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s should succeed\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s exited %d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s received signal %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spawn_proc(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 30, i32* %9, align 4
  %10 = load i8**, i8*** %3, align 8
  %11 = call i32 @dt_launch_tool(i32* %4, i8** %10, i32 0, i32* null, i32* null)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i8**, i8*** %3, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @T_EXPECT_EQ(i32 %12, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @dt_waitpid(i32 %21, i32* %7, i32* %8, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i8**, i8*** %3, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @T_EXPECT_TRUE(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i8**, i8*** %3, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @T_LOG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i8**, i8*** %3, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @T_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %40
  store i32 1, i32* %2, align 4
  br label %51

50:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %49, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @dt_launch_tool(i32*, i8**, i32, i32*, i32*) #1

declare dso_local i32 @T_EXPECT_EQ(i32, i32, i8*, i8*) #1

declare dso_local i32 @dt_waitpid(i32, i32*, i32*, i32) #1

declare dso_local i32 @T_EXPECT_TRUE(i32, i8*, i8*) #1

declare dso_local i32 @T_LOG(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
