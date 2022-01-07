; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_ticker_smooth_scan_characters.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_ticker_smooth_scan_characters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32, i32*, i32*, i32*, i32*, i32*)* @ticker_smooth_scan_characters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ticker_smooth_scan_characters(i32* %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %24 = load i32*, i32** %14, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %15, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %16, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %17, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %9
  %30 = load i32*, i32** %17, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %9
  %32 = load i32*, i32** %18, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32*, i32** %18, align 8
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %20, align 4
  %38 = icmp ugt i32 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %36
  store i32 0, i32* %22, align 4
  br label %40

40:                                               ; preds = %74, %39
  %41 = load i32, i32* %22, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* %11, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %40
  %46 = load i32, i32* %20, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %22, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ugt i32 %46, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %22, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %20, align 4
  %60 = sub i32 %59, %58
  store i32 %60, i32* %20, align 4
  br label %73

61:                                               ; preds = %45
  %62 = load i32, i32* %22, align 4
  %63 = add i32 %62, 1
  %64 = load i32*, i32** %14, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %22, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %20, align 4
  %71 = sub i32 %69, %70
  %72 = load i32*, i32** %16, align 8
  store i32 %71, i32* %72, align 4
  br label %77

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %22, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %22, align 4
  br label %40

77:                                               ; preds = %61, %40
  br label %78

78:                                               ; preds = %77, %36
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %22, align 4
  br label %81

81:                                               ; preds = %118, %78
  %82 = load i32, i32* %22, align 4
  %83 = zext i32 %82 to i64
  %84 = load i64, i64* %11, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %121

86:                                               ; preds = %81
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %22, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %19, align 4
  %93 = add i32 %92, %91
  store i32 %93, i32* %19, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %19, align 4
  %97 = add i32 %95, %96
  %98 = load i32, i32* %12, align 4
  %99 = icmp ule i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %86
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %117

104:                                              ; preds = %86
  %105 = load i32*, i32** %17, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  store i32 0, i32* %21, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %22, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sub i32 %108, %113
  %115 = load i32*, i32** %17, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %107, %104
  br label %121

117:                                              ; preds = %100
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %22, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %22, align 4
  br label %81

121:                                              ; preds = %116, %81
  %122 = load i32*, i32** %17, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* %21, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* %19, align 4
  %129 = load i32*, i32** %17, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %130, %121
  %132 = load i32*, i32** %18, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = load i32*, i32** %16, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %19, align 4
  %138 = add i32 %136, %137
  %139 = load i32*, i32** %18, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32*, i32** %18, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp ugt i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = load i32, i32* %12, align 4
  br label %149

146:                                              ; preds = %134
  %147 = load i32*, i32** %18, align 8
  %148 = load i32, i32* %147, align 4
  br label %149

149:                                              ; preds = %146, %144
  %150 = phi i32 [ %145, %144 ], [ %148, %146 ]
  %151 = load i32*, i32** %18, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %131
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
