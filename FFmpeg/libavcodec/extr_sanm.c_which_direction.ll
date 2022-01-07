; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_which_direction.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_which_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEFT_EDGE = common dso_local global i32 0, align 4
@RIGHT_EDGE = common dso_local global i32 0, align 4
@BOTTOM_EDGE = common dso_local global i32 0, align 4
@TOP_EDGE = common dso_local global i32 0, align 4
@DIR_UP = common dso_local global i32 0, align 4
@DIR_DOWN = common dso_local global i32 0, align 4
@DIR_LEFT = common dso_local global i32 0, align 4
@DIR_RIGHT = common dso_local global i32 0, align 4
@NO_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @which_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @which_direction(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @LEFT_EDGE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @RIGHT_EDGE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %37, label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @LEFT_EDGE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @RIGHT_EDGE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %37, label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @BOTTOM_EDGE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TOP_EDGE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @BOTTOM_EDGE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @TOP_EDGE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %25, %17, %9
  %38 = load i32, i32* @DIR_UP, align 4
  store i32 %38, i32* %3, align 4
  br label %114

39:                                               ; preds = %33, %29
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @TOP_EDGE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @BOTTOM_EDGE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @TOP_EDGE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @BOTTOM_EDGE, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %43
  %56 = load i32, i32* @DIR_DOWN, align 4
  store i32 %56, i32* %3, align 4
  br label %114

57:                                               ; preds = %51, %47
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @LEFT_EDGE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @RIGHT_EDGE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @LEFT_EDGE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @RIGHT_EDGE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69, %61
  %74 = load i32, i32* @DIR_LEFT, align 4
  store i32 %74, i32* %3, align 4
  br label %114

75:                                               ; preds = %69, %65
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @TOP_EDGE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @BOTTOM_EDGE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %107, label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @TOP_EDGE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @BOTTOM_EDGE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %107, label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @RIGHT_EDGE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @LEFT_EDGE, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %95, %91
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @RIGHT_EDGE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @LEFT_EDGE, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103, %95, %87, %79
  %108 = load i32, i32* @DIR_RIGHT, align 4
  store i32 %108, i32* %3, align 4
  br label %114

109:                                              ; preds = %103, %99
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* @NO_DIR, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %107, %73, %55, %37
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
