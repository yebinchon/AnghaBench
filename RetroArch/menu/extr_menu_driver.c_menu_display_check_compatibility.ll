; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_check_compatibility.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_check_compatibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"gl\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gl1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"glcore\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vulkan\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"metal\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"d3d8\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"d3d9\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"d3d10\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"d3d11\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"d3d12\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"vita2d\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ctr\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"gx2\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"sixel\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"caca\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"gdi\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"vga\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"fpga\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @menu_display_check_compatibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_display_check_compatibility(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i8* (...) @video_driver_get_ident()
  store i8* %7, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %124 [
    i32 138, label %9
    i32 136, label %10
    i32 135, label %16
    i32 134, label %22
    i32 129, label %28
    i32 137, label %34
    i32 142, label %40
    i32 141, label %46
    i32 145, label %52
    i32 144, label %58
    i32 143, label %64
    i32 130, label %70
    i32 146, label %76
    i32 128, label %82
    i32 133, label %88
    i32 147, label %94
    i32 139, label %100
    i32 131, label %106
    i32 140, label %112
    i32 132, label %118
  ]

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %125

10:                                               ; preds = %2
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @string_is_equal(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %125

15:                                               ; preds = %10
  br label %124

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @string_is_equal(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %125

21:                                               ; preds = %16
  br label %124

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @string_is_equal(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %125

27:                                               ; preds = %22
  br label %124

28:                                               ; preds = %2
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @string_is_equal(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %125

33:                                               ; preds = %28
  br label %124

34:                                               ; preds = %2
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @string_is_equal(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %125

39:                                               ; preds = %34
  br label %124

40:                                               ; preds = %2
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @string_is_equal(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %125

45:                                               ; preds = %40
  br label %124

46:                                               ; preds = %2
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @string_is_equal(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %125

51:                                               ; preds = %46
  br label %124

52:                                               ; preds = %2
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @string_is_equal(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %125

57:                                               ; preds = %52
  br label %124

58:                                               ; preds = %2
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @string_is_equal(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %125

63:                                               ; preds = %58
  br label %124

64:                                               ; preds = %2
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @string_is_equal(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %125

69:                                               ; preds = %64
  br label %124

70:                                               ; preds = %2
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @string_is_equal(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %125

75:                                               ; preds = %70
  br label %124

76:                                               ; preds = %2
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @string_is_equal(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %125

81:                                               ; preds = %76
  br label %124

82:                                               ; preds = %2
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @string_is_equal(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %125

87:                                               ; preds = %82
  br label %124

88:                                               ; preds = %2
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @string_is_equal(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 1, i32* %3, align 4
  br label %125

93:                                               ; preds = %88
  br label %124

94:                                               ; preds = %2
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @string_is_equal(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, i32* %3, align 4
  br label %125

99:                                               ; preds = %94
  br label %124

100:                                              ; preds = %2
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @string_is_equal(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 1, i32* %3, align 4
  br label %125

105:                                              ; preds = %100
  br label %124

106:                                              ; preds = %2
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @string_is_equal(i8* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 1, i32* %3, align 4
  br label %125

111:                                              ; preds = %106
  br label %124

112:                                              ; preds = %2
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @string_is_equal(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  br label %125

117:                                              ; preds = %112
  br label %124

118:                                              ; preds = %2
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @string_is_equal(i8* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 1, i32* %3, align 4
  br label %125

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %2, %123, %117, %111, %105, %99, %93, %87, %81, %75, %69, %63, %57, %51, %45, %39, %33, %27, %21, %15
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %122, %116, %110, %104, %98, %92, %86, %80, %74, %68, %62, %56, %50, %44, %38, %32, %26, %20, %14, %9
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i8* @video_driver_get_ident(...) #1

declare dso_local i32 @string_is_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
