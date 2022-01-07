; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_extract_arch_from_text.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_extract_arch_from_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"i486\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"i586\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"i686\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"intel_80386\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"intel_80486\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"intel_80586\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"intel_80686\00", align 1
@fARCH_i386 = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"%s used for determining architecture i386\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@fARCH_x86_64 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [45 x i8] c"%s used for determining architecture x86_64\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@fARCH_arm = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [42 x i8] c"%s used for determining architecture ARM\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"arm_aarch64\00", align 1
@fARCH_aarch64 = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [50 x i8] c"%s used for determining architecture ARM aarch64\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extract_arch_from_text(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %111

9:                                                ; preds = %3
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @g_strstrip(i8* %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %110

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @replacestr(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @replacestr(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @g_ascii_strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %19, i32 20)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @g_ascii_strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %23, i32 20)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @g_ascii_strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %27, i32 20)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @g_ascii_strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %31, i32 20)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @g_ascii_strncasecmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %35, i32 20)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @g_ascii_strncasecmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %39, i32 20)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @g_ascii_strncasecmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %43, i32 20)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @g_ascii_strncasecmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %47, i32 20)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46, %42, %38, %34, %30, %26, %22, %14
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* @fARCH_i386, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 1, i32* %53, align 4
  %54 = load i64, i64* @verbose, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %50
  br label %109

61:                                               ; preds = %46
  %62 = load i8*, i8** %4, align 8
  %63 = call i64 @g_ascii_strncasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %62, i32 20)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* @fARCH_x86_64, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 1, i32* %68, align 4
  %69 = load i64, i64* @verbose, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %71, %65
  br label %108

76:                                               ; preds = %61
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @g_ascii_strncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %77, i32 20)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* @fARCH_arm, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 1, i32* %83, align 4
  %84 = load i64, i64* @verbose, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @stderr, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %86, %80
  br label %107

91:                                               ; preds = %76
  %92 = load i8*, i8** %4, align 8
  %93 = call i64 @g_ascii_strncasecmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* %92, i32 20)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i32*, i32** %6, align 8
  %97 = load i64, i64* @fARCH_aarch64, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 1, i32* %98, align 4
  %99 = load i64, i64* @verbose, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @stderr, align 4
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %101, %95
  br label %106

106:                                              ; preds = %105, %91
  br label %107

107:                                              ; preds = %106, %90
  br label %108

108:                                              ; preds = %107, %75
  br label %109

109:                                              ; preds = %108, %60
  br label %110

110:                                              ; preds = %109, %9
  br label %111

111:                                              ; preds = %110, %3
  ret void
}

declare dso_local i8* @g_strstrip(i8*) #1

declare dso_local i32 @replacestr(i8*, i8*, i8*) #1

declare dso_local i64 @g_ascii_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
