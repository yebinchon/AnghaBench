; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler_int.c_scaler_argb8888_vert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler_int.c_scaler_argb8888_vert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_ctx = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32*, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scaler_argb8888_vert(%struct.scaler_ctx* %0, i8* %1, i32 %2) #0 {
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
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.scaler_ctx* %0, %struct.scaler_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %11, align 8
  %27 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %12, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %182, %3
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %197

37:                                               ; preds = %31
  %38 = load i32*, i32** %10, align 8
  %39 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 3
  %52 = mul nsw i32 %46, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %38, i64 %53
  store i32* %54, i32** %13, align 8
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %178, %37
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %181

61:                                               ; preds = %55
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %14, align 8
  %66 = call i32 (...) @_mm_setzero_si128()
  store i32 %66, i32* %16, align 4
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %113, %61
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %124

75:                                               ; preds = %67
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, 281479271743489
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 0
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = mul nsw i64 %91, 281479271743489
  %93 = trunc i64 %92 to i32
  %94 = call i32 @_mm_set_epi64x(i32 %84, i32 %93)
  store i32 %94, i32* %17, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = ashr i32 %99, 3
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %95, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %14, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @_mm_set_epi64x(i32 %103, i32 %106)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @_mm_mulhi_epi16(i32 %108, i32 %109)
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @_mm_adds_epi16(i32 %110, i32 %111)
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %75
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 2
  store i32 %115, i32* %9, align 4
  %116 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %117 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = ashr i32 %119, 2
  %121 = load i32*, i32** %14, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %14, align 8
  br label %67

124:                                              ; preds = %67
  br label %125

125:                                              ; preds = %151, %124
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %128 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %126, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %125
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 %138, 281479271743489
  %140 = trunc i64 %139 to i32
  %141 = call i32 @_mm_set_epi64x(i32 0, i32 %140)
  store i32 %141, i32* %19, align 4
  %142 = load i32*, i32** %14, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @_mm_set_epi64x(i32 0, i32 %144)
  store i32 %145, i32* %20, align 4
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %19, align 4
  %148 = call i32 @_mm_mulhi_epi16(i32 %146, i32 %147)
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @_mm_adds_epi16(i32 %148, i32 %149)
  store i32 %150, i32* %16, align 4
  br label %151

151:                                              ; preds = %132
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  %154 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %155 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = ashr i32 %157, 3
  %159 = load i32*, i32** %14, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %14, align 8
  br label %125

162:                                              ; preds = %125
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @_mm_srli_si128(i32 %163, i32 8)
  %165 = load i32, i32* %16, align 4
  %166 = call i32 @_mm_adds_epi16(i32 %164, i32 %165)
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @_mm_srai_epi16(i32 %167, i32 3)
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @_mm_packus_epi16(i32 %169, i32 %170)
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @_mm_cvtsi128_si32(i32 %172)
  %174 = load i32*, i32** %11, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %162
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %55

181:                                              ; preds = %55
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  %185 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %186 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %12, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %12, align 8
  %192 = load i32, i32* %6, align 4
  %193 = ashr i32 %192, 2
  %194 = load i32*, i32** %11, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %11, align 8
  br label %31

197:                                              ; preds = %31
  ret void
}

declare dso_local i32 @_mm_setzero_si128(...) #1

declare dso_local i32 @_mm_set_epi64x(i32, i32) #1

declare dso_local i32 @_mm_adds_epi16(i32, i32) #1

declare dso_local i32 @_mm_mulhi_epi16(i32, i32) #1

declare dso_local i32 @_mm_srli_si128(i32, i32) #1

declare dso_local i32 @_mm_srai_epi16(i32, i32) #1

declare dso_local i32 @_mm_packus_epi16(i32, i32) #1

declare dso_local i32 @_mm_cvtsi128_si32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
