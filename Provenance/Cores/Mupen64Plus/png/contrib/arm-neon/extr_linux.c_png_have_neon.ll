; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/arm-neon/extr_linux.c_png_have_neon.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/arm-neon/extr_linux.c_png_have_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@png_have_neon.ch_feature = internal constant [8 x i8] c"FEATURES", align 1
@png_have_neon.ch_neon = internal constant [4 x i8] c"NEON", align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"png_have_neon: internal error (bug)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @png_have_neon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_have_neon(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %127

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %126, %11
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @fgetc(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @EOF, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @fclose(i32* %19)
  store i32 0, i32* %2, align 4
  br label %128

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %123 [
    i32 0, label %23
    i32 1, label %28
    i32 7, label %45
    i32 2, label %54
    i32 3, label %66
    i32 4, label %74
    i32 6, label %91
    i32 5, label %107
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 %24, 32
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %126

27:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %21, %27
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, -33
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* @png_have_neon.ch_feature, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %30, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 2, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %37
  br label %126

44:                                               ; preds = %28
  store i32 7, i32* %5, align 4
  br label %45

45:                                               ; preds = %21, %44
  br label %46

46:                                               ; preds = %65, %45
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 10
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 13
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %126

53:                                               ; preds = %49, %46
  store i32 0, i32* %5, align 4
  br label %126

54:                                               ; preds = %21
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 9
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %54
  br label %126

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 58
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 3, i32* %5, align 4
  br label %126

65:                                               ; preds = %61
  store i32 7, i32* %5, align 4
  br label %46

66:                                               ; preds = %21
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 9
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %66
  br label %126

73:                                               ; preds = %69
  store i32 4, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %21, %73
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, -33
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* @png_have_neon.ch_neon, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %76, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp eq i64 %86, 4
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 5, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %83
  br label %126

90:                                               ; preds = %74
  store i32 6, i32* %5, align 4
  br label %91

91:                                               ; preds = %21, %90
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 10
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 13
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %91
  store i32 0, i32* %5, align 4
  br label %106

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 9
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %98
  store i32 3, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %101
  br label %106

106:                                              ; preds = %105, %97
  br label %126

107:                                              ; preds = %21
  %108 = load i32, i32* %7, align 4
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %119, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 13
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %114, 32
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  %118 = icmp eq i32 %117, 9
  br i1 %118, label %119, label %122

119:                                              ; preds = %116, %113, %110, %107
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @fclose(i32* %120)
  store i32 1, i32* %2, align 4
  br label %128

122:                                              ; preds = %116
  store i32 6, i32* %5, align 4
  br label %126

123:                                              ; preds = %21
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @png_error(i32 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %122, %106, %89, %72, %64, %60, %53, %52, %43, %26
  br label %12

127:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %119, %18
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @png_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
