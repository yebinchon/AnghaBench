; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/siphash/extr_siphash24.c_siphash.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/siphash/extr_siphash24.c_siphash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRACE = common dso_local global i32 0, align 4
@cROUNDS = common dso_local global i32 0, align 4
@SIPROUND = common dso_local global i32 0, align 4
@dROUNDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siphash(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
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
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 1886610805, i32* %9, align 4
  store i32 1852075885, i32* %10, align 4
  store i32 1852142177, i32* %11, align 4
  store i32 2037671283, i32* %12, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @U8TO64_LE(i32* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 8
  %24 = call i32 @U8TO64_LE(i32* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = urem i64 %30, 4
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32* %33, i32** %18, align 8
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 7
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 %36, 56
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %12, align 4
  %40 = xor i32 %39, %38
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %11, align 4
  %43 = xor i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %10, align 4
  %46 = xor i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %9, align 4
  %49 = xor i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %74, %4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %18, align 8
  %53 = icmp ne i32* %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @U8TO64_LE(i32* %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %12, align 4
  %59 = xor i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @TRACE, align 4
  store i32 0, i32* %17, align 4
  br label %61

61:                                               ; preds = %67, %54
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* @cROUNDS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* @SIPROUND, align 4
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %17, align 4
  br label %61

70:                                               ; preds = %61
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %9, align 4
  %73 = xor i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  store i32* %76, i32** %6, align 8
  br label %50

77:                                               ; preds = %50
  %78 = load i32, i32* %19, align 4
  switch i32 %78, label %128 [
    i32 7, label %79
    i32 6, label %86
    i32 5, label %93
    i32 4, label %100
    i32 3, label %107
    i32 2, label %114
    i32 1, label %121
    i32 0, label %127
  ]

79:                                               ; preds = %77
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 48
  %84 = load i32, i32* %13, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %77, %79
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 40
  %91 = load i32, i32* %13, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %77, %86
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 32
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %77, %93
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 24
  %105 = load i32, i32* %13, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %77, %100
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 16
  %112 = load i32, i32* %13, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %77, %107
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 8
  %119 = load i32, i32* %13, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %77, %114
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %13, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %13, align 4
  br label %128

127:                                              ; preds = %77
  br label %128

128:                                              ; preds = %77, %127, %121
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %12, align 4
  %131 = xor i32 %130, %129
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* @TRACE, align 4
  store i32 0, i32* %17, align 4
  br label %133

133:                                              ; preds = %139, %128
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @cROUNDS, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load i32, i32* @SIPROUND, align 4
  br label %139

139:                                              ; preds = %137
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  br label %133

142:                                              ; preds = %133
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %9, align 4
  %145 = xor i32 %144, %143
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %11, align 4
  %147 = xor i32 %146, 255
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* @TRACE, align 4
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %155, %142
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* @dROUNDS, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i32, i32* @SIPROUND, align 4
  br label %155

155:                                              ; preds = %153
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %17, align 4
  br label %149

158:                                              ; preds = %149
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %10, align 4
  %161 = xor i32 %159, %160
  %162 = load i32, i32* %11, align 4
  %163 = xor i32 %161, %162
  %164 = load i32, i32* %12, align 4
  %165 = xor i32 %163, %164
  store i32 %165, i32* %13, align 4
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @U64TO8_LE(i32* %166, i32 %167)
  ret i32 0
}

declare dso_local i32 @U8TO64_LE(i32*) #1

declare dso_local i32 @U64TO8_LE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
