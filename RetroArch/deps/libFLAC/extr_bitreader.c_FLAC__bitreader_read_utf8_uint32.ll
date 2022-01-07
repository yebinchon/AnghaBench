; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_read_utf8_uint32.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_read_utf8_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__bitreader_read_utf8_uint32(i32* %0, i32* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @FLAC__bitreader_read_raw_uint32(i32* %13, i32* %11, i32 8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %141

17:                                               ; preds = %4
  %18 = load i64*, i64** %8, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64*, i64** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i64, i64* %23, i64 %27
  store i64 %22, i64* %28, align 8
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %97

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 192
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, 32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, 31
  store i32 %45, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %96

46:                                               ; preds = %39, %35
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 224
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 16
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, 15
  store i32 %56, i32* %10, align 4
  store i32 2, i32* %12, align 4
  br label %95

57:                                               ; preds = %50, %46
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, 240
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, 7
  store i32 %67, i32* %10, align 4
  store i32 3, i32* %12, align 4
  br label %94

68:                                               ; preds = %61, %57
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 248
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, 3
  store i32 %78, i32* %10, align 4
  store i32 4, i32* %12, align 4
  br label %93

79:                                               ; preds = %72, %68
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %80, 252
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, 2
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, 1
  store i32 %89, i32* %10, align 4
  store i32 5, i32* %12, align 4
  br label %92

90:                                               ; preds = %83, %79
  %91 = load i32*, i32** %7, align 8
  store i32 -1, i32* %91, align 4
  store i32 1, i32* %5, align 4
  br label %141

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %65
  br label %95

95:                                               ; preds = %94, %54
  br label %96

96:                                               ; preds = %95, %43
  br label %97

97:                                               ; preds = %96, %33
  br label %98

98:                                               ; preds = %135, %97
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %138

101:                                              ; preds = %98
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @FLAC__bitreader_read_raw_uint32(i32* %102, i32* %11, i32 8)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %141

106:                                              ; preds = %101
  %107 = load i64*, i64** %8, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64*, i64** %8, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds i64, i64* %112, i64 %116
  store i64 %111, i64* %117, align 8
  br label %118

118:                                              ; preds = %109, %106
  %119 = load i32, i32* %11, align 4
  %120 = and i32 %119, 128
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  %124 = and i32 %123, 64
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122, %118
  %127 = load i32*, i32** %7, align 8
  store i32 -1, i32* %127, align 4
  store i32 1, i32* %5, align 4
  br label %141

128:                                              ; preds = %122
  %129 = load i32, i32* %10, align 4
  %130 = shl i32 %129, 6
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = and i32 %131, 63
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %12, align 4
  %137 = add i32 %136, -1
  store i32 %137, i32* %12, align 4
  br label %98

138:                                              ; preds = %98
  %139 = load i32, i32* %10, align 4
  %140 = load i32*, i32** %7, align 8
  store i32 %139, i32* %140, align 4
  store i32 1, i32* %5, align 4
  br label %141

141:                                              ; preds = %138, %126, %105, %90, %16
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
