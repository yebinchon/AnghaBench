; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_read_utf8_uint64.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_read_utf8_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__bitreader_read_utf8_uint64(i32* %0, i32* %1, i64* %2, i32* %3) #0 {
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
  br label %153

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
  br label %108

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
  br label %107

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
  br label %106

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
  br label %105

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
  br label %104

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
  br label %103

90:                                               ; preds = %83, %79
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %91, 254
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, i32* %11, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  store i32 0, i32* %10, align 4
  store i32 6, i32* %12, align 4
  br label %102

99:                                               ; preds = %94, %90
  %100 = call i32 @FLAC__U64L(i32 -1)
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  store i32 1, i32* %5, align 4
  br label %153

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %87
  br label %104

104:                                              ; preds = %103, %76
  br label %105

105:                                              ; preds = %104, %65
  br label %106

106:                                              ; preds = %105, %54
  br label %107

107:                                              ; preds = %106, %43
  br label %108

108:                                              ; preds = %107, %33
  br label %109

109:                                              ; preds = %147, %108
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %150

112:                                              ; preds = %109
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @FLAC__bitreader_read_raw_uint32(i32* %113, i32* %11, i32 8)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %153

117:                                              ; preds = %112
  %118 = load i64*, i64** %8, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64*, i64** %8, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %124, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = zext i32 %125 to i64
  %128 = getelementptr inbounds i64, i64* %123, i64 %127
  store i64 %122, i64* %128, align 8
  br label %129

129:                                              ; preds = %120, %117
  %130 = load i32, i32* %11, align 4
  %131 = and i32 %130, 128
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = and i32 %134, 64
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133, %129
  %138 = call i32 @FLAC__U64L(i32 -1)
  %139 = load i32*, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  store i32 1, i32* %5, align 4
  br label %153

140:                                              ; preds = %133
  %141 = load i32, i32* %10, align 4
  %142 = shl i32 %141, 6
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %143, 63
  %145 = load i32, i32* %10, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %140
  %148 = load i32, i32* %12, align 4
  %149 = add i32 %148, -1
  store i32 %149, i32* %12, align 4
  br label %109

150:                                              ; preds = %109
  %151 = load i32, i32* %10, align 4
  %152 = load i32*, i32** %7, align 8
  store i32 %151, i32* %152, align 4
  store i32 1, i32* %5, align 4
  br label %153

153:                                              ; preds = %150, %137, %116, %99, %16
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(i32*, i32*, i32) #1

declare dso_local i32 @FLAC__U64L(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
