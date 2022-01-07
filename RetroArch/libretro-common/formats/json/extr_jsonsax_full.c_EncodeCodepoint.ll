; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_EncodeCodepoint.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_EncodeCodepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_2_BYTE_UTF8_CODEPOINT = common dso_local global i32 0, align 4
@FIRST_3_BYTE_UTF8_CODEPOINT = common dso_local global i32 0, align 4
@FIRST_4_BYTE_UTF8_CODEPOINT = common dso_local global i32 0, align 4
@FIRST_NON_BMP_CODEPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*)* @EncodeCodepoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EncodeCodepoint(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %175 [
    i32 128, label %11
    i32 131, label %81
    i32 132, label %112
    i32 129, label %143
    i32 130, label %159
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FIRST_2_BYTE_UTF8_CODEPOINT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  store i64 1, i64* %7, align 8
  br label %80

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @FIRST_3_BYTE_UTF8_CODEPOINT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 6
  %26 = or i32 192, %25
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @BOTTOM_6_BITS(i32 %29)
  %31 = or i32 128, %30
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  store i64 2, i64* %7, align 8
  br label %79

34:                                               ; preds = %19
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @FIRST_4_BYTE_UTF8_CODEPOINT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 12
  %41 = or i32 224, %40
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 6
  %46 = call i32 @BOTTOM_6_BITS(i32 %45)
  %47 = or i32 128, %46
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @BOTTOM_6_BITS(i32 %50)
  %52 = or i32 128, %51
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %52, i32* %54, align 4
  store i64 3, i64* %7, align 8
  br label %78

55:                                               ; preds = %34
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 18
  %58 = or i32 240, %57
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %4, align 4
  %62 = ashr i32 %61, 12
  %63 = call i32 @BOTTOM_6_BITS(i32 %62)
  %64 = or i32 128, %63
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = ashr i32 %67, 6
  %69 = call i32 @BOTTOM_6_BITS(i32 %68)
  %70 = or i32 128, %69
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @BOTTOM_6_BITS(i32 %73)
  %75 = or i32 128, %74
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32 %75, i32* %77, align 4
  store i64 4, i64* %7, align 8
  br label %78

78:                                               ; preds = %55, %38
  br label %79

79:                                               ; preds = %78, %23
  br label %80

80:                                               ; preds = %79, %15
  br label %175

81:                                               ; preds = %3
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @FIRST_NON_BMP_CODEPOINT, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %4, align 4
  %90 = ashr i32 %89, 8
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %90, i32* %92, align 4
  store i64 2, i64* %7, align 8
  br label %111

93:                                               ; preds = %81
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @SURROGATES_FROM_CODEPOINT(i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = ashr i32 %96, 16
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = ashr i32 %100, 24
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %8, align 4
  %108 = ashr i32 %107, 8
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  store i32 %108, i32* %110, align 4
  store i64 4, i64* %7, align 8
  br label %111

111:                                              ; preds = %93, %85
  br label %175

112:                                              ; preds = %3
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @FIRST_NON_BMP_CODEPOINT, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i32, i32* %4, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %4, align 4
  %121 = ashr i32 %120, 8
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %121, i32* %123, align 4
  store i64 2, i64* %7, align 8
  br label %142

124:                                              ; preds = %112
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @SURROGATES_FROM_CODEPOINT(i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = ashr i32 %127, 16
  %129 = load i32*, i32** %6, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = ashr i32 %131, 24
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %9, align 4
  %139 = ashr i32 %138, 8
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  store i32 %139, i32* %141, align 4
  store i64 4, i64* %7, align 8
  br label %142

142:                                              ; preds = %124, %116
  br label %175

143:                                              ; preds = %3
  %144 = load i32, i32* %4, align 4
  %145 = load i32*, i32** %6, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %4, align 4
  %148 = ashr i32 %147, 8
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %4, align 4
  %152 = ashr i32 %151, 16
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %4, align 4
  %156 = ashr i32 %155, 24
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  store i32 %156, i32* %158, align 4
  store i64 4, i64* %7, align 8
  br label %175

159:                                              ; preds = %3
  %160 = load i32, i32* %4, align 4
  %161 = load i32*, i32** %6, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 3
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %4, align 4
  %164 = ashr i32 %163, 8
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %4, align 4
  %168 = ashr i32 %167, 16
  %169 = load i32*, i32** %6, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* %4, align 4
  %172 = ashr i32 %171, 24
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %172, i32* %174, align 4
  store i64 4, i64* %7, align 8
  br label %175

175:                                              ; preds = %3, %159, %143, %142, %111, %80
  %176 = load i64, i64* %7, align 8
  ret i64 %176
}

declare dso_local i32 @BOTTOM_6_BITS(i32) #1

declare dso_local i32 @SURROGATES_FROM_CODEPOINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
