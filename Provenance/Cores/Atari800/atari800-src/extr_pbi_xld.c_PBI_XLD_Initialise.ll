; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_xld.c_PBI_XLD_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_xld.c_PBI_XLD_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"-1400\00", align 1
@TRUE = common dso_local global i32 0, align 4
@PBI_XLD_v_enabled = common dso_local global i32 0, align 4
@PBI_XLD_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"-xld\00", align 1
@xld_d_enabled = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\09-1400            Emulate the Atari 1400XL\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\09-xld             Emulate the Atari 1450XLD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PBI_XLD_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %59, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %62

12:                                               ; preds = %7
  %13 = load i8**, i8*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* @PBI_XLD_v_enabled, align 4
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* @PBI_XLD_enabled, align 4
  br label %58

23:                                               ; preds = %12
  %24 = load i8**, i8*** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* @PBI_XLD_v_enabled, align 4
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* @xld_d_enabled, align 4
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* @PBI_XLD_enabled, align 4
  br label %57

35:                                               ; preds = %23
  %36 = load i8**, i8*** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = call i32 @Log_print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 @Log_print(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i8**, i8*** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  store i8* %51, i8** %56, align 8
  br label %57

57:                                               ; preds = %46, %31
  br label %58

58:                                               ; preds = %57, %20
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %7

62:                                               ; preds = %7
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** %3, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @PBI_XLD_v_enabled, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 (...) @init_xld_v()
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i32, i32* @xld_d_enabled, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 (...) @init_xld_d()
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* @TRUE, align 4
  ret i32 %75
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @init_xld_v(...) #1

declare dso_local i32 @init_xld_d(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
