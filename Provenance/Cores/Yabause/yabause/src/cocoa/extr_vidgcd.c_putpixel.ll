; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_putpixel.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_putpixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32*, i64* }

@vdp1backframebuffer = common dso_local global i64 0, align 8
@vdp1width = common dso_local global i32 0, align 4
@cmd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@vdp1clipxstart = common dso_local global i32 0, align 4
@vdp1clipxend = common dso_local global i32 0, align 4
@vdp1clipystart = common dso_local global i32 0, align 4
@vdp1clipyend = common dso_local global i32 0, align 4
@currentPixel = common dso_local global i32 0, align 4
@currentPixelIsVisible = common dso_local global i32 0, align 4
@leftColumnColor = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@vdp1draw_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@vdp1spritetype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @putpixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putpixel(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = load i64, i64* @vdp1backframebuffer, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @vdp1width, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %16, i64 %22
  store i32* %23, i32** %5, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 0), align 4
  %25 = and i32 %24, 256
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 0), align 4
  %27 = and i32 %26, 64
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 1), align 4
  %31 = and i32 %30, 7
  store i32 %31, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = xor i32 %35, %36
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %233

41:                                               ; preds = %34, %2
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 5
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44, %41
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 0), align 4
  %53 = and i32 %52, 1024
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 0), align 4
  %57 = ashr i32 %56, 9
  %58 = and i32 %57, 1
  %59 = call i32 @PushUserClipping(i32 %58)
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @vdp1clipxstart, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @vdp1clipxend, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @vdp1clipystart, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @vdp1clipyend, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %78

77:                                               ; preds = %72, %68, %64, %60
  br label %233

78:                                               ; preds = %76
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 0), align 4
  %80 = and i32 %79, 1024
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 (...) @PopUserClipping()
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @currentPixel, align 4
  %89 = load i32, i32* @currentPixelIsVisible, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %233

92:                                               ; preds = %87, %84
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 0), align 4
  %94 = and i32 %93, 7
  switch i32 %94, label %188 [
    i32 0, label %95
    i32 1, label %105
    i32 2, label %108
    i32 3, label %114
    i32 4, label %130
  ]

95:                                               ; preds = %92
  %96 = load i32, i32* @currentPixel, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98, %95
  %102 = load i32, i32* @currentPixel, align 4
  %103 = load i32*, i32** %5, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %207

105:                                              ; preds = %92
  %106 = load i32, i32* @currentPixel, align 4
  %107 = load i32*, i32** %5, align 8
  store i32 %106, i32* %107, align 4
  br label %207

108:                                              ; preds = %92
  %109 = load i32, i32* @currentPixel, align 4
  %110 = and i32 %109, -33826
  %111 = ashr i32 %110, 1
  %112 = or i32 %111, 32768
  %113 = load i32*, i32** %5, align 8
  store i32 %112, i32* %113, align 4
  br label %207

114:                                              ; preds = %92
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 32768
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @currentPixel, align 4
  %123 = call i32 @alphablend16(i32 %121, i32 %122, i32 128)
  %124 = or i32 %123, 32768
  %125 = load i32*, i32** %5, align 8
  store i32 %124, i32* %125, align 4
  br label %129

126:                                              ; preds = %114
  %127 = load i32, i32* @currentPixel, align 4
  %128 = load i32*, i32** %5, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %119
  br label %207

130:                                              ; preds = %92
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 0), align 4
  %132 = ashr i32 %131, 3
  %133 = and i32 %132, 7
  %134 = icmp ne i32 %133, 5
  br i1 %134, label %135, label %161

135:                                              ; preds = %130
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 0), align 4
  %137 = ashr i32 %136, 3
  %138 = and i32 %137, 7
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %161

140:                                              ; preds = %135
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @leftColumnColor, i32 0, i32 1), align 8
  %142 = trunc i64 %141 to i32
  %143 = icmp eq i32 %142, 16
  br i1 %143, label %144, label %161

144:                                              ; preds = %140
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @leftColumnColor, i32 0, i32 0), align 8
  %146 = trunc i64 %145 to i32
  %147 = icmp eq i32 %146, 16
  br i1 %147, label %148, label %161

148:                                              ; preds = %144
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @leftColumnColor, i32 0, i32 2), align 8
  %150 = sub nsw i64 %149, 16
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %154, %148
  %156 = load i32, i32* @currentPixel, align 4
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %156, %157
  store i32 %158, i32* @currentPixel, align 4
  %159 = load i32, i32* @currentPixel, align 4
  %160 = load i32*, i32** %5, align 8
  store i32 %159, i32* %160, align 4
  br label %207

161:                                              ; preds = %144, %140, %135, %130
  %162 = load i32, i32* @currentPixel, align 4
  %163 = and i32 %162, 31
  %164 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @leftColumnColor, i32 0, i32 2), align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 @gouraudAdjust(i32 %163, i32 %165)
  %167 = and i32 %166, 31
  %168 = load i32, i32* @currentPixel, align 4
  %169 = and i32 %168, 992
  %170 = ashr i32 %169, 5
  %171 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @leftColumnColor, i32 0, i32 1), align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 @gouraudAdjust(i32 %170, i32 %172)
  %174 = and i32 %173, 31
  %175 = shl i32 %174, 5
  %176 = or i32 %167, %175
  %177 = load i32, i32* @currentPixel, align 4
  %178 = and i32 %177, 31744
  %179 = ashr i32 %178, 10
  %180 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @leftColumnColor, i32 0, i32 0), align 8
  %181 = trunc i64 %180 to i32
  %182 = call i32 @gouraudAdjust(i32 %179, i32 %181)
  %183 = and i32 %182, 31
  %184 = shl i32 %183, 10
  %185 = or i32 %176, %184
  %186 = or i32 %185, 32768
  %187 = load i32*, i32** %5, align 8
  store i32 %186, i32* %187, align 4
  br label %207

188:                                              ; preds = %92
  %189 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @leftColumnColor, i32 0, i32 2), align 8
  %190 = trunc i64 %189 to i32
  %191 = and i32 %190, 31
  %192 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @leftColumnColor, i32 0, i32 1), align 8
  %193 = trunc i64 %192 to i32
  %194 = and i32 %193, 31
  %195 = shl i32 %194, 5
  %196 = or i32 %191, %195
  %197 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @leftColumnColor, i32 0, i32 0), align 8
  %198 = trunc i64 %197 to i32
  %199 = and i32 %198, 31
  %200 = shl i32 %199, 10
  %201 = or i32 %196, %200
  %202 = or i32 %201, 32768
  %203 = load i32, i32* @currentPixel, align 4
  %204 = call i32 @alphablend16(i32 %202, i32 %203, i32 128)
  %205 = or i32 %204, 32768
  %206 = load i32*, i32** %5, align 8
  store i32 %205, i32* %206, align 4
  br label %207

207:                                              ; preds = %188, %161, %155, %129, %108, %105, %104
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 32768
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vdp1draw_info, i32 0, i32 0), align 8
  %214 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vdp1draw_info, i32 0, i32 1), align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  store i32 1, i32* %217, align 4
  br label %232

218:                                              ; preds = %207
  %219 = load i32*, i32** %5, align 8
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %218
  %223 = load i32*, i32** %5, align 8
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %11, align 4
  %225 = load i32, i32* @vdp1spritetype, align 4
  %226 = call i32 @Vdp1ProcessSpritePixel(i32 %225, i32* %11, i32* %12, i32* %13, i32* %14)
  %227 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vdp1draw_info, i32 0, i32 0), align 8
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 1, i32* %230, align 4
  br label %231

231:                                              ; preds = %222, %218
  br label %232

232:                                              ; preds = %231, %212
  br label %233

233:                                              ; preds = %40, %77, %232, %87
  ret void
}

declare dso_local i32 @PushUserClipping(i32) #1

declare dso_local i32 @PopUserClipping(...) #1

declare dso_local i32 @alphablend16(i32, i32, i32) #1

declare dso_local i32 @gouraudAdjust(i32, i32) #1

declare dso_local i32 @Vdp1ProcessSpritePixel(i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
