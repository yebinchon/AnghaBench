; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/svp/extr_ssp16.c_ptr1_read_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/svp/extr_ssp16.c_ptr1_read_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, i64* }

@ssp = common dso_local global %struct.TYPE_10__* null, align 8
@rST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ptr1_read_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptr1_read_(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %276 [
    i32 0, label %18
    i32 1, label %18
    i32 2, label %18
    i32 3, label %36
    i32 4, label %44
    i32 5, label %44
    i32 6, label %44
    i32 7, label %62
    i32 8, label %70
    i32 9, label %70
    i32 10, label %70
    i32 11, label %89
    i32 12, label %97
    i32 13, label %97
    i32 14, label %97
    i32 15, label %116
    i32 16, label %124
    i32 17, label %124
    i32 18, label %124
    i32 19, label %154
    i32 20, label %162
    i32 21, label %162
    i32 22, label %162
    i32 23, label %192
    i32 24, label %200
    i32 25, label %200
    i32 26, label %200
    i32 27, label %230
    i32 28, label %238
    i32 29, label %238
    i32 30, label %238
    i32 31, label %268
  ]

18:                                               ; preds = %3, %3, %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %23, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  br label %299

36:                                               ; preds = %3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %299

44:                                               ; preds = %3, %3, %3
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 3
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %49, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %4, align 4
  br label %299

62:                                               ; preds = %3
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %4, align 4
  br label %299

70:                                               ; preds = %3, %3, %3
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = getelementptr inbounds i32, i32* %75, i64 %85
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %4, align 4
  br label %299

89:                                               ; preds = %3
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %4, align 4
  br label %299

97:                                               ; preds = %3, %3, %3
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = and i32 %108, 3
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %111, align 8
  %114 = getelementptr inbounds i32, i32* %102, i64 %112
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %4, align 4
  br label %299

116:                                              ; preds = %3
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %4, align 4
  br label %299

124:                                              ; preds = %3, %3, %3
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = and i32 %130, 3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  %134 = bitcast i64* %133 to i8*
  store i8* %134, i8** %11, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* @rST, align 4
  %146 = and i32 %145, 7
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %124
  %149 = load i8*, i8** %11, align 8
  %150 = load i8, i8* %149, align 1
  %151 = add i8 %150, -1
  store i8 %151, i8* %149, align 1
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %4, align 4
  br label %299

153:                                              ; preds = %124
  store i32 -1, i32* %9, align 4
  br label %277

154:                                              ; preds = %3
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %4, align 4
  br label %299

162:                                              ; preds = %3, %3, %3
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = and i32 %168, 3
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %167, i64 %170
  %172 = bitcast i64* %171 to i8*
  store i8* %172, i8** %11, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* @rST, align 4
  %184 = and i32 %183, 7
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %162
  %187 = load i8*, i8** %11, align 8
  %188 = load i8, i8* %187, align 1
  %189 = add i8 %188, -1
  store i8 %189, i8* %187, align 1
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %4, align 4
  br label %299

191:                                              ; preds = %162
  store i32 -1, i32* %9, align 4
  br label %277

192:                                              ; preds = %3
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %4, align 4
  br label %299

200:                                              ; preds = %3, %3, %3
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = and i32 %206, 3
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %205, i64 %208
  %210 = bitcast i64* %209 to i8*
  store i8* %210, i8** %11, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %10, align 4
  %221 = load i32, i32* @rST, align 4
  %222 = and i32 %221, 7
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %200
  %225 = load i8*, i8** %11, align 8
  %226 = load i8, i8* %225, align 1
  %227 = add i8 %226, 1
  store i8 %227, i8* %225, align 1
  %228 = load i32, i32* %10, align 4
  store i32 %228, i32* %4, align 4
  br label %299

229:                                              ; preds = %200
  store i32 1, i32* %9, align 4
  br label %277

230:                                              ; preds = %3
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 3
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %4, align 4
  br label %299

238:                                              ; preds = %3, %3, %3
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i64*, i64** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = and i32 %244, 3
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %243, i64 %246
  %248 = bitcast i64* %247 to i8*
  store i8* %248, i8** %11, align 8
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load i8*, i8** %11, align 8
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %10, align 4
  %259 = load i32, i32* @rST, align 4
  %260 = and i32 %259, 7
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %238
  %263 = load i8*, i8** %11, align 8
  %264 = load i8, i8* %263, align 1
  %265 = add i8 %264, 1
  store i8 %265, i8* %263, align 1
  %266 = load i32, i32* %10, align 4
  store i32 %266, i32* %4, align 4
  br label %299

267:                                              ; preds = %238
  store i32 1, i32* %9, align 4
  br label %277

268:                                              ; preds = %3
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 3
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %4, align 4
  br label %299

276:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %299

277:                                              ; preds = %267, %229, %191, %153
  %278 = load i32, i32* @rST, align 4
  %279 = and i32 %278, 7
  %280 = shl i32 1, %279
  %281 = sub nsw i32 %280, 1
  store i32 %281, i32* %8, align 4
  %282 = load i8*, i8** %11, align 8
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = load i32, i32* %8, align 4
  %286 = xor i32 %285, -1
  %287 = and i32 %284, %286
  %288 = load i8*, i8** %11, align 8
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = load i32, i32* %9, align 4
  %292 = add nsw i32 %290, %291
  %293 = load i32, i32* %8, align 4
  %294 = and i32 %292, %293
  %295 = or i32 %287, %294
  %296 = trunc i32 %295 to i8
  %297 = load i8*, i8** %11, align 8
  store i8 %296, i8* %297, align 1
  %298 = load i32, i32* %10, align 4
  store i32 %298, i32* %4, align 4
  br label %299

299:                                              ; preds = %277, %276, %268, %262, %230, %224, %192, %186, %154, %148, %116, %97, %89, %70, %62, %44, %36, %18
  %300 = load i32, i32* %4, align 4
  ret i32 %300
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
