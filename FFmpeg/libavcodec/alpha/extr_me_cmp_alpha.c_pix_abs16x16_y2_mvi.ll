; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_me_cmp_alpha.c_pix_abs16x16_y2_mvi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_me_cmp_alpha.c_pix_abs16x16_y2_mvi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32, i32)* @pix_abs16x16_y2_mvi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_abs16x16_y2_mvi(i8* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = and i64 %27, 7
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %107

30:                                               ; preds = %5
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  %33 = call i32 @ldq_u(i32* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @ldq_u(i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @extql(i32 %35, i32* %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @extqh(i32 %38, i32* %39)
  %41 = or i32 %37, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @extql(i32 %42, i32* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 16
  %47 = call i32 @ldq_u(i32* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @extqh(i32 %47, i32* %48)
  %50 = or i32 %44, %49
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %102, %30
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @ldq(i32* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 8
  %56 = call i32 @ldq(i32* %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %8, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  %63 = call i32 @ldq_u(i32* %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @ldq_u(i32* %64)
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @extql(i32 %65, i32* %66)
  %68 = load i32, i32* %19, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @extqh(i32 %68, i32* %69)
  %71 = or i32 %67, %70
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @extql(i32 %72, i32* %73)
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 16
  %77 = call i32 @ldq_u(i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @extqh(i32 %77, i32* %78)
  %80 = or i32 %74, %79
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @avg2(i32 %82, i32 %83)
  %85 = call i64 @perr(i32 %81, i32 %84)
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @avg2(i32 %87, i32 %88)
  %90 = call i64 @perr(i32 %86, i32 %89)
  %91 = add nsw i64 %85, %90
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %7, align 8
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %18, align 4
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %51
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %51, label %106

106:                                              ; preds = %102
  br label %154

107:                                              ; preds = %5
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @ldq(i32* %108)
  store i32 %109, i32* %20, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 8
  %112 = call i32 @ldq(i32* %111)
  store i32 %112, i32* %21, align 4
  br label %113

113:                                              ; preds = %149, %107
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @ldq(i32* %114)
  store i32 %115, i32* %22, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 8
  %118 = call i32 @ldq(i32* %117)
  store i32 %118, i32* %23, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %8, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @ldq(i32* %123)
  store i32 %124, i32* %24, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 8
  %127 = call i32 @ldq(i32* %126)
  store i32 %127, i32* %25, align 4
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %24, align 4
  %131 = call i32 @avg2(i32 %129, i32 %130)
  %132 = call i64 @perr(i32 %128, i32 %131)
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* %25, align 4
  %136 = call i32 @avg2(i32 %134, i32 %135)
  %137 = call i64 @perr(i32 %133, i32 %136)
  %138 = add nsw i64 %132, %137
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %7, align 8
  %147 = load i32, i32* %24, align 4
  store i32 %147, i32* %20, align 4
  %148 = load i32, i32* %25, align 4
  store i32 %148, i32* %21, align 4
  br label %149

149:                                              ; preds = %113
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %113, label %153

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153, %106
  %155 = load i32, i32* %11, align 4
  ret i32 %155
}

declare dso_local i32 @ldq_u(i32*) #1

declare dso_local i32 @extql(i32, i32*) #1

declare dso_local i32 @extqh(i32, i32*) #1

declare dso_local i32 @ldq(i32*) #1

declare dso_local i64 @perr(i32, i32) #1

declare dso_local i32 @avg2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
