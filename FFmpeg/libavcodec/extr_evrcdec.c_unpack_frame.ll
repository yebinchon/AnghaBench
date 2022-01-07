; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_evrcdec.c_unpack_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_evrcdec.c_unpack_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8**, i8**, i8***, i8**, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @unpack_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack_frame(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32* %8, i32** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %285 [
    i32 130, label %12
    i32 129, label %185
    i32 128, label %268
  ]

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @get_bits1(i32* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 8
  store i8* %14, i8** %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @get_bits(i32* %17, i32 6)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  store i8* %18, i8** %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @get_bits(i32* %23, i32 6)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* %24, i8** %28, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i8* @get_bits(i32* %29, i32 9)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  store i8* %30, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i8* @get_bits(i32* %35, i32 7)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 3
  store i8* %36, i8** %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @get_bits(i32* %41, i32 7)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @get_bits(i32* %45, i32 5)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 7
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i8* @get_bits(i32* %49, i32 3)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  store i8* %50, i8** %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i8* @get_bits(i32* %55, i32 8)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i8***, i8**** %58, align 8
  %60 = getelementptr inbounds i8**, i8*** %59, i64 0
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  store i8* %56, i8** %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i8* @get_bits(i32* %63, i32 8)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i8***, i8**** %66, align 8
  %68 = getelementptr inbounds i8**, i8*** %67, i64 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  store i8* %64, i8** %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i8* @get_bits(i32* %71, i32 8)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load i8***, i8**** %74, align 8
  %76 = getelementptr inbounds i8**, i8*** %75, i64 0
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  store i8* %72, i8** %78, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i8* @get_bits(i32* %79, i32 11)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i8***, i8**** %82, align 8
  %84 = getelementptr inbounds i8**, i8*** %83, i64 0
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 3
  store i8* %80, i8** %86, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = call i8* @get_bits(i32* %87, i32 5)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  store i8* %88, i8** %92, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i8* @get_bits(i32* %93, i32 3)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  store i8* %94, i8** %98, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = call i8* @get_bits(i32* %99, i32 8)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load i8***, i8**** %102, align 8
  %104 = getelementptr inbounds i8**, i8*** %103, i64 1
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  store i8* %100, i8** %106, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = call i8* @get_bits(i32* %107, i32 8)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load i8***, i8**** %110, align 8
  %112 = getelementptr inbounds i8**, i8*** %111, i64 1
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  store i8* %108, i8** %114, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = call i8* @get_bits(i32* %115, i32 8)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i8***, i8**** %118, align 8
  %120 = getelementptr inbounds i8**, i8*** %119, i64 1
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 2
  store i8* %116, i8** %122, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = call i8* @get_bits(i32* %123, i32 11)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  %127 = load i8***, i8**** %126, align 8
  %128 = getelementptr inbounds i8**, i8*** %127, i64 1
  %129 = load i8**, i8*** %128, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 3
  store i8* %124, i8** %130, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = call i8* @get_bits(i32* %131, i32 5)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i8**, i8*** %134, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 1
  store i8* %132, i8** %136, align 8
  %137 = load i32*, i32** %4, align 8
  %138 = call i8* @get_bits(i32* %137, i32 3)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 2
  store i8* %138, i8** %142, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = call i8* @get_bits(i32* %143, i32 8)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = load i8***, i8**** %146, align 8
  %148 = getelementptr inbounds i8**, i8*** %147, i64 2
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  store i8* %144, i8** %150, align 8
  %151 = load i32*, i32** %4, align 8
  %152 = call i8* @get_bits(i32* %151, i32 8)
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 3
  %155 = load i8***, i8**** %154, align 8
  %156 = getelementptr inbounds i8**, i8*** %155, i64 2
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  store i8* %152, i8** %158, align 8
  %159 = load i32*, i32** %4, align 8
  %160 = call i8* @get_bits(i32* %159, i32 8)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 3
  %163 = load i8***, i8**** %162, align 8
  %164 = getelementptr inbounds i8**, i8*** %163, i64 2
  %165 = load i8**, i8*** %164, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 2
  store i8* %160, i8** %166, align 8
  %167 = load i32*, i32** %4, align 8
  %168 = call i8* @get_bits(i32* %167, i32 11)
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 3
  %171 = load i8***, i8**** %170, align 8
  %172 = getelementptr inbounds i8**, i8*** %171, i64 2
  %173 = load i8**, i8*** %172, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 3
  store i8* %168, i8** %174, align 8
  %175 = load i32*, i32** %4, align 8
  %176 = call i8* @get_bits(i32* %175, i32 5)
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = load i8**, i8*** %178, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 2
  store i8* %176, i8** %180, align 8
  %181 = load i32*, i32** %4, align 8
  %182 = call i8* @get_bits1(i32* %181)
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 6
  store i8* %182, i8** %184, align 8
  br label %285

185:                                              ; preds = %1
  %186 = load i32*, i32** %4, align 8
  %187 = call i8* @get_bits(i32* %186, i32 7)
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i8**, i8*** %189, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 0
  store i8* %187, i8** %191, align 8
  %192 = load i32*, i32** %4, align 8
  %193 = call i8* @get_bits(i32* %192, i32 7)
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i8**, i8*** %195, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 1
  store i8* %193, i8** %197, align 8
  %198 = load i32*, i32** %4, align 8
  %199 = call i8* @get_bits(i32* %198, i32 8)
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i8**, i8*** %201, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 2
  store i8* %199, i8** %203, align 8
  %204 = load i32*, i32** %4, align 8
  %205 = call i8* @get_bits(i32* %204, i32 7)
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 5
  store i8* %205, i8** %207, align 8
  %208 = load i32*, i32** %4, align 8
  %209 = call i8* @get_bits(i32* %208, i32 3)
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 4
  %212 = load i8**, i8*** %211, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 0
  store i8* %209, i8** %213, align 8
  %214 = load i32*, i32** %4, align 8
  %215 = call i8* @get_bits(i32* %214, i32 10)
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 3
  %218 = load i8***, i8**** %217, align 8
  %219 = getelementptr inbounds i8**, i8*** %218, i64 0
  %220 = load i8**, i8*** %219, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  store i8* %215, i8** %221, align 8
  %222 = load i32*, i32** %4, align 8
  %223 = call i8* @get_bits(i32* %222, i32 4)
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 2
  %226 = load i8**, i8*** %225, align 8
  %227 = getelementptr inbounds i8*, i8** %226, i64 0
  store i8* %223, i8** %227, align 8
  %228 = load i32*, i32** %4, align 8
  %229 = call i8* @get_bits(i32* %228, i32 3)
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 4
  %232 = load i8**, i8*** %231, align 8
  %233 = getelementptr inbounds i8*, i8** %232, i64 1
  store i8* %229, i8** %233, align 8
  %234 = load i32*, i32** %4, align 8
  %235 = call i8* @get_bits(i32* %234, i32 10)
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 3
  %238 = load i8***, i8**** %237, align 8
  %239 = getelementptr inbounds i8**, i8*** %238, i64 1
  %240 = load i8**, i8*** %239, align 8
  %241 = getelementptr inbounds i8*, i8** %240, i64 0
  store i8* %235, i8** %241, align 8
  %242 = load i32*, i32** %4, align 8
  %243 = call i8* @get_bits(i32* %242, i32 4)
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 2
  %246 = load i8**, i8*** %245, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 1
  store i8* %243, i8** %247, align 8
  %248 = load i32*, i32** %4, align 8
  %249 = call i8* @get_bits(i32* %248, i32 3)
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 4
  %252 = load i8**, i8*** %251, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 2
  store i8* %249, i8** %253, align 8
  %254 = load i32*, i32** %4, align 8
  %255 = call i8* @get_bits(i32* %254, i32 10)
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 3
  %258 = load i8***, i8**** %257, align 8
  %259 = getelementptr inbounds i8**, i8*** %258, i64 2
  %260 = load i8**, i8*** %259, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 0
  store i8* %255, i8** %261, align 8
  %262 = load i32*, i32** %4, align 8
  %263 = call i8* @get_bits(i32* %262, i32 4)
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 2
  %266 = load i8**, i8*** %265, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 2
  store i8* %263, i8** %267, align 8
  br label %285

268:                                              ; preds = %1
  %269 = load i32*, i32** %4, align 8
  %270 = call i8* @get_bits(i32* %269, i32 4)
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 1
  %273 = load i8**, i8*** %272, align 8
  %274 = getelementptr inbounds i8*, i8** %273, i64 0
  store i8* %270, i8** %274, align 8
  %275 = load i32*, i32** %4, align 8
  %276 = call i8* @get_bits(i32* %275, i32 4)
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 1
  %279 = load i8**, i8*** %278, align 8
  %280 = getelementptr inbounds i8*, i8** %279, i64 1
  store i8* %276, i8** %280, align 8
  %281 = load i32*, i32** %4, align 8
  %282 = call i8* @get_bits(i32* %281, i32 8)
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  store i8* %282, i8** %284, align 8
  br label %285

285:                                              ; preds = %1, %268, %185, %12
  ret void
}

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
