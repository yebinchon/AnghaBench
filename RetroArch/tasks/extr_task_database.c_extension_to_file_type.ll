; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_extension_to_file_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_extension_to_file_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"7z\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"7Z\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ZIP\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"apk\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"APK\00", align 1
@FILE_TYPE_COMPRESSED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"cue\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"CUE\00", align 1
@FILE_TYPE_CUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"gdi\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"GDI\00", align 1
@FILE_TYPE_GDI = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"iso\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ISO\00", align 1
@FILE_TYPE_ISO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"chd\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"CHD\00", align 1
@FILE_TYPE_CHD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"wbfs\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"WBFS\00", align 1
@FILE_TYPE_WBFS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"lutro\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"LUTRO\00", align 1
@FILE_TYPE_LUTRO = common dso_local global i32 0, align 4
@FILE_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @extension_to_file_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extension_to_file_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @string_is_equal(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @string_is_equal(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @string_is_equal(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @string_is_equal(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @string_is_equal(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @string_is_equal(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19, %15, %11, %7, %1
  %28 = load i32, i32* @FILE_TYPE_COMPRESSED, align 4
  store i32 %28, i32* %2, align 4
  br label %91

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @string_is_equal(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @string_is_equal(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @FILE_TYPE_CUE, align 4
  store i32 %38, i32* %2, align 4
  br label %91

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @string_is_equal(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 @string_is_equal(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @FILE_TYPE_GDI, align 4
  store i32 %48, i32* %2, align 4
  br label %91

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @string_is_equal(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %3, align 8
  %55 = call i64 @string_is_equal(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @FILE_TYPE_ISO, align 4
  store i32 %58, i32* %2, align 4
  br label %91

59:                                               ; preds = %53
  %60 = load i8*, i8** %3, align 8
  %61 = call i64 @string_is_equal(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %3, align 8
  %65 = call i64 @string_is_equal(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %59
  %68 = load i32, i32* @FILE_TYPE_CHD, align 4
  store i32 %68, i32* %2, align 4
  br label %91

69:                                               ; preds = %63
  %70 = load i8*, i8** %3, align 8
  %71 = call i64 @string_is_equal(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %3, align 8
  %75 = call i64 @string_is_equal(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73, %69
  %78 = load i32, i32* @FILE_TYPE_WBFS, align 4
  store i32 %78, i32* %2, align 4
  br label %91

79:                                               ; preds = %73
  %80 = load i8*, i8** %3, align 8
  %81 = call i64 @string_is_equal(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %3, align 8
  %85 = call i64 @string_is_equal(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %79
  %88 = load i32, i32* @FILE_TYPE_LUTRO, align 4
  store i32 %88, i32* %2, align 4
  br label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @FILE_TYPE_NONE, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %87, %77, %67, %57, %47, %37, %27
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @string_is_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
