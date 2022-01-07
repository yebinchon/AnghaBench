; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omap_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omap_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, double, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.font_glyph* (i32, i32)*, %struct.font_atlas* (i32)* }
%struct.font_glyph = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.font_atlas = type { i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*)* @omap_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_render_msg(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.font_atlas*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.font_glyph*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.font_atlas* null, %struct.font_atlas** %5, align 8
  %17 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = fsub double 1.000000e+00, %29
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = fmul double %30, %33
  %35 = fptosi double %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  br label %218

41:                                               ; preds = %2
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.font_atlas* (i32)*, %struct.font_atlas* (i32)** %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.font_atlas* %46(i32 %49)
  store %struct.font_atlas* %50, %struct.font_atlas** %5, align 8
  br label %51

51:                                               ; preds = %215, %41
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %218

55:                                               ; preds = %51
  store i32* null, i32** %13, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.font_glyph* (i32, i32)*, %struct.font_glyph* (i32, i32)** %59, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = call %struct.font_glyph* %60(i32 %63, i32 %66)
  store %struct.font_glyph* %67, %struct.font_glyph** %14, align 8
  %68 = load %struct.font_glyph*, %struct.font_glyph** %14, align 8
  %69 = icmp ne %struct.font_glyph* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %55
  br label %215

71:                                               ; preds = %55
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.font_glyph*, %struct.font_glyph** %14, align 8
  %74 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %72, %75
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.font_glyph*, %struct.font_glyph** %14, align 8
  %79 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  store i32 %81, i32* %10, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %15, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load double, double* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sitofp i32 %90 to double
  %92 = fsub double %89, %91
  %93 = fptosi double %92 to i32
  store i32 %93, i32* %16, align 4
  %94 = load %struct.font_glyph*, %struct.font_glyph** %14, align 8
  %95 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %11, align 4
  %97 = load %struct.font_glyph*, %struct.font_glyph** %14, align 8
  %98 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %12, align 4
  %100 = load %struct.font_atlas*, %struct.font_atlas** %5, align 8
  %101 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.font_glyph*, %struct.font_glyph** %14, align 8
  %104 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load %struct.font_glyph*, %struct.font_glyph** %14, align 8
  %109 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.font_atlas*, %struct.font_atlas** %5, align 8
  %112 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %107, i64 %115
  store i32* %116, i32** %13, align 8
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %71
  %120 = load i32, i32* %9, align 4
  %121 = load i32*, i32** %13, align 8
  %122 = sext i32 %120 to i64
  %123 = sub i64 0, %122
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32* %124, i32** %13, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %119, %71
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.font_atlas*, %struct.font_atlas** %5, align 8
  %134 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %132, %135
  %137 = load i32*, i32** %13, align 8
  %138 = sext i32 %136 to i64
  %139 = sub i64 0, %138
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32* %140, i32** %13, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %144

144:                                              ; preds = %131, %128
  %145 = load i32, i32* %15, align 4
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %16, align 4
  %149 = icmp sle i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147, %144
  br label %215

151:                                              ; preds = %147
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* %15, align 4
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %155, %151
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* %16, align 4
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %161, %157
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %168, label %184

168:                                              ; preds = %163
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load i32*, i32** %13, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.font_atlas*, %struct.font_atlas** %5, align 8
  %179 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @omapfb_blend_glyph_rgb565(i32 %171, i32* %172, i32 %175, i32 %176, i32 %177, i32 %180, i32 %181, i32 %182)
  br label %200

184:                                              ; preds = %163
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load i32*, i32** %13, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load %struct.font_atlas*, %struct.font_atlas** %5, align 8
  %195 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @omapfb_blend_glyph_argb8888(i32 %187, i32* %188, i32 %191, i32 %192, i32 %193, i32 %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %184, %168
  %201 = load %struct.font_glyph*, %struct.font_glyph** %14, align 8
  %202 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %201, i32 0, i32 7
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %203
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %7, align 4
  %208 = load %struct.font_glyph*, %struct.font_glyph** %14, align 8
  %209 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %210
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %8, align 4
  br label %215

215:                                              ; preds = %200, %150, %70
  %216 = load i8*, i8** %4, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %4, align 8
  br label %51

218:                                              ; preds = %40, %51
  ret void
}

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local i32 @omapfb_blend_glyph_rgb565(i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @omapfb_blend_glyph_argb8888(i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
