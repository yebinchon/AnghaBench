; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_cmd.c_bta_ag_parse_bac.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_cmd.c_bta_ag_parse_bac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTA_AG_CODEC_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@BTA_AG_CODEC_CVSD = common dso_local global i32 0, align 4
@BTA_AG_CODEC_MSBC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unknown Codec UUID(%d) received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @bta_ag_parse_bac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bta_ag_parse_bac(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @BTA_AG_CODEC_NONE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %8, align 8
  br label %12

12:                                               ; preds = %66, %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %67

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %30, %15
  %18 = load i8*, i8** %9, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 44
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** %9, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %9, align 8
  br label %17

33:                                               ; preds = %27
  %34 = load i8*, i8** %9, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %9, align 8
  store i8 0, i8* %39, align 1
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %8, align 8
  br label %43

41:                                               ; preds = %33
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @utl_str2int(i8* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %55 [
    i32 129, label %47
    i32 128, label %51
  ]

47:                                               ; preds = %43
  %48 = load i32, i32* @BTA_AG_CODEC_CVSD, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %59

51:                                               ; preds = %43
  %52 = load i32, i32* @BTA_AG_CODEC_MSBC, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %59

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @BTA_AG_CODEC_NONE, align 4
  store i32 %58, i32* %3, align 4
  br label %69

59:                                               ; preds = %51, %47
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** %5, align 8
  br label %66

65:                                               ; preds = %59
  br label %67

66:                                               ; preds = %62
  br label %12

67:                                               ; preds = %65, %12
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %55
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @utl_str2int(i8*) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
