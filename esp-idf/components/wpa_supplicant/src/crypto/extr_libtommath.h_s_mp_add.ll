; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_s_mp_add.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_s_mp_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32* }

@MP_OKAY = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i64 0, align 8
@MP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*)* @s_mp_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_mp_add(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %8, align 8
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %8, align 8
  br label %41

41:                                               ; preds = %33, %25
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @mp_grow(%struct.TYPE_7__* %49, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* @MP_OKAY, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %158

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %41
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %14, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %15, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %16, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %75

75:                                               ; preds = %100, %58
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %75
  %80 = load i32*, i32** %14, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %14, align 8
  %82 = load i32, i32* %80, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %15, align 8
  %85 = load i32, i32* %83, align 4
  %86 = add nsw i32 %82, %85
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32*, i32** %16, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %16, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* @DIGIT_BIT, align 8
  %93 = trunc i64 %92 to i32
  %94 = ashr i32 %91, %93
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* @MP_MASK, align 4
  %96 = load i32*, i32** %16, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %16, align 8
  %98 = load i32, i32* %96, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %96, align 4
  br label %100

100:                                              ; preds = %79
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %75

103:                                              ; preds = %75
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %137

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %133, %107
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %108
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32*, i32** %16, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32*, i32** %16, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* @DIGIT_BIT, align 8
  %126 = trunc i64 %125 to i32
  %127 = ashr i32 %124, %126
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* @MP_MASK, align 4
  %129 = load i32*, i32** %16, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %16, align 8
  %131 = load i32, i32* %129, align 4
  %132 = and i32 %131, %128
  store i32 %132, i32* %129, align 4
  br label %133

133:                                              ; preds = %112
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %17, align 4
  br label %108

136:                                              ; preds = %108
  br label %137

137:                                              ; preds = %136, %103
  %138 = load i32, i32* %13, align 4
  %139 = load i32*, i32** %16, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %16, align 8
  store i32 %138, i32* %139, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %17, align 4
  br label %144

144:                                              ; preds = %151, %137
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = load i32*, i32** %16, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %16, align 8
  store i32 0, i32* %149, align 4
  br label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  br label %144

154:                                              ; preds = %144
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = call i32 @mp_clamp(%struct.TYPE_7__* %155)
  %157 = load i32, i32* @MP_OKAY, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %154, %55
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @mp_grow(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
