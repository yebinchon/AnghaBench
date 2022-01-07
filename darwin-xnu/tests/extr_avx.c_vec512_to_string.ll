; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_avx.c_vec512_to_string.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_avx.c_vec512_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZMM_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"0x%016llx:%016llx:%016llx:%016llx:%016llx:%016llx:%016llx:%016llx%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@T_QUIET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"sprintf()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vec512_to_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %53, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ZMM_MAX, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %19 = call i32 @bcopy(i32* %17, i32* %18, i32 32)
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  %33 = load i32, i32* %32, align 16
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 7
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ZMM_MAX, align 4
  %42 = sub i32 %41, 1
  %43 = icmp ult i32 %40, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %46 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27, i32 %29, i32 %31, i32 %33, i32 %35, i32 %37, i32 %39, i8* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @T_QUIET, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %13
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %9

56:                                               ; preds = %9
  ret void
}

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
