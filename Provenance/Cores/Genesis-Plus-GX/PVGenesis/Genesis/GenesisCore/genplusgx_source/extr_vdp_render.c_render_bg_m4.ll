; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_bg_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@reg = common dso_local global i32* null, align 8
@linebuf = common dso_local global i32** null, align 8
@vscroll = common dso_local global i32 0, align 4
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_SMS = common dso_local global i64 0, align 8
@bitmap = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@vram = common dso_local global i32* null, align 8
@atex_table = common dso_local global i32* null, align 8
@bg_pattern_cache = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_bg_m4(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = load i32*, i32** @reg, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 64
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %28

24:                                               ; preds = %20, %2
  %25 = load i32*, i32** @reg, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 8
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %24, %23
  %29 = phi i32 [ 256, %23 ], [ %27, %24 ]
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 7
  store i32 %31, i32* %11, align 4
  %32 = load i32**, i32*** @linebuf, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 32, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32* %38, i32** %12, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @vscroll, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32*, i32** @reg, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 10
  %46 = xor i32 -15361, %45
  store i32 %46, i32* %14, align 4
  %47 = load i64, i64* @system_hw, align 8
  %48 = load i64, i64* @SYSTEM_SMS, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %28
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, 1024
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %50, %28
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bitmap, i32 0, i32 0, i32 0), align 4
  %55 = icmp sgt i32 %54, 192
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = srem i32 %57, 256
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** @vram, align 8
  %60 = load i32, i32* %14, align 4
  %61 = and i32 14080, %60
  %62 = load i32, i32* %13, align 4
  %63 = ashr i32 %62, 3
  %64 = shl i32 %63, 6
  %65 = add nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %59, i64 %66
  store i32* %67, i32** %6, align 8
  br label %80

68:                                               ; preds = %53
  %69 = load i32, i32* %13, align 4
  %70 = srem i32 %69, 224
  store i32 %70, i32* %13, align 4
  %71 = load i32*, i32** @vram, align 8
  %72 = load i32, i32* %13, align 4
  %73 = ashr i32 %72, 3
  %74 = shl i32 %73, 6
  %75 = add nsw i32 14336, %74
  %76 = load i32, i32* %14, align 4
  %77 = and i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %71, i64 %78
  store i32* %79, i32** %6, align 8
  br label %80

80:                                               ; preds = %68, %56
  %81 = load i32, i32* %13, align 4
  %82 = and i32 %81, 7
  %83 = shl i32 %82, 3
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 256, %84
  %86 = ashr i32 %85, 3
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load i32**, i32*** @linebuf, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 32
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @memset(i32* %93, i32 0, i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %89, %80
  %99 = load i32, i32* %4, align 4
  %100 = ashr i32 %99, 3
  store i32 %100, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %185, %98
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %190

105:                                              ; preds = %101
  %106 = load i32, i32* %5, align 4
  %107 = icmp eq i32 %106, 24
  br i1 %107, label %108, label %141

108:                                              ; preds = %105
  %109 = load i32*, i32** @reg, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 128
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %141

114:                                              ; preds = %108
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bitmap, i32 0, i32 0, i32 0), align 4
  %116 = icmp sgt i32 %115, 192
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i32*, i32** @vram, align 8
  %119 = load i32, i32* %14, align 4
  %120 = and i32 14080, %119
  %121 = load i32, i32* %3, align 4
  %122 = ashr i32 %121, 3
  %123 = shl i32 %122, 6
  %124 = add nsw i32 %120, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %118, i64 %125
  store i32* %126, i32** %6, align 8
  br label %137

127:                                              ; preds = %114
  %128 = load i32*, i32** @vram, align 8
  %129 = load i32, i32* %3, align 4
  %130 = ashr i32 %129, 3
  %131 = shl i32 %130, 6
  %132 = add nsw i32 14336, %131
  %133 = load i32, i32* %14, align 4
  %134 = and i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %128, i64 %135
  store i32* %136, i32** %6, align 8
  br label %137

137:                                              ; preds = %127, %117
  %138 = load i32, i32* %3, align 4
  %139 = and i32 %138, 7
  %140 = shl i32 %139, 3
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %137, %108, %105
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %4, align 4
  %145 = srem i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = and i32 %149, 255
  %151 = shl i32 %150, 8
  %152 = load i32, i32* %7, align 4
  %153 = and i32 %152, 65280
  %154 = ashr i32 %153, 8
  %155 = or i32 %151, %154
  store i32 %155, i32* %7, align 4
  %156 = load i32*, i32** @atex_table, align 8
  %157 = load i32, i32* %7, align 4
  %158 = ashr i32 %157, 11
  %159 = and i32 %158, 3
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %8, align 4
  %163 = load i32*, i32** @bg_pattern_cache, align 8
  %164 = load i32, i32* %7, align 4
  %165 = and i32 %164, 2047
  %166 = shl i32 %165, 6
  %167 = load i32, i32* %13, align 4
  %168 = or i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %163, i64 %169
  store i32* %170, i32** %9, align 8
  %171 = load i32*, i32** %9, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %8, align 4
  %175 = or i32 %173, %174
  %176 = load i32*, i32** %12, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %12, align 8
  store i32 %175, i32* %176, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %8, align 4
  %182 = or i32 %180, %181
  %183 = load i32*, i32** %12, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %12, align 8
  store i32 %182, i32* %183, align 4
  br label %185

185:                                              ; preds = %141
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %101

190:                                              ; preds = %101
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
