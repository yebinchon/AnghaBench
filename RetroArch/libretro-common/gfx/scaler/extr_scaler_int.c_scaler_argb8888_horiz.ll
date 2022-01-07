; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler_int.c_scaler_argb8888_horiz.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler_int.c_scaler_argb8888_horiz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_ctx = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scaler_argb8888_horiz(%struct.scaler_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.scaler_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.scaler_ctx* %0, %struct.scaler_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %170, %3
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %186

32:                                               ; preds = %25
  %33 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %12, align 8
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %159, %32
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %169

44:                                               ; preds = %37
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %45, i64 %54
  store i32* %55, i32** %13, align 8
  %56 = call i32 (...) @_mm_setzero_si128()
  store i32 %56, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %109, %44
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %112

65:                                               ; preds = %57
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, 281479271743489
  %74 = trunc i64 %73 to i32
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 0
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = mul nsw i64 %81, 281479271743489
  %83 = trunc i64 %82 to i32
  %84 = call i32 @_mm_set_epi64x(i32 %74, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 32
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 0
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %91, %97
  %99 = call i32 @_mm_set_epi64x(i32 0, i32 %98)
  %100 = call i32 (...) @_mm_setzero_si128()
  %101 = call i32 @_mm_unpacklo_epi8(i32 %99, i32 %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @_mm_slli_epi16(i32 %102, i32 7)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @_mm_mulhi_epi16(i32 %104, i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @_mm_adds_epi16(i32 %106, i32 %107)
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %65
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %9, align 4
  br label %57

112:                                              ; preds = %57
  br label %113

113:                                              ; preds = %145, %112
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %116 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %120, label %148

120:                                              ; preds = %113
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %126, 281479271743489
  %128 = trunc i64 %127 to i32
  %129 = call i32 @_mm_set_epi64x(i32 0, i32 %128)
  store i32 %129, i32* %17, align 4
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @_mm_set_epi32(i32 0, i32 0, i32 0, i32 %134)
  %136 = call i32 (...) @_mm_setzero_si128()
  %137 = call i32 @_mm_unpacklo_epi8(i32 %135, i32 %136)
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @_mm_slli_epi16(i32 %138, i32 7)
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @_mm_mulhi_epi16(i32 %140, i32 %141)
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @_mm_adds_epi16(i32 %142, i32 %143)
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %120
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %113

148:                                              ; preds = %113
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @_mm_srli_si128(i32 %149, i32 8)
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @_mm_adds_epi16(i32 %150, i32 %151)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @_mm_cvtsi128_si64(i32 %153)
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  br label %159

159:                                              ; preds = %148
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  %162 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %163 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %12, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %12, align 8
  br label %37

169:                                              ; preds = %37
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %6, align 4
  %174 = ashr i32 %173, 2
  %175 = load i32*, i32** %10, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %10, align 8
  %178 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %179 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = ashr i32 %181, 3
  %183 = load i32*, i32** %11, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %11, align 8
  br label %25

186:                                              ; preds = %25
  ret void
}

declare dso_local i32 @_mm_setzero_si128(...) #1

declare dso_local i32 @_mm_set_epi64x(i32, i32) #1

declare dso_local i32 @_mm_unpacklo_epi8(i32, i32) #1

declare dso_local i32 @_mm_slli_epi16(i32, i32) #1

declare dso_local i32 @_mm_adds_epi16(i32, i32) #1

declare dso_local i32 @_mm_mulhi_epi16(i32, i32) #1

declare dso_local i32 @_mm_set_epi32(i32, i32, i32, i32) #1

declare dso_local i32 @_mm_srli_si128(i32, i32) #1

declare dso_local i32 @_mm_cvtsi128_si64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
