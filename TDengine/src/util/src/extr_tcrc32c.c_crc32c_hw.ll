; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tcrc32c.c_crc32c_hw.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tcrc32c.c_crc32c_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_SHIFT = common dso_local global i32 0, align 4
@long_shifts = common dso_local global i32 0, align 4
@SHORT_SHIFT = common dso_local global i32 0, align 4
@short_shifts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crc32c_hw(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = xor i32 %13, -1
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %25, %3
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = ptrtoint i32* %19 to i64
  %21 = and i64 %20, 7
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %34

25:                                               ; preds = %23
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_mm_crc32_u8(i32 %26, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %6, align 8
  br label %15

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %72, %34
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @LONG_SHIFT, align 4
  %38 = mul nsw i32 3, %37
  %39 = sext i32 %38 to i64
  %40 = icmp uge i64 %36, %39
  br i1 %40, label %41, label %93

41:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @LONG_SHIFT, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32* %45, i32** %8, align 8
  br label %46

46:                                               ; preds = %68, %41
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @_mm_crc32_u32(i32 %47, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @LONG_SHIFT, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @_mm_crc32_u32(i32 %51, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @LONG_SHIFT, align 4
  %61 = mul nsw i32 2, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @_mm_crc32_u32(i32 %58, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32* %67, i32** %7, align 8
  br label %68

68:                                               ; preds = %46
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = icmp ult i32* %69, %70
  br i1 %71, label %46, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @long_shifts, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @shift_crc(i32 %73, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = xor i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @long_shifts, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @shift_crc(i32 %78, i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = xor i32 %80, %81
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @LONG_SHIFT, align 4
  %84 = mul nsw i32 2, %83
  %85 = load i32*, i32** %7, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %7, align 8
  %88 = load i32, i32* @LONG_SHIFT, align 4
  %89 = mul nsw i32 3, %88
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %6, align 8
  %92 = sub i64 %91, %90
  store i64 %92, i64* %6, align 8
  br label %35

93:                                               ; preds = %35
  br label %94

94:                                               ; preds = %131, %93
  %95 = load i64, i64* %6, align 8
  %96 = load i32, i32* @SHORT_SHIFT, align 4
  %97 = mul nsw i32 3, %96
  %98 = sext i32 %97 to i64
  %99 = icmp uge i64 %95, %98
  br i1 %99, label %100, label %152

100:                                              ; preds = %94
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* @SHORT_SHIFT, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32* %104, i32** %8, align 8
  br label %105

105:                                              ; preds = %127, %100
  %106 = load i32, i32* %9, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @_mm_crc32_u32(i32 %106, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* @SHORT_SHIFT, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @_mm_crc32_u32(i32 %110, i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* @SHORT_SHIFT, align 4
  %120 = mul nsw i32 2, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @_mm_crc32_u32(i32 %117, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  store i32* %126, i32** %7, align 8
  br label %127

127:                                              ; preds = %105
  %128 = load i32*, i32** %7, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = icmp ult i32* %128, %129
  br i1 %130, label %105, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* @short_shifts, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @shift_crc(i32 %132, i32 %133)
  %135 = load i32, i32* %10, align 4
  %136 = xor i32 %134, %135
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* @short_shifts, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @shift_crc(i32 %137, i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = xor i32 %139, %140
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* @SHORT_SHIFT, align 4
  %143 = mul nsw i32 2, %142
  %144 = load i32*, i32** %7, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %7, align 8
  %147 = load i32, i32* @SHORT_SHIFT, align 4
  %148 = mul nsw i32 3, %147
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %6, align 8
  %151 = sub i64 %150, %149
  store i64 %151, i64* %6, align 8
  br label %94

152:                                              ; preds = %94
  %153 = load i32*, i32** %7, align 8
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* %6, align 8
  %156 = and i64 %155, 7
  %157 = sub i64 %154, %156
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  store i32* %158, i32** %8, align 8
  br label %159

159:                                              ; preds = %163, %152
  %160 = load i32*, i32** %7, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = icmp ult i32* %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i32, i32* %9, align 4
  %165 = load i32*, i32** %7, align 8
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @_mm_crc32_u32(i32 %164, i32 %166)
  store i32 %167, i32* %9, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 4
  store i32* %169, i32** %7, align 8
  br label %159

170:                                              ; preds = %159
  %171 = load i64, i64* %6, align 8
  %172 = and i64 %171, 7
  store i64 %172, i64* %6, align 8
  br label %173

173:                                              ; preds = %176, %170
  %174 = load i64, i64* %6, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load i32, i32* %9, align 4
  %178 = load i32*, i32** %7, align 8
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @_mm_crc32_u8(i32 %177, i32 %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32*, i32** %7, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %7, align 8
  %183 = load i64, i64* %6, align 8
  %184 = add i64 %183, -1
  store i64 %184, i64* %6, align 8
  br label %173

185:                                              ; preds = %173
  %186 = load i32, i32* %9, align 4
  %187 = xor i32 %186, -1
  ret i32 %187
}

declare dso_local i32 @_mm_crc32_u8(i32, i32) #1

declare dso_local i32 @_mm_crc32_u32(i32, i32) #1

declare dso_local i32 @shift_crc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
