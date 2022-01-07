; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/glxx/extr_glxx_client.c_get_integer_internal_11.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/glxx/extr_glxx_client.c_get_integer_internal_11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_7__, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }

@GL11_IX_VERTEX = common dso_local global i64 0, align 8
@GL11_IX_NORMAL = common dso_local global i64 0, align 8
@GL11_IX_COLOR = common dso_local global i64 0, align 8
@GL_TEXTURE0 = common dso_local global i64 0, align 8
@GL11_IX_TEXTURE_COORD = common dso_local global i64 0, align 8
@GL11_IX_POINT_SIZE = common dso_local global i64 0, align 8
@GL11_IX_MATRIX_INDEX = common dso_local global i64 0, align 8
@GL11_IX_MATRIX_WEIGHT = common dso_local global i64 0, align 8
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @get_integer_internal_11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_integer_internal_11(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_11__* @GLXX_GET_CLIENT_STATE(i32* %9)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %8, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @vcos_assert(i32 %13)
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %348 [
    i32 159, label %16
    i32 134, label %24
    i32 132, label %34
    i32 133, label %44
    i32 145, label %54
    i32 146, label %64
    i32 157, label %74
    i32 155, label %84
    i32 156, label %94
    i32 139, label %104
    i32 137, label %121
    i32 138, label %138
    i32 141, label %155
    i32 142, label %165
    i32 150, label %175
    i32 148, label %185
    i32 149, label %195
    i32 130, label %205
    i32 128, label %215
    i32 129, label %225
    i32 160, label %235
    i32 154, label %242
    i32 135, label %249
    i32 147, label %259
    i32 158, label %269
    i32 140, label %279
    i32 143, label %296
    i32 151, label %306
    i32 131, label %316
    i32 136, label %326
    i32 144, label %333
    i32 152, label %340
    i32 153, label %344
  ]

16:                                               ; preds = %3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  store i32 1, i32* %4, align 4
  br label %351

24:                                               ; preds = %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load i64, i64* @GL11_IX_VERTEX, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %31, i32* %33, align 4
  store i32 1, i32* %4, align 4
  br label %351

34:                                               ; preds = %3
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load i64, i64* @GL11_IX_VERTEX, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  store i32 1, i32* %4, align 4
  br label %351

44:                                               ; preds = %3
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i64, i64* @GL11_IX_VERTEX, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %51, i32* %53, align 4
  store i32 1, i32* %4, align 4
  br label %351

54:                                               ; preds = %3
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i64, i64* @GL11_IX_NORMAL, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %61, i32* %63, align 4
  store i32 1, i32* %4, align 4
  br label %351

64:                                               ; preds = %3
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i64, i64* @GL11_IX_NORMAL, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %73, align 4
  store i32 1, i32* %4, align 4
  br label %351

74:                                               ; preds = %3
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load i64, i64* @GL11_IX_COLOR, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %81, i32* %83, align 4
  store i32 1, i32* %4, align 4
  br label %351

84:                                               ; preds = %3
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i64, i64* @GL11_IX_COLOR, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %91, i32* %93, align 4
  store i32 1, i32* %4, align 4
  br label %351

94:                                               ; preds = %3
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i64, i64* @GL11_IX_COLOR, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %101, i32* %103, align 4
  store i32 1, i32* %4, align 4
  br label %351

104:                                              ; preds = %3
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @GL_TEXTURE0, align 8
  %113 = sub i64 %111, %112
  %114 = load i64, i64* @GL11_IX_TEXTURE_COORD, align 8
  %115 = add i64 %113, %114
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %118, i32* %120, align 4
  store i32 1, i32* %4, align 4
  br label %351

121:                                              ; preds = %3
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @GL_TEXTURE0, align 8
  %130 = sub i64 %128, %129
  %131 = load i64, i64* @GL11_IX_TEXTURE_COORD, align 8
  %132 = add i64 %130, %131
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  store i32 1, i32* %4, align 4
  br label %351

138:                                              ; preds = %3
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @GL_TEXTURE0, align 8
  %147 = sub i64 %145, %146
  %148 = load i64, i64* @GL11_IX_TEXTURE_COORD, align 8
  %149 = add i64 %147, %148
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %152, i32* %154, align 4
  store i32 1, i32* %4, align 4
  br label %351

155:                                              ; preds = %3
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load i64, i64* @GL11_IX_POINT_SIZE, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %162, i32* %164, align 4
  store i32 1, i32* %4, align 4
  br label %351

165:                                              ; preds = %3
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load i64, i64* @GL11_IX_POINT_SIZE, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %172, i32* %174, align 4
  store i32 1, i32* %4, align 4
  br label %351

175:                                              ; preds = %3
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = load i64, i64* @GL11_IX_MATRIX_INDEX, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %7, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 %182, i32* %184, align 4
  store i32 1, i32* %4, align 4
  br label %351

185:                                              ; preds = %3
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = load i64, i64* @GL11_IX_MATRIX_INDEX, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %7, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  store i32 %192, i32* %194, align 4
  store i32 1, i32* %4, align 4
  br label %351

195:                                              ; preds = %3
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = load i64, i64* @GL11_IX_MATRIX_INDEX, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %7, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 %202, i32* %204, align 4
  store i32 1, i32* %4, align 4
  br label %351

205:                                              ; preds = %3
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = load i64, i64* @GL11_IX_MATRIX_WEIGHT, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %7, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  store i32 %212, i32* %214, align 4
  store i32 1, i32* %4, align 4
  br label %351

215:                                              ; preds = %3
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = load i64, i64* @GL11_IX_MATRIX_WEIGHT, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %7, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  store i32 %222, i32* %224, align 4
  store i32 1, i32* %4, align 4
  br label %351

225:                                              ; preds = %3
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = load i64, i64* @GL11_IX_MATRIX_WEIGHT, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %7, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  store i32 %232, i32* %234, align 4
  store i32 1, i32* %4, align 4
  br label %351

235:                                              ; preds = %3
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %7, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  store i32 %239, i32* %241, align 4
  store i32 1, i32* %4, align 4
  br label %351

242:                                              ; preds = %3
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32*, i32** %7, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  store i32 %246, i32* %248, align 4
  store i32 1, i32* %4, align 4
  br label %351

249:                                              ; preds = %3
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = load i64, i64* @GL11_IX_VERTEX, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %7, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  store i32 %256, i32* %258, align 4
  store i32 1, i32* %4, align 4
  br label %351

259:                                              ; preds = %3
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %261, align 8
  %263 = load i64, i64* @GL11_IX_NORMAL, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** %7, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  store i32 %266, i32* %268, align 4
  store i32 1, i32* %4, align 4
  br label %351

269:                                              ; preds = %3
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = load i64, i64* @GL11_IX_COLOR, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %7, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  store i32 %276, i32* %278, align 4
  store i32 1, i32* %4, align 4
  br label %351

279:                                              ; preds = %3
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %281, align 8
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @GL_TEXTURE0, align 8
  %288 = sub i64 %286, %287
  %289 = load i64, i64* @GL11_IX_TEXTURE_COORD, align 8
  %290 = add i64 %288, %289
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32*, i32** %7, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  store i32 %293, i32* %295, align 4
  store i32 1, i32* %4, align 4
  br label %351

296:                                              ; preds = %3
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %298, align 8
  %300 = load i64, i64* @GL11_IX_POINT_SIZE, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %7, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  store i32 %303, i32* %305, align 4
  store i32 1, i32* %4, align 4
  br label %351

306:                                              ; preds = %3
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %308, align 8
  %310 = load i64, i64* @GL11_IX_MATRIX_INDEX, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32*, i32** %7, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  store i32 %313, i32* %315, align 4
  store i32 1, i32* %4, align 4
  br label %351

316:                                              ; preds = %3
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %318, align 8
  %320 = load i64, i64* @GL11_IX_MATRIX_WEIGHT, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32*, i32** %7, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  store i32 %323, i32* %325, align 4
  store i32 1, i32* %4, align 4
  br label %351

326:                                              ; preds = %3
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load i32*, i32** %7, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  store i32 %330, i32* %332, align 4
  store i32 1, i32* %4, align 4
  br label %351

333:                                              ; preds = %3
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32*, i32** %7, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 0
  store i32 %337, i32* %339, align 4
  store i32 1, i32* %4, align 4
  br label %351

340:                                              ; preds = %3
  %341 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %342 = load i32*, i32** %7, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  store i32 %341, i32* %343, align 4
  store i32 1, i32* %4, align 4
  br label %351

344:                                              ; preds = %3
  %345 = load i32, i32* @GL_RGBA, align 4
  %346 = load i32*, i32** %7, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 0
  store i32 %345, i32* %347, align 4
  store i32 1, i32* %4, align 4
  br label %351

348:                                              ; preds = %3
  %349 = call i32 (...) @UNREACHABLE()
  br label %350

350:                                              ; preds = %348
  store i32 0, i32* %4, align 4
  br label %351

351:                                              ; preds = %350, %344, %340, %333, %326, %316, %306, %296, %279, %269, %259, %249, %242, %235, %225, %215, %205, %195, %185, %175, %165, %155, %138, %121, %104, %94, %84, %74, %64, %54, %44, %34, %24, %16
  %352 = load i32, i32* %4, align 4
  ret i32 %352
}

declare dso_local %struct.TYPE_11__* @GLXX_GET_CLIENT_STATE(i32*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @UNREACHABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
