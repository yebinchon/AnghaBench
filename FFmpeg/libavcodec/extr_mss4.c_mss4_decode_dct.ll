; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss4.c_mss4_decode_dct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss4.c_mss4_decode_dct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@LEFT = common dso_local global i64 0, align 8
@TOP_LEFT = common dso_local global i64 0, align 8
@TOP = common dso_local global i64 0, align 8
@ff_zigzag_direct = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32*, i32*, i32, i32, i32*)* @mss4_decode_dct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss4_decode_dct(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2, i32* %3, i32* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 1, i32* %20, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @memset(i32* %26, i32 0, i32 256)
  %28 = load i32*, i32** %10, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = call i32 @get_coeff(i32* %28, %struct.TYPE_5__* %29)
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %8
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = load i32*, i32** %14, align 8
  %38 = load i64, i64* @LEFT, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %23, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = load i64, i64* @TOP_LEFT, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %24, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = load i64, i64* @TOP, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %25, align 4
  %49 = load i32, i32* %25, align 4
  %50 = load i32, i32* %24, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i64 @FFABS(i32 %51)
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* %24, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i64 @FFABS(i32 %55)
  %57 = icmp sle i64 %52, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %36
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %22, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %22, align 4
  br label %66

62:                                               ; preds = %36
  %63 = load i32, i32* %25, align 4
  %64 = load i32, i32* %22, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %22, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %74

67:                                               ; preds = %33
  %68 = load i32*, i32** %14, align 8
  %69 = load i64, i64* @TOP, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %22, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %22, align 4
  br label %74

74:                                               ; preds = %67, %66
  br label %86

75:                                               ; preds = %8
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32*, i32** %14, align 8
  %80 = load i64, i64* @LEFT, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %22, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %22, align 4
  br label %85

85:                                               ; preds = %78, %75
  br label %86

86:                                               ; preds = %85, %74
  %87 = load i32, i32* %22, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = load i64, i64* @LEFT, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* %22, align 4
  %92 = load i32*, i32** %17, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  %96 = load i32*, i32** %13, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %133, %117, %86
  %99 = load i32, i32* %20, align 4
  %100 = icmp slt i32 %99, 64
  br i1 %100, label %101, label %152

101:                                              ; preds = %98
  %102 = load i32*, i32** %10, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @get_vlc2(i32* %102, i32 %105, i32 9, i32 2)
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  store i32 0, i32* %9, align 4
  br label %157

110:                                              ; preds = %101
  %111 = load i32, i32* %19, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 -1, i32* %9, align 4
  br label %157

114:                                              ; preds = %110
  %115 = load i32, i32* %19, align 4
  %116 = icmp eq i32 %115, 240
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %20, align 4
  %119 = add nsw i32 %118, 16
  store i32 %119, i32* %20, align 4
  br label %98

120:                                              ; preds = %114
  %121 = load i32, i32* %19, align 4
  %122 = ashr i32 %121, 4
  store i32 %122, i32* %18, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %19, align 4
  %125 = and i32 %124, 15
  %126 = call i32 @get_coeff_bits(i32* %123, i32 %125)
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %20, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* %20, align 4
  %131 = icmp sge i32 %130, 64
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  store i32 -1, i32* %9, align 4
  br label %157

133:                                              ; preds = %120
  %134 = load i32*, i32** @ff_zigzag_direct, align 8
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %21, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32*, i32** %17, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %139, %144
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %21, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  %150 = load i32, i32* %20, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %20, align 4
  br label %98

152:                                              ; preds = %98
  %153 = load i32, i32* %20, align 4
  %154 = icmp eq i32 %153, 64
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 0, i32 -1
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %152, %132, %113, %109
  %158 = load i32, i32* %9, align 4
  ret i32 %158
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_coeff(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @FFABS(i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_coeff_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
