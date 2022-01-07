; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_inter.c_P_GiveAmmo.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_inter.c_P_GiveAmmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i64, i64, i32* }

@am_noammo = common dso_local global i64 0, align 8
@NUMAMMO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"P_GiveAmmo: bad type %i\00", align 1
@clipammo = common dso_local global i32* null, align 8
@gameskill = common dso_local global i64 0, align 8
@sk_baby = common dso_local global i64 0, align 8
@sk_nightmare = common dso_local global i64 0, align 8
@wp_fist = common dso_local global i64 0, align 8
@wp_chaingun = common dso_local global i64 0, align 8
@wp_pistol = common dso_local global i64 0, align 8
@wp_shotgun = common dso_local global i64 0, align 8
@wp_plasma = common dso_local global i64 0, align 8
@wp_missile = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_GiveAmmo(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @am_noammo, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %209

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @NUMAMMO, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %13
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @I_Error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %29, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %209

38:                                               ; preds = %23
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32*, i32** @clipammo, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %54

48:                                               ; preds = %38
  %49 = load i32*, i32** @clipammo, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %52, 2
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i64, i64* @gameskill, align 8
  %56 = load i64, i64* @sk_baby, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* @gameskill, align 8
  %60 = load i64, i64* @sk_nightmare, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %72
  store i32 %79, i32* %77, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %85, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %65
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %99, i32* %104, align 4
  br label %105

105:                                              ; preds = %93, %65
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 1, i32* %4, align 4
  br label %209

109:                                              ; preds = %105
  %110 = load i64, i64* %6, align 8
  switch i64 %110, label %207 [
    i64 130, label %111
    i64 128, label %135
    i64 131, label %161
    i64 129, label %187
  ]

111:                                              ; preds = %109
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @wp_fist, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %111
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @wp_chaingun, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load i64, i64* @wp_chaingun, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  br label %133

129:                                              ; preds = %117
  %130 = load i64, i64* @wp_pistol, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %125
  br label %134

134:                                              ; preds = %133, %111
  br label %208

135:                                              ; preds = %109
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @wp_fist, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @wp_pistol, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %141, %135
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @wp_shotgun, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load i64, i64* @wp_shotgun, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %147
  br label %160

160:                                              ; preds = %159, %141
  br label %208

161:                                              ; preds = %109
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @wp_fist, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %173, label %167

167:                                              ; preds = %161
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @wp_pistol, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %167, %161
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 4
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @wp_plasma, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %173
  %182 = load i64, i64* @wp_plasma, align 8
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 3
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %181, %173
  br label %186

186:                                              ; preds = %185, %167
  br label %208

187:                                              ; preds = %109
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @wp_fist, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %187
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* @wp_missile, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %193
  %202 = load i64, i64* @wp_missile, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %201, %193
  br label %206

206:                                              ; preds = %205, %187
  br label %207

207:                                              ; preds = %109, %206
  br label %208

208:                                              ; preds = %207, %186, %160, %134
  store i32 1, i32* %4, align 4
  br label %209

209:                                              ; preds = %208, %108, %37, %12
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @I_Error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
