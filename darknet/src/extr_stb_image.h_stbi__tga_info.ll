; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__tga_info.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__tga_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi__tga_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__tga_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @stbi__get8(i32* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @stbi__get8(i32* %20)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @stbi__rewind(i32* %25)
  store i32 0, i32* %5, align 4
  br label %156

27:                                               ; preds = %4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @stbi__get8(i32* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %67

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 9
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @stbi__rewind(i32* %39)
  store i32 0, i32* %5, align 4
  br label %156

41:                                               ; preds = %35, %32
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @stbi__skip(i32* %42, i32 4)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @stbi__get8(i32* %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 8
  br i1 %47, label %48, label %63

48:                                               ; preds = %41
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 15
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 16
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 24
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 32
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @stbi__rewind(i32* %61)
  store i32 0, i32* %5, align 4
  br label %156

63:                                               ; preds = %57, %54, %51, %48, %41
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @stbi__skip(i32* %64, i32 4)
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %15, align 4
  br label %85

67:                                               ; preds = %27
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 10
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 11
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @stbi__rewind(i32* %80)
  store i32 0, i32* %5, align 4
  br label %156

82:                                               ; preds = %76, %73, %70, %67
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @stbi__skip(i32* %83, i32 9)
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %82, %63
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @stbi__get16le(i32* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @stbi__rewind(i32* %91)
  store i32 0, i32* %5, align 4
  br label %156

93:                                               ; preds = %85
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @stbi__get16le(i32* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @stbi__rewind(i32* %99)
  store i32 0, i32* %5, align 4
  br label %156

101:                                              ; preds = %93
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @stbi__get8(i32* %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @stbi__get8(i32* %104)
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %101
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 8
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 16
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @stbi__rewind(i32* %115)
  store i32 0, i32* %5, align 4
  br label %156

117:                                              ; preds = %111, %108
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @stbi__tga_get_comp(i32 %118, i32 0, i32* null)
  store i32 %119, i32* %12, align 4
  br label %131

120:                                              ; preds = %101
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %13, align 4
  %126 = icmp eq i32 %125, 11
  br label %127

127:                                              ; preds = %124, %120
  %128 = phi i1 [ true, %120 ], [ %126, %124 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @stbi__tga_get_comp(i32 %121, i32 %129, i32* null)
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %127, %117
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @stbi__rewind(i32* %135)
  store i32 0, i32* %5, align 4
  br label %156

137:                                              ; preds = %131
  %138 = load i32*, i32** %7, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = load i32*, i32** %7, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32*, i32** %8, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %11, align 4
  %148 = load i32*, i32** %8, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32*, i32** %9, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %12, align 4
  %154 = load i32*, i32** %9, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %149
  store i32 1, i32* %5, align 4
  br label %156

156:                                              ; preds = %155, %134, %114, %98, %90, %79, %60, %38, %24
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__rewind(i32*) #1

declare dso_local i32 @stbi__skip(i32*, i32) #1

declare dso_local i32 @stbi__get16le(i32*) #1

declare dso_local i32 @stbi__tga_get_comp(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
