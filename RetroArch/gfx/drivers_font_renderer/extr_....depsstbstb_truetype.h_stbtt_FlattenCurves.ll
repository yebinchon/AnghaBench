; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt_FlattenCurves.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt_FlattenCurves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float, float, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32, float, i32**, i32*, i8*)* @stbtt_FlattenCurves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stbtt_FlattenCurves(%struct.TYPE_3__* %0, i32 %1, float %2, i32** %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store float %2, float* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %23 = load float, float* %10, align 4
  %24 = load float, float* %10, align 4
  %25 = fmul float %23, %24
  store float %25, float* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %26

26:                                               ; preds = %42, %6
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = load i32, i32* %17, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %18, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %18, align 4
  br label %41

41:                                               ; preds = %38, %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %17, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load i32, i32* %18, align 4
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32* null, i32** %7, align 8
  br label %215

51:                                               ; preds = %45
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = call i64 @malloc(i32 %55)
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32**, i32*** %11, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i32**, i32*** %11, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32*, i32** %12, align 8
  store i32 0, i32* %63, align 4
  store i32* null, i32** %7, align 8
  br label %215

64:                                               ; preds = %51
  store i32 0, i32* %20, align 4
  br label %65

65:                                               ; preds = %202, %64
  %66 = load i32, i32* %20, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %205

68:                                               ; preds = %65
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  %69 = load i32, i32* %20, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i64 @malloc(i32 %75)
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** %14, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %207

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %68
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %83

83:                                               ; preds = %190, %82
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %193

87:                                               ; preds = %83
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %189 [
    i32 128, label %94
    i32 129, label %128
    i32 130, label %147
  ]

94:                                               ; preds = %87
  %95 = load i32, i32* %18, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %19, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32**, i32*** %11, align 8
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %100, i32* %105, align 4
  br label %106

106:                                              ; preds = %97, %94
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %19, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load float, float* %114, align 4
  store float %115, float* %21, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load float, float* %120, align 4
  store float %121, float* %22, align 4
  %122 = load i32*, i32** %14, align 8
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  %125 = load float, float* %21, align 4
  %126 = load float, float* %22, align 4
  %127 = call i32 @stbtt__add_point(i32* %122, i32 %123, float %125, float %126)
  br label %189

128:                                              ; preds = %87
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load float, float* %133, align 4
  store float %134, float* %21, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load float, float* %139, align 4
  store float %140, float* %22, align 4
  %141 = load i32*, i32** %14, align 8
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  %144 = load float, float* %21, align 4
  %145 = load float, float* %22, align 4
  %146 = call i32 @stbtt__add_point(i32* %141, i32 %142, float %144, float %145)
  br label %189

147:                                              ; preds = %87
  %148 = load i32*, i32** %14, align 8
  %149 = load float, float* %21, align 4
  %150 = load float, float* %22, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load float, float* %167, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load float, float* %173, align 4
  %175 = load float, float* %16, align 4
  %176 = call i32 @stbtt__tesselate_curve(i32* %148, i32* %15, float %149, float %150, i32 %156, i32 %162, float %168, float %174, float %175, i32 0)
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load float, float* %181, align 4
  store float %182, float* %21, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load float, float* %187, align 4
  store float %188, float* %22, align 4
  br label %189

189:                                              ; preds = %87, %147, %128, %106
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %17, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %17, align 4
  br label %83

193:                                              ; preds = %83
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %19, align 4
  %196 = sub nsw i32 %194, %195
  %197 = load i32**, i32*** %11, align 8
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %196, i32* %201, align 4
  br label %202

202:                                              ; preds = %193
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %20, align 4
  br label %65

205:                                              ; preds = %65
  %206 = load i32*, i32** %14, align 8
  store i32* %206, i32** %7, align 8
  br label %215

207:                                              ; preds = %80
  %208 = load i32*, i32** %14, align 8
  %209 = call i32 @free(i32* %208)
  %210 = load i32**, i32*** %11, align 8
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @free(i32* %211)
  %213 = load i32**, i32*** %11, align 8
  store i32* null, i32** %213, align 8
  %214 = load i32*, i32** %12, align 8
  store i32 0, i32* %214, align 4
  store i32* null, i32** %7, align 8
  br label %215

215:                                              ; preds = %207, %205, %62, %50
  %216 = load i32*, i32** %7, align 8
  ret i32* %216
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stbtt__add_point(i32*, i32, float, float) #1

declare dso_local i32 @stbtt__tesselate_curve(i32*, i32*, float, float, i32, i32, float, float, float, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
