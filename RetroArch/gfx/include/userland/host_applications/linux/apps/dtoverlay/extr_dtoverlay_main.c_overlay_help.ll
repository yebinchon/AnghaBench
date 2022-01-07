; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtoverlay/extr_dtoverlay_main.c_overlay_help.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtoverlay/extr_dtoverlay_main.c_overlay_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@overlay_src_dir = common dso_local global i32 0, align 4
@README_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"dtparam\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"<The base DTB>\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Params\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Unknown parameter '%s'\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Name:   %s\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Info:\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Usage:\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Params:\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"No help found for overlay '%s'\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Help file not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**)* @overlay_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overlay_help(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %12 = load i32, i32* @overlay_src_dir, align 4
  %13 = load i32, i32* @README_FILE, align 4
  %14 = call i8* @sprintf_dup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32* @overlay_help_open(i8* %15)
  store i32* %16, i32** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @free_string(i8* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %124

21:                                               ; preds = %2
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @overlay_help_find(i32* %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %118

31:                                               ; preds = %26
  %32 = load i8**, i8*** %4, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %108

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @overlay_help_find_field(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %108

38:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %51, %98
  %40 = load i32*, i32** %5, align 8
  %41 = call i8* @overlay_help_field_data(i32* %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %99

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %39

52:                                               ; preds = %45
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 32
  br i1 %57, label %58, label %92

58:                                               ; preds = %52
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strcspn(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %60, i32* %9, align 4
  %61 = load i8**, i8*** %4, align 8
  store i8** %61, i8*** %10, align 8
  %62 = load i8**, i8*** %10, align 8
  store i8** %62, i8*** %11, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %86, %58
  %64 = load i8**, i8*** %10, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = load i8**, i8*** %10, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i8*, i8** %8, align 8
  %75 = load i8**, i8*** %10, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @memcmp(i8* %74, i8* %76, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 1, i32* %7, align 4
  br label %86

81:                                               ; preds = %73, %67
  %82 = load i8**, i8*** %10, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %11, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %11, align 8
  store i8* %83, i8** %84, align 8
  br label %86

86:                                               ; preds = %81, %80
  %87 = load i8**, i8*** %10, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %10, align 8
  br label %63

89:                                               ; preds = %63
  %90 = load i8**, i8*** %11, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %11, align 8
  store i8* null, i8** %90, align 8
  br label %92

92:                                               ; preds = %89, %52
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %95, %92
  br label %39

99:                                               ; preds = %44
  %100 = load i8**, i8*** %4, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i8**, i8*** %4, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i8*, ...) @fatal_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %103, %99
  br label %117

108:                                              ; preds = %34, %31
  %109 = load i8*, i8** %3, align 8
  %110 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %109)
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @overlay_help_print_field(i32* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 8, i32 0)
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @overlay_help_print_field(i32* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 8, i32 0)
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @overlay_help_print_field(i32* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 8, i32 0)
  br label %117

117:                                              ; preds = %108, %107
  br label %121

118:                                              ; preds = %26
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 (i8*, ...) @fatal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %118, %117
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @overlay_help_close(i32* %122)
  br label %126

124:                                              ; preds = %2
  %125 = call i32 (i8*, ...) @fatal_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %121
  ret void
}

declare dso_local i8* @sprintf_dup(i8*, i32, i32) #1

declare dso_local i32* @overlay_help_open(i8*) #1

declare dso_local i32 @free_string(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @overlay_help_find(i32*, i8*) #1

declare dso_local i64 @overlay_help_find_field(i32*, i8*) #1

declare dso_local i8* @overlay_help_field_data(i32*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fatal_error(i8*, ...) #1

declare dso_local i32 @overlay_help_print_field(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @overlay_help_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
