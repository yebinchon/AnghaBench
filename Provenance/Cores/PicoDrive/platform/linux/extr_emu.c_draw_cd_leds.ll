; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_emu.c_draw_cd_leds.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_emu.c_draw_cd_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@currentConfig = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@RT_16BIT = common dso_local global i64 0, align 8
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
  store i32 320, i32* %2, align 4
  store i32 4, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = mul nsw i32 %16, 2
  %18 = add nsw i32 %17, 4
  store i32 %18, i32* %3, align 4
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @currentConfig, i32 0, i32 0), align 8
  %20 = load i64, i64* @RT_16BIT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %83

22:                                               ; preds = %0
  %23 = load i64, i64* @g_screen_ptr, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %5, align 8
  %29 = load i32, i32* %1, align 4
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 -1061109568, i32 -522133280
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %1, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 -791621424, i32 -522133280
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %2, align 4
  %42 = mul nsw i32 %41, 2
  %43 = ashr i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %2, align 4
  %48 = mul nsw i32 %47, 1
  %49 = ashr i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32 %39, i32* %51, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %2, align 4
  %54 = mul nsw i32 %53, 0
  %55 = ashr i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32 %39, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %2, align 4
  %61 = mul nsw i32 %60, 2
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %61, %62
  %64 = ashr i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %59, i64 %65
  store i32 %58, i32* %66, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %2, align 4
  %69 = mul nsw i32 %68, 1
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %69, %70
  %72 = ashr i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  store i32 %58, i32* %74, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %2, align 4
  %77 = mul nsw i32 %76, 0
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %77, %78
  %80 = ashr i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %75, i64 %81
  store i32 %58, i32* %82, align 4
  br label %204

83:                                               ; preds = %0
  %84 = load i64, i64* @g_screen_ptr, align 8
  %85 = inttoptr i64 %84 to i16*
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %85, i64 %87
  %89 = bitcast i16* %88 to i32*
  store i32* %89, i32** %8, align 8
  %90 = load i32, i32* %1, align 4
  %91 = and i32 %90, 2
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 100664832, i32 0
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %1, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 -1073692672, i32 0
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %2, align 4
  %103 = mul nsw i32 %102, 2
  %104 = mul nsw i32 %103, 2
  %105 = ashr i32 %104, 2
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %101, i64 %107
  store i32 %100, i32* %108, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %2, align 4
  %111 = mul nsw i32 %110, 2
  %112 = mul nsw i32 %111, 2
  %113 = ashr i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  store i32 %100, i32* %115, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %2, align 4
  %118 = mul nsw i32 %117, 1
  %119 = mul nsw i32 %118, 2
  %120 = ashr i32 %119, 2
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  store i32 %100, i32* %123, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %2, align 4
  %126 = mul nsw i32 %125, 1
  %127 = mul nsw i32 %126, 2
  %128 = ashr i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %124, i64 %129
  store i32 %100, i32* %130, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %2, align 4
  %133 = mul nsw i32 %132, 0
  %134 = mul nsw i32 %133, 2
  %135 = ashr i32 %134, 2
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %131, i64 %137
  store i32 %100, i32* %138, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %2, align 4
  %141 = mul nsw i32 %140, 0
  %142 = mul nsw i32 %141, 2
  %143 = ashr i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %139, i64 %144
  store i32 %100, i32* %145, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %2, align 4
  %149 = mul nsw i32 %148, 2
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %149, %150
  %152 = mul nsw i32 %151, 2
  %153 = ashr i32 %152, 2
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %147, i64 %155
  store i32 %146, i32* %156, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %2, align 4
  %159 = mul nsw i32 %158, 2
  %160 = load i32, i32* %4, align 4
  %161 = add nsw i32 %159, %160
  %162 = mul nsw i32 %161, 2
  %163 = ashr i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %157, i64 %164
  store i32 %146, i32* %165, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %2, align 4
  %168 = mul nsw i32 %167, 1
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %168, %169
  %171 = mul nsw i32 %170, 2
  %172 = ashr i32 %171, 2
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %166, i64 %174
  store i32 %146, i32* %175, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* %2, align 4
  %178 = mul nsw i32 %177, 1
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %178, %179
  %181 = mul nsw i32 %180, 2
  %182 = ashr i32 %181, 2
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %176, i64 %183
  store i32 %146, i32* %184, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %2, align 4
  %187 = mul nsw i32 %186, 0
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %187, %188
  %190 = mul nsw i32 %189, 2
  %191 = ashr i32 %190, 2
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %185, i64 %193
  store i32 %146, i32* %194, align 4
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %2, align 4
  %197 = mul nsw i32 %196, 0
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %197, %198
  %200 = mul nsw i32 %199, 2
  %201 = ashr i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %195, i64 %202
  store i32 %146, i32* %203, align 4
  br label %204

204:                                              ; preds = %83, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
