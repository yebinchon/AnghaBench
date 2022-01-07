; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ticker_smooth_loop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ticker_smooth_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i32*, i64, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @menu_animation_ticker_smooth_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_animation_ticker_smooth_loop(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store i32 %0, i32* %17, align 4
  store i32* %1, i32** %18, align 8
  store i64 %2, i64* %19, align 8
  store i32* %3, i32** %20, align 8
  store i64 %4, i64* %21, align 8
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32* %8, i32** %25, align 8
  store i32* %9, i32** %26, align 8
  store i32* %10, i32** %27, align 8
  store i32* %11, i32** %28, align 8
  store i32* %12, i32** %29, align 8
  store i32* %13, i32** %30, align 8
  store i32* %14, i32** %31, align 8
  store i32* %15, i32** %32, align 8
  %45 = load i32, i32* %22, align 4
  %46 = load i32, i32* %23, align 4
  %47 = add i32 %45, %46
  store i32 %47, i32* %33, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %33, align 4
  %50 = urem i32 %48, %49
  store i32 %50, i32* %34, align 4
  %51 = load i32, i32* %24, align 4
  store i32 %51, i32* %35, align 4
  %52 = load i32*, i32** %25, align 8
  store i32 0, i32* %52, align 4
  %53 = load i32*, i32** %26, align 8
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** %27, align 8
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** %28, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %29, align 8
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %30, align 8
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** %31, align 8
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %32, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %16
  %62 = load i32*, i32** %32, align 8
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %16
  %64 = load i64, i64* %19, align 8
  %65 = icmp ult i64 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %21, align 8
  %68 = icmp ult i64 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %63
  br label %177

70:                                               ; preds = %66
  %71 = load i32, i32* %34, align 4
  %72 = load i32, i32* %22, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i32, i32* %34, align 4
  store i32 %75, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %76 = load i32*, i32** %18, align 8
  %77 = load i64, i64* %19, align 8
  %78 = load i32, i32* %35, align 4
  %79 = load i32, i32* %36, align 4
  %80 = load i32*, i32** %25, align 8
  %81 = load i32*, i32** %26, align 8
  %82 = load i32*, i32** %31, align 8
  %83 = call i32 @ticker_smooth_scan_characters(i32* %76, i64 %77, i32 %78, i32 %79, i32* %80, i32* %81, i32* %82, i32* %38, i32* %37)
  %84 = load i32, i32* %37, align 4
  %85 = load i32, i32* %35, align 4
  %86 = sub i32 %85, %84
  store i32 %86, i32* %35, align 4
  %87 = load i32*, i32** %32, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %74
  %90 = load i32, i32* %38, align 4
  %91 = load i32*, i32** %32, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, %90
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %74
  br label %95

95:                                               ; preds = %94, %70
  %96 = load i32, i32* %35, align 4
  %97 = icmp ugt i32 %96, 0
  br i1 %97, label %98, label %132

98:                                               ; preds = %95
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  store i32 0, i32* %41, align 4
  store i32 0, i32* %42, align 4
  %99 = load i32, i32* %34, align 4
  %100 = load i32, i32* %22, align 4
  %101 = icmp ugt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* %34, align 4
  %104 = load i32, i32* %22, align 4
  %105 = sub i32 %103, %104
  store i32 %105, i32* %39, align 4
  br label %107

106:                                              ; preds = %98
  store i32 0, i32* %39, align 4
  br label %107

107:                                              ; preds = %106, %102
  %108 = load i32*, i32** %20, align 8
  %109 = load i64, i64* %21, align 8
  %110 = load i32, i32* %35, align 4
  %111 = load i32, i32* %39, align 4
  %112 = load i32*, i32** %27, align 8
  %113 = load i32*, i32** %28, align 8
  %114 = call i32 @ticker_smooth_scan_characters(i32* %108, i64 %109, i32 %110, i32 %111, i32* %112, i32* %113, i32* %42, i32* %41, i32* %40)
  %115 = load i32, i32* %40, align 4
  %116 = load i32, i32* %35, align 4
  %117 = sub i32 %116, %115
  store i32 %117, i32* %35, align 4
  %118 = load i32*, i32** %32, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %107
  %121 = load i32, i32* %41, align 4
  %122 = load i32*, i32** %32, align 8
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, %121
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %120, %107
  %126 = load i32, i32* %39, align 4
  %127 = icmp ugt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %42, align 4
  %130 = load i32*, i32** %31, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %95
  %133 = load i32, i32* %35, align 4
  %134 = icmp ugt i32 %133, 0
  br i1 %134, label %135, label %177

135:                                              ; preds = %132
  store i32 0, i32* %44, align 4
  %136 = load i32*, i32** %29, align 8
  store i32 0, i32* %136, align 4
  store i32 0, i32* %43, align 4
  br label %137

137:                                              ; preds = %173, %135
  %138 = load i32, i32* %43, align 4
  %139 = zext i32 %138 to i64
  %140 = load i64, i64* %19, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %176

142:                                              ; preds = %137
  %143 = load i32*, i32** %18, align 8
  %144 = load i32, i32* %43, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %44, align 4
  %149 = add i32 %148, %147
  store i32 %149, i32* %44, align 4
  %150 = load i32, i32* %44, align 4
  %151 = load i32, i32* %35, align 4
  %152 = icmp ule i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %142
  %154 = load i32*, i32** %30, align 8
  %155 = load i32, i32* %154, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %172

157:                                              ; preds = %142
  %158 = load i32*, i32** %32, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %171

160:                                              ; preds = %157
  %161 = load i32, i32* %44, align 4
  %162 = load i32*, i32** %18, align 8
  %163 = load i32, i32* %43, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = sub i32 %161, %166
  %168 = load i32*, i32** %32, align 8
  %169 = load i32, i32* %168, align 4
  %170 = add i32 %169, %167
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %160, %157
  br label %176

172:                                              ; preds = %153
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %43, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %43, align 4
  br label %137

176:                                              ; preds = %171, %137
  br label %177

177:                                              ; preds = %69, %176, %132
  ret void
}

declare dso_local i32 @ticker_smooth_scan_characters(i32*, i64, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
