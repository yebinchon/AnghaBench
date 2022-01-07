; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_read_code.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_read_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32)* @read_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_code(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @get_bits_left(i32* %15)
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %19, i32* %6, align 4
  br label %134

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @show_bits(i32* %21, i32 2)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %69

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @show_bits(i32* %25, i32 4)
  switch i32 %26, label %42 [
    i32 1, label %27
    i32 9, label %27
    i32 2, label %28
    i32 3, label %29
    i32 5, label %30
    i32 13, label %30
    i32 6, label %31
    i32 7, label %32
    i32 10, label %33
    i32 11, label %34
    i32 14, label %35
    i32 15, label %36
  ]

27:                                               ; preds = %24, %24
  store i32 1, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %44

28:                                               ; preds = %24
  store i32 3, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %44

29:                                               ; preds = %24
  store i32 7, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %44

30:                                               ; preds = %24, %24
  store i32 2, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %44

31:                                               ; preds = %24
  store i32 4, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %44

32:                                               ; preds = %24
  store i32 8, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %44

33:                                               ; preds = %24
  store i32 5, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %44

34:                                               ; preds = %24
  store i32 9, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %44

35:                                               ; preds = %24
  store i32 6, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %44

36:                                               ; preds = %24
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @show_bits(i32* %37, i32 5)
  %39 = and i32 %38, 16
  %40 = or i32 %39, 160
  %41 = ashr i32 %40, 4
  store i32 %41, i32* %12, align 4
  store i32 5, i32* %13, align 4
  br label %44

42:                                               ; preds = %24
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %6, align 4
  br label %134

44:                                               ; preds = %36, %35, %34, %33, %32, %31, %30, %29, %28, %27
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @skip_bits(i32* %45, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @get_bits(i32* %48, i32 %49)
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 1, i32* %52, align 4
  %53 = load i32*, i32** %8, align 8
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, 1
  %56 = shl i32 1, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %44
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %62, %64
  %66 = sub nsw i32 0, %65
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %44
  br label %133

69:                                               ; preds = %20
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @show_bits(i32* %70, i32 3)
  %72 = and i32 %71, 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %115

74:                                               ; preds = %69
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @skip_bits(i32* %75, i32 3)
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %105

79:                                               ; preds = %74
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @show_bits(i32* %80, i32 4)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @show_bits(i32* %84, i32 4)
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @skip_bits(i32* %88, i32 4)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @get_bits(i32* %90, i32 16)
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  br label %97

93:                                               ; preds = %83
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @get_bits(i32* %94, i32 4)
  %96 = load i32*, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %87
  br label %104

98:                                               ; preds = %79
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @skip_bits(i32* %99, i32 4)
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @get_bits(i32* %101, i32 10)
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %97
  br label %113

105:                                              ; preds = %74
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @get_bits(i32* %109, i32 10)
  %111 = load i32*, i32** %8, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %105
  br label %113

113:                                              ; preds = %112, %104
  %114 = load i32*, i32** %9, align 8
  store i32 0, i32* %114, align 4
  br label %132

115:                                              ; preds = %69
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @skip_bits(i32* %116, i32 3)
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @get_bits(i32* %121, i32 4)
  %123 = load i32*, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  br label %130

124:                                              ; preds = %115
  %125 = load i32, i32* %11, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32*, i32** %8, align 8
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %127, %124
  br label %130

130:                                              ; preds = %129, %120
  %131 = load i32*, i32** %9, align 8
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %130, %113
  br label %133

133:                                              ; preds = %132, %68
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %42, %18
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @show_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
