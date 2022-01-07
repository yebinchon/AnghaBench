; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_detect_psp_game.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_detect_psp_game.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ULES-\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ULUS-\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ULJS-\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ULEM-\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ULUM-\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ULJM-\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"UCES-\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"UCUS-\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"UCJS-\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"UCAS-\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"NPEH-\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"NPUH-\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"NPJH-\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"NPEG-\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"NPUG-\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"NPJG-\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"NPHG-\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"NPEZ-\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"NPUZ-\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"NPJZ-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @detect_psp_game(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %117, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 100000
  br i1 %9, label %10, label %120

10:                                               ; preds = %7
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SEEK_SET, align 4
  %14 = call i32 @intfstream_seek(i32* %11, i32 %12, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @intfstream_read(i32* %15, i8* %16, i32 5)
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %115

19:                                               ; preds = %10
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 5
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @string_is_equal(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %101, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @string_is_equal(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %101, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @string_is_equal(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %101, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @string_is_equal(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %101, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @string_is_equal(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %101, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @string_is_equal(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %101, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 @string_is_equal(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %101, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @string_is_equal(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %101, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @string_is_equal(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %101, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 @string_is_equal(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %101, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %4, align 8
  %63 = call i64 @string_is_equal(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %101, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = call i64 @string_is_equal(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %101, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = call i64 @string_is_equal(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %101, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %4, align 8
  %75 = call i64 @string_is_equal(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %101, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %4, align 8
  %79 = call i64 @string_is_equal(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %4, align 8
  %83 = call i64 @string_is_equal(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %4, align 8
  %87 = call i64 @string_is_equal(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %4, align 8
  %91 = call i64 @string_is_equal(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %4, align 8
  %95 = call i64 @string_is_equal(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %4, align 8
  %99 = call i64 @string_is_equal(i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %97, %93, %89, %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %19
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @SEEK_SET, align 4
  %105 = call i32 @intfstream_seek(i32* %102, i32 %103, i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = call i64 @intfstream_read(i32* %106, i8* %107, i32 10)
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 10
  store i8 0, i8* %112, align 1
  store i32 1, i32* %6, align 4
  br label %113

113:                                              ; preds = %110, %101
  br label %120

114:                                              ; preds = %97
  br label %116

115:                                              ; preds = %10
  br label %120

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %7

120:                                              ; preds = %115, %113, %7
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @intfstream_seek(i32*, i32, i32) #1

declare dso_local i64 @intfstream_read(i32*, i8*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
