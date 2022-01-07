; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_base64.c_rtp_base64_decode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_base64.c_rtp_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_decode_lookup = common dso_local global i64* null, align 8
@LOWEST_BASE64_CHAR = common dso_local global i8 0, align 1
@INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @rtp_base64_decode(i8* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %74, %4
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %13, align 1
  %23 = load i8, i8* %13, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 61
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %77

27:                                               ; preds = %19
  %28 = load i8, i8* %13, align 1
  %29 = call i32 @IN_BASE64_RANGE(i8 signext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %74

32:                                               ; preds = %27
  %33 = load i64*, i64** @base64_decode_lookup, align 8
  %34 = load i8, i8* %13, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* @LOWEST_BASE64_CHAR, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %33, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* @INVALID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %74

46:                                               ; preds = %32
  %47 = load i64, i64* %11, align 8
  %48 = shl i64 %47, 6
  %49 = load i64, i64* %14, align 8
  %50 = or i64 %48, %49
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp eq i64 %53, 4
  br i1 %54, label %55, label %73

55:                                               ; preds = %46
  %56 = load i64, i64* %9, align 8
  %57 = icmp slt i64 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64* null, i64** %5, align 8
  br label %105

59:                                               ; preds = %55
  %60 = load i64, i64* %11, align 8
  %61 = ashr i64 %60, 16
  %62 = load i64*, i64** %8, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = ashr i64 %64, 8
  %66 = load i64*, i64** %8, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %8, align 8
  store i64 %65, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %8, align 8
  store i64 %68, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = sub nsw i64 %71, 3
  store i64 %72, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %73

73:                                               ; preds = %59, %46
  br label %74

74:                                               ; preds = %73, %45, %31
  %75 = load i64, i64* %12, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %15

77:                                               ; preds = %26, %15
  %78 = load i64, i64* %10, align 8
  switch i64 %78, label %102 [
    i64 0, label %79
    i64 2, label %80
    i64 3, label %89
  ]

79:                                               ; preds = %77
  br label %103

80:                                               ; preds = %77
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store i64* null, i64** %5, align 8
  br label %105

84:                                               ; preds = %80
  %85 = load i64, i64* %11, align 8
  %86 = ashr i64 %85, 4
  %87 = load i64*, i64** %8, align 8
  %88 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %88, i64** %8, align 8
  store i64 %86, i64* %87, align 8
  br label %103

89:                                               ; preds = %77
  %90 = load i64, i64* %9, align 8
  %91 = icmp slt i64 %90, 2
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i64* null, i64** %5, align 8
  br label %105

93:                                               ; preds = %89
  %94 = load i64, i64* %11, align 8
  %95 = ashr i64 %94, 10
  %96 = load i64*, i64** %8, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %8, align 8
  store i64 %95, i64* %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = ashr i64 %98, 2
  %100 = load i64*, i64** %8, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %8, align 8
  store i64 %99, i64* %100, align 8
  br label %103

102:                                              ; preds = %77
  store i64* null, i64** %5, align 8
  br label %105

103:                                              ; preds = %93, %84, %79
  %104 = load i64*, i64** %8, align 8
  store i64* %104, i64** %5, align 8
  br label %105

105:                                              ; preds = %103, %102, %92, %83, %58
  %106 = load i64*, i64** %5, align 8
  ret i64* %106
}

declare dso_local i32 @IN_BASE64_RANGE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
