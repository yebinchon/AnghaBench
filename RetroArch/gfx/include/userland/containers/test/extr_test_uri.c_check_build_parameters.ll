; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_check_build_parameters.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_check_build_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_STRING = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Retrieving URI length failed\00", align 1
@TEST_CHAR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Building URI to small buffer failed\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Building URI to small buffer modified buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_build_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_build_parameters(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x i8], align 1
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = load i32*, i32** @TEST_STRING, align 8
  %7 = call i32 @vc_uri_set_path(i32* %5, i32* %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @vc_uri_build(i32* %8, i8* null, i32 0)
  %10 = load i32*, i32** @TEST_STRING, align 8
  %11 = call i64 @strlen(i32* %10)
  %12 = icmp ne i64 %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i8, i8* @TEST_CHAR, align 1
  %19 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  store i8 %18, i8* %19, align 1
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %22 = call i64 @vc_uri_build(i32* %20, i8* %21, i32 1)
  %23 = load i32*, i32** @TEST_STRING, align 8
  %24 = call i64 @strlen(i32* %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %17
  %31 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @TEST_CHAR, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @vc_uri_set_path(i32* %42, i32* null)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @vc_uri_set_path(i32*, i32*) #1

declare dso_local i64 @vc_uri_build(i32*, i8*, i32) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
