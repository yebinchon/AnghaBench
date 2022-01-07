; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_rgba16ToPixel.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_rgba16ToPixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@LCT_GREY = common dso_local global i64 0, align 8
@LCT_RGB = common dso_local global i64 0, align 8
@LCT_GREY_ALPHA = common dso_local global i64 0, align 8
@LCT_RGBA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_3__*, i16, i16, i16, i16)* @rgba16ToPixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgba16ToPixel(i8* %0, i64 %1, %struct.TYPE_3__* %2, i16 zeroext %3, i16 zeroext %4, i16 zeroext %5, i16 zeroext %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %11, align 8
  store i16 %3, i16* %12, align 2
  store i16 %4, i16* %13, align 2
  store i16 %5, i16* %14, align 2
  store i16 %6, i16* %15, align 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 16
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 85, i32* %8, align 4
  br label %247

23:                                               ; preds = %7
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LCT_GREY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load i16, i16* %12, align 2
  store i16 %30, i16* %16, align 2
  %31 = load i16, i16* %16, align 2
  %32 = zext i16 %31 to i32
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = mul i64 %37, 2
  %39 = add i64 %38, 0
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 %35, i8* %40, align 1
  %41 = load i16, i16* %16, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = mul i64 %46, 2
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 %44, i8* %49, align 1
  br label %246

50:                                               ; preds = %23
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LCT_RGB, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %114

56:                                               ; preds = %50
  %57 = load i16, i16* %12, align 2
  %58 = zext i16 %57 to i32
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 255
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = mul i64 %63, 6
  %65 = add i64 %64, 0
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 %61, i8* %66, align 1
  %67 = load i16, i16* %12, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %68, 255
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = mul i64 %72, 6
  %74 = add i64 %73, 1
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 %70, i8* %75, align 1
  %76 = load i16, i16* %13, align 2
  %77 = zext i16 %76 to i32
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 255
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = mul i64 %82, 6
  %84 = add i64 %83, 2
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  store i8 %80, i8* %85, align 1
  %86 = load i16, i16* %13, align 2
  %87 = zext i16 %86 to i32
  %88 = and i32 %87, 255
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = mul i64 %91, 6
  %93 = add i64 %92, 3
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  store i8 %89, i8* %94, align 1
  %95 = load i16, i16* %14, align 2
  %96 = zext i16 %95 to i32
  %97 = ashr i32 %96, 8
  %98 = and i32 %97, 255
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = mul i64 %101, 6
  %103 = add i64 %102, 4
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 %99, i8* %104, align 1
  %105 = load i16, i16* %14, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, 255
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = mul i64 %110, 6
  %112 = add i64 %111, 5
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  store i8 %108, i8* %113, align 1
  br label %245

114:                                              ; preds = %50
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @LCT_GREY_ALPHA, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %160

120:                                              ; preds = %114
  %121 = load i16, i16* %12, align 2
  store i16 %121, i16* %17, align 2
  %122 = load i16, i16* %17, align 2
  %123 = zext i16 %122 to i32
  %124 = ashr i32 %123, 8
  %125 = and i32 %124, 255
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = mul i64 %128, 4
  %130 = add i64 %129, 0
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  store i8 %126, i8* %131, align 1
  %132 = load i16, i16* %17, align 2
  %133 = zext i16 %132 to i32
  %134 = and i32 %133, 255
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %9, align 8
  %137 = load i64, i64* %10, align 8
  %138 = mul i64 %137, 4
  %139 = add i64 %138, 1
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8 %135, i8* %140, align 1
  %141 = load i16, i16* %15, align 2
  %142 = zext i16 %141 to i32
  %143 = ashr i32 %142, 8
  %144 = and i32 %143, 255
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %9, align 8
  %147 = load i64, i64* %10, align 8
  %148 = mul i64 %147, 4
  %149 = add i64 %148, 2
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  store i8 %145, i8* %150, align 1
  %151 = load i16, i16* %15, align 2
  %152 = zext i16 %151 to i32
  %153 = and i32 %152, 255
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %9, align 8
  %156 = load i64, i64* %10, align 8
  %157 = mul i64 %156, 4
  %158 = add i64 %157, 3
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8 %154, i8* %159, align 1
  br label %244

160:                                              ; preds = %114
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @LCT_RGBA, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %243

166:                                              ; preds = %160
  %167 = load i16, i16* %12, align 2
  %168 = zext i16 %167 to i32
  %169 = ashr i32 %168, 8
  %170 = and i32 %169, 255
  %171 = trunc i32 %170 to i8
  %172 = load i8*, i8** %9, align 8
  %173 = load i64, i64* %10, align 8
  %174 = mul i64 %173, 8
  %175 = add i64 %174, 0
  %176 = getelementptr inbounds i8, i8* %172, i64 %175
  store i8 %171, i8* %176, align 1
  %177 = load i16, i16* %12, align 2
  %178 = zext i16 %177 to i32
  %179 = and i32 %178, 255
  %180 = trunc i32 %179 to i8
  %181 = load i8*, i8** %9, align 8
  %182 = load i64, i64* %10, align 8
  %183 = mul i64 %182, 8
  %184 = add i64 %183, 1
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  store i8 %180, i8* %185, align 1
  %186 = load i16, i16* %13, align 2
  %187 = zext i16 %186 to i32
  %188 = ashr i32 %187, 8
  %189 = and i32 %188, 255
  %190 = trunc i32 %189 to i8
  %191 = load i8*, i8** %9, align 8
  %192 = load i64, i64* %10, align 8
  %193 = mul i64 %192, 8
  %194 = add i64 %193, 2
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  store i8 %190, i8* %195, align 1
  %196 = load i16, i16* %13, align 2
  %197 = zext i16 %196 to i32
  %198 = and i32 %197, 255
  %199 = trunc i32 %198 to i8
  %200 = load i8*, i8** %9, align 8
  %201 = load i64, i64* %10, align 8
  %202 = mul i64 %201, 8
  %203 = add i64 %202, 3
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  store i8 %199, i8* %204, align 1
  %205 = load i16, i16* %14, align 2
  %206 = zext i16 %205 to i32
  %207 = ashr i32 %206, 8
  %208 = and i32 %207, 255
  %209 = trunc i32 %208 to i8
  %210 = load i8*, i8** %9, align 8
  %211 = load i64, i64* %10, align 8
  %212 = mul i64 %211, 8
  %213 = add i64 %212, 4
  %214 = getelementptr inbounds i8, i8* %210, i64 %213
  store i8 %209, i8* %214, align 1
  %215 = load i16, i16* %14, align 2
  %216 = zext i16 %215 to i32
  %217 = and i32 %216, 255
  %218 = trunc i32 %217 to i8
  %219 = load i8*, i8** %9, align 8
  %220 = load i64, i64* %10, align 8
  %221 = mul i64 %220, 8
  %222 = add i64 %221, 5
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  store i8 %218, i8* %223, align 1
  %224 = load i16, i16* %15, align 2
  %225 = zext i16 %224 to i32
  %226 = ashr i32 %225, 8
  %227 = and i32 %226, 255
  %228 = trunc i32 %227 to i8
  %229 = load i8*, i8** %9, align 8
  %230 = load i64, i64* %10, align 8
  %231 = mul i64 %230, 8
  %232 = add i64 %231, 6
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  store i8 %228, i8* %233, align 1
  %234 = load i16, i16* %15, align 2
  %235 = zext i16 %234 to i32
  %236 = and i32 %235, 255
  %237 = trunc i32 %236 to i8
  %238 = load i8*, i8** %9, align 8
  %239 = load i64, i64* %10, align 8
  %240 = mul i64 %239, 8
  %241 = add i64 %240, 7
  %242 = getelementptr inbounds i8, i8* %238, i64 %241
  store i8 %237, i8* %242, align 1
  br label %243

243:                                              ; preds = %166, %160
  br label %244

244:                                              ; preds = %243, %120
  br label %245

245:                                              ; preds = %244, %56
  br label %246

246:                                              ; preds = %245, %29
  store i32 0, i32* %8, align 4
  br label %247

247:                                              ; preds = %246, %22
  %248 = load i32, i32* %8, align 4
  ret i32 %248
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
