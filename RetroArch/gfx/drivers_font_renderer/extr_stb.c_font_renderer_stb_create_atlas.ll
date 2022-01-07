; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_stb.c_font_renderer_stb_create_atlas.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_stb.c_font_renderer_stb_create_atlas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__, %struct.font_glyph* }
%struct.TYPE_10__ = type { i32, i32, i32, i32* }
%struct.font_glyph = type { i64, i64, i32, i32, i64, i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32* }

@.str = private unnamed_addr constant [33 x i8] c"[stb] Font atlas too big: %ux%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, float, i32, i32)* @font_renderer_stb_create_atlas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @font_renderer_stb_create_atlas(%struct.TYPE_13__* %0, i32* %1, float %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x %struct.TYPE_11__], align 16
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca %struct.font_glyph*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store float %2, float* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = bitcast %struct.TYPE_12__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 8, i1 false)
  %20 = load i32, i32* %10, align 4
  %21 = icmp ugt i32 %20, 2048
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = icmp ugt i32 %23, 2048
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %5
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %189

29:                                               ; preds = %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @free(i32* %39)
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @calloc(i32 %42, i32 %43)
  %45 = inttoptr i64 %44 to i32*
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  store i32* %45, i32** %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %41
  br label %189

63:                                               ; preds = %41
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @stbtt_PackBegin(%struct.TYPE_12__* %14, i32* %67, i32 %71, i32 %75, i32 %79, i32 1, i32* null)
  %81 = load i32*, i32** %8, align 8
  %82 = load float, float* %9, align 4
  %83 = getelementptr inbounds [256 x %struct.TYPE_11__], [256 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %84 = call i32 @stbtt_PackFontRange(%struct.TYPE_12__* %14, i32* %81, i32 0, float %82, i32 0, i32 256, %struct.TYPE_11__* %83)
  %85 = call i32 @stbtt_PackEnd(%struct.TYPE_12__* %14)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %185, %63
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 256
  br i1 %91, label %92, label %188

92:                                               ; preds = %89
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load %struct.font_glyph*, %struct.font_glyph** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %95, i64 %97
  store %struct.font_glyph* %98, %struct.font_glyph** %15, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [256 x %struct.TYPE_11__], [256 x %struct.TYPE_11__]* %13, i64 0, i64 %100
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %16, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.font_glyph*, %struct.font_glyph** %15, align 8
  %106 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.font_glyph*, %struct.font_glyph** %15, align 8
  %111 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %110, i32 0, i32 5
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.font_glyph*, %struct.font_glyph** %15, align 8
  %116 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.font_glyph*, %struct.font_glyph** %15, align 8
  %121 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.font_glyph*, %struct.font_glyph** %15, align 8
  %126 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %129, %132
  %134 = load %struct.font_glyph*, %struct.font_glyph** %15, align 8
  %135 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %138, %141
  %143 = load %struct.font_glyph*, %struct.font_glyph** %15, align 8
  %144 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i64 @isalnum(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %184

148:                                              ; preds = %92
  %149 = load %struct.font_glyph*, %struct.font_glyph** %15, align 8
  %150 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.font_glyph*, %struct.font_glyph** %15, align 8
  %155 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %184, label %158

158:                                              ; preds = %153, %148
  %159 = load i32, i32* %10, align 4
  %160 = uitofp i32 %159 to double
  %161 = fmul double %160, 1.200000e+00
  %162 = fptosi double %161 to i32
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %11, align 4
  %164 = uitofp i32 %163 to double
  %165 = fmul double %164, 1.200000e+00
  %166 = fptosi double %165 to i32
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp ult i32 %167, 2048
  br i1 %168, label %172, label %169

169:                                              ; preds = %158
  %170 = load i32, i32* %11, align 4
  %171 = icmp ult i32 %170, 2048
  br i1 %171, label %172, label %177

172:                                              ; preds = %169, %158
  %173 = load i32, i32* %17, align 4
  %174 = call i32 @MIN(i32 %173, i32 2048)
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* %18, align 4
  %176 = call i32 @MIN(i32 %175, i32 2048)
  store i32 %176, i32* %18, align 4
  br label %177

177:                                              ; preds = %172, %169
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = load float, float* %9, align 4
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* %18, align 4
  %183 = call i32 @font_renderer_stb_create_atlas(%struct.TYPE_13__* %178, i32* %179, float %180, i32 %181, i32 %182)
  store i32 %183, i32* %6, align 4
  br label %211

184:                                              ; preds = %153, %92
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %12, align 4
  br label %89

188:                                              ; preds = %89
  store i32 1, i32* %6, align 4
  br label %211

189:                                              ; preds = %62, %25
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  store i32 0, i32* %192, align 4
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  store i32 0, i32* %195, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %207

201:                                              ; preds = %189
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @free(i32* %205)
  br label %207

207:                                              ; preds = %201, %189
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 3
  store i32* null, i32** %210, align 8
  store i32 0, i32* %6, align 4
  br label %211

211:                                              ; preds = %207, %188, %177
  %212 = load i32, i32* %6, align 4
  ret i32 %212
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RARCH_WARN(i8*, i32, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @stbtt_PackBegin(%struct.TYPE_12__*, i32*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @stbtt_PackFontRange(%struct.TYPE_12__*, i32*, i32, float, i32, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @stbtt_PackEnd(%struct.TYPE_12__*) #2

declare dso_local i64 @isalnum(i32) #2

declare dso_local i32 @MIN(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
