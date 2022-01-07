; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ctr.c_ctr_check_dspfirm.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ctr.c_ctr_check_dspfirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"sdmc:/3ds/dspfirm.cdc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"sdmc:/3ds/code.bin\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Warning:\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"3DS DSP dump is missing.\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"A working DSP dump is required\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"for correct operation.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ctr_check_dspfirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctr_check_dspfirm() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = call i32* @fopen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @fclose(i32* %12)
  br label %98

14:                                               ; preds = %0
  %15 = call i32* @fopen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %88

18:                                               ; preds = %14
  store i64* null, i64** %4, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @SEEK_END, align 4
  %21 = call i32 @fseek(i32* %19, i32 0, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @ftell(i32* %22)
  store i64 %23, i64* %3, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @SEEK_SET, align 4
  %26 = call i32 @fseek(i32* %24, i32 0, i32 %25)
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @malloc(i64 %27)
  %29 = inttoptr i64 %28 to i64*
  store i64* %29, i64** %4, align 8
  %30 = load i64*, i64** %4, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %85

32:                                               ; preds = %18
  store i64* null, i64** %5, align 8
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @fread(i64* %33, i32 1, i64 %34, i32* %35)
  %37 = load i64*, i64** %4, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 64
  store i64* %38, i64** %5, align 8
  br label %39

39:                                               ; preds = %79, %32
  %40 = load i64*, i64** %5, align 8
  %41 = load i64*, i64** %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = lshr i64 %42, 2
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = icmp ult i64* %40, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %39
  store i64 827347780, i64* %6, align 8
  %47 = load i64*, i64** %5, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 827347780
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load i64*, i64** %5, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %7, align 8
  %54 = load i64*, i64** %5, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 -64
  store i64* %55, i64** %5, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = lshr i64 %57, 2
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* %3, align 8
  %62 = lshr i64 %61, 2
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = icmp ugt i64* %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %82

66:                                               ; preds = %50
  %67 = call i32* @fopen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %67, i32** %1, align 8
  %68 = load i32*, i32** %1, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %82

71:                                               ; preds = %66
  %72 = load i64*, i64** %5, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @fwrite(i64* %72, i32 1, i64 %73, i32* %74)
  %76 = load i32*, i32** %1, align 8
  %77 = call i32 @fclose(i32* %76)
  br label %82

78:                                               ; preds = %46
  br label %79

79:                                               ; preds = %78
  %80 = load i64*, i64** %5, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %5, align 8
  br label %39

82:                                               ; preds = %71, %70, %65, %39
  %83 = load i64*, i64** %4, align 8
  %84 = call i32 @free(i64* %83)
  br label %85

85:                                               ; preds = %82, %18
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @fclose(i32* %86)
  br label %97

88:                                               ; preds = %14
  %89 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %90 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %91 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %92 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %93 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %94 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %95 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %96 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %88, %85
  br label %98

98:                                               ; preds = %97, %11
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fread(i64*, i32, i64, i32*) #1

declare dso_local i32 @fwrite(i64*, i32, i64, i32*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
