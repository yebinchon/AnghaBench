; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_draw_cd_leds.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_draw_cd_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@currentConfig = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EOPT_WIZ_TEAR_FIX = common dso_local global i32 0, align 4
@g_screen_ptr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw_cd_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_cd_leds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @currentConfig, i32 0, i32 0), align 4
  %17 = load i32, i32* @EOPT_WIZ_TEAR_FIX, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %0
  store i32 240, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 0, %21
  %23 = mul nsw i32 %22, 6
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %2, align 4
  %25 = mul nsw i32 %24, 316
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %0
  store i32 320, i32* %2, align 4
  store i32 4, i32* %4, align 4
  %27 = load i32, i32* %2, align 4
  %28 = mul nsw i32 %27, 2
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = call i32 (...) @is_16bit_mode()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %94, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @g_screen_ptr, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %5, align 8
  %40 = load i32, i32* %1, align 4
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 -1061109568, i32 -522133280
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %1, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 -791621424, i32 -522133280
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %2, align 4
  %53 = mul nsw i32 %52, 2
  %54 = ashr i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %2, align 4
  %59 = mul nsw i32 %58, 1
  %60 = ashr i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  store i32 %50, i32* %62, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %2, align 4
  %65 = mul nsw i32 %64, 0
  %66 = ashr i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  store i32 %50, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %2, align 4
  %72 = mul nsw i32 %71, 2
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %72, %73
  %75 = ashr i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %70, i64 %76
  store i32 %69, i32* %77, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %2, align 4
  %80 = mul nsw i32 %79, 1
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %80, %81
  %83 = ashr i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %78, i64 %84
  store i32 %69, i32* %85, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %2, align 4
  %88 = mul nsw i32 %87, 0
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %88, %89
  %91 = ashr i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %86, i64 %92
  store i32 %69, i32* %93, align 4
  br label %215

94:                                               ; preds = %30
  %95 = load i64, i64* @g_screen_ptr, align 8
  %96 = inttoptr i64 %95 to i16*
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i16, i16* %96, i64 %98
  %100 = bitcast i16* %99 to i32*
  store i32* %100, i32** %8, align 8
  %101 = load i32, i32* %1, align 4
  %102 = and i32 %101, 2
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 100664832, i32 0
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %1, align 4
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 -1073692672, i32 0
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %2, align 4
  %114 = mul nsw i32 %113, 2
  %115 = mul nsw i32 %114, 2
  %116 = ashr i32 %115, 2
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %112, i64 %118
  store i32 %111, i32* %119, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %2, align 4
  %122 = mul nsw i32 %121, 2
  %123 = mul nsw i32 %122, 2
  %124 = ashr i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  store i32 %111, i32* %126, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %2, align 4
  %129 = mul nsw i32 %128, 1
  %130 = mul nsw i32 %129, 2
  %131 = ashr i32 %130, 2
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %127, i64 %133
  store i32 %111, i32* %134, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %2, align 4
  %137 = mul nsw i32 %136, 1
  %138 = mul nsw i32 %137, 2
  %139 = ashr i32 %138, 2
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %135, i64 %140
  store i32 %111, i32* %141, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %2, align 4
  %144 = mul nsw i32 %143, 0
  %145 = mul nsw i32 %144, 2
  %146 = ashr i32 %145, 2
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %142, i64 %148
  store i32 %111, i32* %149, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %2, align 4
  %152 = mul nsw i32 %151, 0
  %153 = mul nsw i32 %152, 2
  %154 = ashr i32 %153, 2
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %150, i64 %155
  store i32 %111, i32* %156, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %2, align 4
  %160 = mul nsw i32 %159, 2
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 %160, %161
  %163 = mul nsw i32 %162, 2
  %164 = ashr i32 %163, 2
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %158, i64 %166
  store i32 %157, i32* %167, align 4
  %168 = load i32*, i32** %8, align 8
  %169 = load i32, i32* %2, align 4
  %170 = mul nsw i32 %169, 2
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %170, %171
  %173 = mul nsw i32 %172, 2
  %174 = ashr i32 %173, 2
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %168, i64 %175
  store i32 %157, i32* %176, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %2, align 4
  %179 = mul nsw i32 %178, 1
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %179, %180
  %182 = mul nsw i32 %181, 2
  %183 = ashr i32 %182, 2
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %177, i64 %185
  store i32 %157, i32* %186, align 4
  %187 = load i32*, i32** %8, align 8
  %188 = load i32, i32* %2, align 4
  %189 = mul nsw i32 %188, 1
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %189, %190
  %192 = mul nsw i32 %191, 2
  %193 = ashr i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %187, i64 %194
  store i32 %157, i32* %195, align 4
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %2, align 4
  %198 = mul nsw i32 %197, 0
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %198, %199
  %201 = mul nsw i32 %200, 2
  %202 = ashr i32 %201, 2
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %196, i64 %204
  store i32 %157, i32* %205, align 4
  %206 = load i32*, i32** %8, align 8
  %207 = load i32, i32* %2, align 4
  %208 = mul nsw i32 %207, 0
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %208, %209
  %211 = mul nsw i32 %210, 2
  %212 = ashr i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %206, i64 %213
  store i32 %157, i32* %214, align 4
  br label %215

215:                                              ; preds = %94, %33
  ret void
}

declare dso_local i32 @is_16bit_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
