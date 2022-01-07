; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/getopt/extr_getopt.c__getopt_initialize.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/getopt/extr_getopt.c__getopt_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._getopt_data = type { i32, i32, i32, i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@RETURN_IN_ORDER = common dso_local global i8* null, align 8
@REQUIRE_ORDER = common dso_local global i8* null, align 8
@PERMUTE = common dso_local global i8* null, align 8
@__getopt_nonoption_flags = common dso_local global i8* null, align 8
@__libc_argc = common dso_local global i32 0, align 4
@__libc_argv = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8**, i8*, %struct._getopt_data*)* @_getopt_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_getopt_initialize(i32 %0, i8** %1, i8* %2, %struct._getopt_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._getopt_data*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct._getopt_data* %3, %struct._getopt_data** %8, align 8
  %9 = load %struct._getopt_data*, %struct._getopt_data** %8, align 8
  %10 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct._getopt_data*, %struct._getopt_data** %8, align 8
  %13 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load %struct._getopt_data*, %struct._getopt_data** %8, align 8
  %15 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %14, i32 0, i32 7
  store i32 %11, i32* %15, align 8
  %16 = load %struct._getopt_data*, %struct._getopt_data** %8, align 8
  %17 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %16, i32 0, i32 4
  store i32* null, i32** %17, align 8
  %18 = call i32 @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct._getopt_data*, %struct._getopt_data** %8, align 8
  %24 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load i8*, i8** @RETURN_IN_ORDER, align 8
  %32 = load %struct._getopt_data*, %struct._getopt_data** %8, align 8
  %33 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  br label %63

36:                                               ; preds = %4
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i8*, i8** @REQUIRE_ORDER, align 8
  %44 = load %struct._getopt_data*, %struct._getopt_data** %8, align 8
  %45 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  br label %62

48:                                               ; preds = %36
  %49 = load %struct._getopt_data*, %struct._getopt_data** %8, align 8
  %50 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i8*, i8** @REQUIRE_ORDER, align 8
  %55 = load %struct._getopt_data*, %struct._getopt_data** %8, align 8
  %56 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  br label %61

57:                                               ; preds = %48
  %58 = load i8*, i8** @PERMUTE, align 8
  %59 = load %struct._getopt_data*, %struct._getopt_data** %8, align 8
  %60 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %30
  %64 = load i8*, i8** %7, align 8
  ret i8* %64
}

declare dso_local i32 @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
