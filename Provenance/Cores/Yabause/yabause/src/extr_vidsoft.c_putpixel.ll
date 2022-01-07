; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_putpixel.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_putpixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@vdp1interlace = common dso_local global i32 0, align 4
@vdp1width = common dso_local global i32 0, align 4
@currentPixel = common dso_local global i32 0, align 4
@currentPixelIsVisible = common dso_local global i32 0, align 4
@leftColumnColor = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, %struct.TYPE_5__*, i32*)* @putpixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putpixel(i32 %0, i32 %1, i32* %2, %struct.TYPE_5__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 256
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 64
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @CheckDil(i32 %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %220

32:                                               ; preds = %5
  %33 = load i32, i32* @vdp1interlace, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sdiv i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @vdp1width, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %36, i64 %42
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 262144
  %47 = icmp uge i32* %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %220

49:                                               ; preds = %32
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = xor i32 %53, %54
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %220

59:                                               ; preds = %52, %49
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %64 = call i64 @IsClipped(i32 %60, i32 %61, i32* %62, %struct.TYPE_5__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %220

67:                                               ; preds = %59
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 32768
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i32, i32* @currentPixel, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, 32768
  store i32 %79, i32* %77, align 4
  br label %220

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %67
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @currentPixel, align 4
  %86 = load i32, i32* @currentPixelIsVisible, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %220

89:                                               ; preds = %84, %81
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 7
  switch i32 %93, label %200 [
    i32 0, label %94
    i32 1, label %104
    i32 2, label %116
    i32 3, label %122
    i32 4, label %138
  ]

94:                                               ; preds = %89
  %95 = load i32, i32* @currentPixel, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %94
  %101 = load i32, i32* @currentPixel, align 4
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  br label %219

104:                                              ; preds = %89
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 32768
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @alphablend16(i32 %111, i32 0, i32 128)
  %113 = or i32 %112, 32768
  %114 = load i32*, i32** %11, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %104
  br label %219

116:                                              ; preds = %89
  %117 = load i32, i32* @currentPixel, align 4
  %118 = and i32 %117, -33826
  %119 = ashr i32 %118, 1
  %120 = or i32 %119, 32768
  %121 = load i32*, i32** %11, align 8
  store i32 %120, i32* %121, align 4
  br label %219

122:                                              ; preds = %89
  %123 = load i32*, i32** %11, align 8
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 32768
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @currentPixel, align 4
  %131 = call i32 @alphablend16(i32 %129, i32 %130, i32 128)
  %132 = or i32 %131, 32768
  %133 = load i32*, i32** %11, align 8
  store i32 %132, i32* %133, align 4
  br label %137

134:                                              ; preds = %122
  %135 = load i32, i32* @currentPixel, align 4
  %136 = load i32*, i32** %11, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %127
  br label %219

138:                                              ; preds = %89
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 3
  %143 = and i32 %142, 7
  %144 = icmp ne i32 %143, 5
  br i1 %144, label %145, label %173

145:                                              ; preds = %138
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = ashr i32 %148, 3
  %150 = and i32 %149, 7
  %151 = icmp ne i32 %150, 1
  br i1 %151, label %152, label %173

152:                                              ; preds = %145
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 1), align 8
  %154 = trunc i64 %153 to i32
  %155 = icmp eq i32 %154, 16
  br i1 %155, label %156, label %173

156:                                              ; preds = %152
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 0), align 8
  %158 = trunc i64 %157 to i32
  %159 = icmp eq i32 %158, 16
  br i1 %159, label %160, label %173

160:                                              ; preds = %156
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 2), align 8
  %162 = sub nsw i64 %161, 16
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  store i32 0, i32* %15, align 4
  br label %167

167:                                              ; preds = %166, %160
  %168 = load i32, i32* @currentPixel, align 4
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %168, %169
  store i32 %170, i32* @currentPixel, align 4
  %171 = load i32, i32* @currentPixel, align 4
  %172 = load i32*, i32** %11, align 8
  store i32 %171, i32* %172, align 4
  br label %219

173:                                              ; preds = %156, %152, %145, %138
  %174 = load i32, i32* @currentPixel, align 4
  %175 = and i32 %174, 31
  %176 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 2), align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 @gouraudAdjust(i32 %175, i32 %177)
  %179 = and i32 %178, 31
  %180 = load i32, i32* @currentPixel, align 4
  %181 = and i32 %180, 992
  %182 = ashr i32 %181, 5
  %183 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 1), align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 @gouraudAdjust(i32 %182, i32 %184)
  %186 = and i32 %185, 31
  %187 = shl i32 %186, 5
  %188 = or i32 %179, %187
  %189 = load i32, i32* @currentPixel, align 4
  %190 = and i32 %189, 31744
  %191 = ashr i32 %190, 10
  %192 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 0), align 8
  %193 = trunc i64 %192 to i32
  %194 = call i32 @gouraudAdjust(i32 %191, i32 %193)
  %195 = and i32 %194, 31
  %196 = shl i32 %195, 10
  %197 = or i32 %188, %196
  %198 = or i32 %197, 32768
  %199 = load i32*, i32** %11, align 8
  store i32 %198, i32* %199, align 4
  br label %219

200:                                              ; preds = %89
  %201 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 2), align 8
  %202 = trunc i64 %201 to i32
  %203 = and i32 %202, 31
  %204 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 1), align 8
  %205 = trunc i64 %204 to i32
  %206 = and i32 %205, 31
  %207 = shl i32 %206, 5
  %208 = or i32 %203, %207
  %209 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 0), align 8
  %210 = trunc i64 %209 to i32
  %211 = and i32 %210, 31
  %212 = shl i32 %211, 10
  %213 = or i32 %208, %212
  %214 = or i32 %213, 32768
  %215 = load i32, i32* @currentPixel, align 4
  %216 = call i32 @alphablend16(i32 %214, i32 %215, i32 128)
  %217 = or i32 %216, 32768
  %218 = load i32*, i32** %11, align 8
  store i32 %217, i32* %218, align 4
  br label %219

219:                                              ; preds = %200, %173, %167, %137, %116, %115, %103
  br label %220

220:                                              ; preds = %31, %48, %58, %66, %76, %219, %84
  ret void
}

declare dso_local i64 @CheckDil(i32, i32*) #1

declare dso_local i64 @IsClipped(i32, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @alphablend16(i32, i32, i32) #1

declare dso_local i32 @gouraudAdjust(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
