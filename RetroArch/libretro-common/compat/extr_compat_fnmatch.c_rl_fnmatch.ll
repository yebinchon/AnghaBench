; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_fnmatch.c_rl_fnmatch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_fnmatch.c_rl_fnmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FNM_NOMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rl_fnmatch(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %9, align 8
  br label %12

12:                                               ; preds = %134, %3
  %13 = load i8*, i8** %9, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %137

17:                                               ; preds = %12
  %18 = load i8*, i8** %9, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 42
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %28, i32* %4, align 4
  br label %145

29:                                               ; preds = %22, %17
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %120 [
    i32 42, label %33
    i32 91, label %67
    i32 63, label %107
    i32 92, label %110
  ]

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %43, %33
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %145

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 42
  br i1 %47, label %34, label %48

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %55, i32* %4, align 4
  br label %145

56:                                               ; preds = %49
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @rl_fnmatch(i8* %57, i8* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %49, label %66

66:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %145

67:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  br label %70

70:                                               ; preds = %96, %67
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 93
  br i1 %74, label %75, label %99

75:                                               ; preds = %70
  %76 = load i8*, i8** %9, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %81, i32* %4, align 4
  br label %145

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %96

86:                                               ; preds = %82
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 1, i32* %10, align 4
  br label %95

95:                                               ; preds = %94, %86
  br label %96

96:                                               ; preds = %95, %85
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %9, align 8
  br label %70

99:                                               ; preds = %70
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %103, i32* %4, align 4
  br label %145

104:                                              ; preds = %99
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %6, align 8
  br label %133

107:                                              ; preds = %29
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %6, align 8
  br label %133

110:                                              ; preds = %29
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %9, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %118, i32* %4, align 4
  br label %145

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %29, %119
  %121 = load i8*, i8** %9, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = load i8*, i8** %6, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %129, i32* %4, align 4
  br label %145

130:                                              ; preds = %120
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %6, align 8
  br label %133

133:                                              ; preds = %130, %107, %104
  br label %134

134:                                              ; preds = %133
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %9, align 8
  br label %12

137:                                              ; preds = %12
  %138 = load i8*, i8** %6, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143, %142, %128, %117, %102, %80, %66, %54, %41, %27
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
