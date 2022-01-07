; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_eedi2_interpolate_plane.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_eedi2_interpolate_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__**, %struct.TYPE_8__** }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32* }

@MSKPF = common dso_local global i64 0, align 8
@SRCPF = common dso_local global i64 0, align 8
@TMPPF = common dso_local global i64 0, align 8
@DSTPF = common dso_local global i64 0, align 8
@DST2PF = common dso_local global i64 0, align 8
@TMP2PF2 = common dso_local global i64 0, align 8
@MSK2PF = common dso_local global i64 0, align 8
@TMP2PF = common dso_local global i64 0, align 8
@DST2MPF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @eedi2_interpolate_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eedi2_interpolate_plane(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 13
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %23, align 8
  %25 = load i64, i64* @MSKPF, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %24, i64 %25
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %5, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 13
  %37 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %36, align 8
  %38 = load i64, i64* @SRCPF, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %37, i64 %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %6, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 13
  %50 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %49, align 8
  %51 = load i64, i64* @TMPPF, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %50, i64 %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %7, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 13
  %63 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %62, align 8
  %64 = load i64, i64* @DSTPF, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %63, i64 %64
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %8, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 14
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %75, align 8
  %77 = load i64, i64* @DST2PF, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %76, i64 %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %9, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 14
  %89 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %88, align 8
  %90 = load i64, i64* @TMP2PF2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %89, i64 %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %10, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 14
  %102 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %101, align 8
  %103 = load i64, i64* @MSK2PF, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %102, i64 %103
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %11, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 14
  %115 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %114, align 8
  %116 = load i64, i64* @TMP2PF, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %115, i64 %116
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  store i32* %125, i32** %12, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 14
  %128 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %127, align 8
  %129 = load i64, i64* @DST2MPF, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %128, i64 %129
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %13, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  store i32* %141, i32** %14, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  store i32* %144, i32** %15, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  store i32* %147, i32** %16, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  store i32* %150, i32** %17, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 14
  %153 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %153, i64 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %18, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 14
  %165 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %165, i64 0
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %19, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 14
  %177 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %177, i64 0
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  store i32 %186, i32* %20, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 13
  %189 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %189, i64 0
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  store i32 %198, i32* %21, align 4
  %199 = load i32*, i32** %5, align 8
  %200 = load i32, i32* %18, align 4
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %18, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 12
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 11
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %21, align 4
  %213 = load i32, i32* %20, align 4
  %214 = call i32 @eedi2_build_edge_mask(i32* %199, i32 %200, i32* %201, i32 %202, i32 %205, i32 %208, i32 %211, i32 %212, i32 %213)
  %215 = load i32*, i32** %5, align 8
  %216 = load i32, i32* %18, align 4
  %217 = load i32*, i32** %7, align 8
  %218 = load i32, i32* %18, align 4
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %21, align 4
  %223 = load i32, i32* %20, align 4
  %224 = call i32 @eedi2_erode_edge_mask(i32* %215, i32 %216, i32* %217, i32 %218, i32 %221, i32 %222, i32 %223)
  %225 = load i32*, i32** %7, align 8
  %226 = load i32, i32* %18, align 4
  %227 = load i32*, i32** %5, align 8
  %228 = load i32, i32* %18, align 4
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %21, align 4
  %233 = load i32, i32* %20, align 4
  %234 = call i32 @eedi2_dilate_edge_mask(i32* %225, i32 %226, i32* %227, i32 %228, i32 %231, i32 %232, i32 %233)
  %235 = load i32*, i32** %5, align 8
  %236 = load i32, i32* %18, align 4
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* %18, align 4
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %21, align 4
  %243 = load i32, i32* %20, align 4
  %244 = call i32 @eedi2_erode_edge_mask(i32* %235, i32 %236, i32* %237, i32 %238, i32 %241, i32 %242, i32 %243)
  %245 = load i32*, i32** %7, align 8
  %246 = load i32, i32* %18, align 4
  %247 = load i32*, i32** %5, align 8
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* %21, align 4
  %250 = load i32, i32* %20, align 4
  %251 = call i32 @eedi2_remove_small_gaps(i32* %245, i32 %246, i32* %247, i32 %248, i32 %249, i32 %250)
  %252 = load i32, i32* %4, align 4
  %253 = load i32*, i32** %5, align 8
  %254 = load i32, i32* %18, align 4
  %255 = load i32*, i32** %6, align 8
  %256 = load i32, i32* %18, align 4
  %257 = load i32*, i32** %7, align 8
  %258 = load i32, i32* %18, align 4
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %21, align 4
  %266 = load i32, i32* %20, align 4
  %267 = call i32 @eedi2_calc_directions(i32 %252, i32* %253, i32 %254, i32* %255, i32 %256, i32* %257, i32 %258, i32 %261, i32 %264, i32 %265, i32 %266)
  %268 = load i32*, i32** %5, align 8
  %269 = load i32, i32* %18, align 4
  %270 = load i32*, i32** %7, align 8
  %271 = load i32, i32* %18, align 4
  %272 = load i32*, i32** %8, align 8
  %273 = load i32, i32* %18, align 4
  %274 = load i32, i32* %21, align 4
  %275 = load i32, i32* %20, align 4
  %276 = call i32 @eedi2_filter_dir_map(i32* %268, i32 %269, i32* %270, i32 %271, i32* %272, i32 %273, i32 %274, i32 %275)
  %277 = load i32*, i32** %5, align 8
  %278 = load i32, i32* %18, align 4
  %279 = load i32*, i32** %8, align 8
  %280 = load i32, i32* %18, align 4
  %281 = load i32*, i32** %7, align 8
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* %21, align 4
  %284 = load i32, i32* %20, align 4
  %285 = call i32 @eedi2_expand_dir_map(i32* %277, i32 %278, i32* %279, i32 %280, i32* %281, i32 %282, i32 %283, i32 %284)
  %286 = load i32*, i32** %5, align 8
  %287 = load i32, i32* %18, align 4
  %288 = load i32*, i32** %7, align 8
  %289 = load i32, i32* %18, align 4
  %290 = load i32*, i32** %8, align 8
  %291 = load i32, i32* %18, align 4
  %292 = load i32, i32* %21, align 4
  %293 = load i32, i32* %20, align 4
  %294 = call i32 @eedi2_filter_map(i32* %286, i32 %287, i32* %288, i32 %289, i32* %290, i32 %291, i32 %292, i32 %293)
  %295 = load i32*, i32** %6, align 8
  %296 = load i32*, i32** %9, align 8
  %297 = load i32, i32* %21, align 4
  %298 = load i32, i32* %18, align 4
  %299 = call i32 @eedi2_upscale_by_2(i32* %295, i32* %296, i32 %297, i32 %298)
  %300 = load i32*, i32** %8, align 8
  %301 = load i32*, i32** %10, align 8
  %302 = load i32, i32* %21, align 4
  %303 = load i32, i32* %18, align 4
  %304 = call i32 @eedi2_upscale_by_2(i32* %300, i32* %301, i32 %302, i32 %303)
  %305 = load i32*, i32** %5, align 8
  %306 = load i32*, i32** %11, align 8
  %307 = load i32, i32* %21, align 4
  %308 = load i32, i32* %18, align 4
  %309 = call i32 @eedi2_upscale_by_2(i32* %305, i32* %306, i32 %307, i32 %308)
  %310 = load i32*, i32** %11, align 8
  %311 = load i32, i32* %18, align 4
  %312 = load i32*, i32** %10, align 8
  %313 = load i32, i32* %18, align 4
  %314 = load i32*, i32** %12, align 8
  %315 = load i32, i32* %18, align 4
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %19, align 4
  %320 = load i32, i32* %20, align 4
  %321 = call i32 @eedi2_mark_directions_2x(i32* %310, i32 %311, i32* %312, i32 %313, i32* %314, i32 %315, i32 %318, i32 %319, i32 %320)
  %322 = load i32*, i32** %11, align 8
  %323 = load i32, i32* %18, align 4
  %324 = load i32*, i32** %12, align 8
  %325 = load i32, i32* %18, align 4
  %326 = load i32*, i32** %13, align 8
  %327 = load i32, i32* %18, align 4
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* %19, align 4
  %332 = load i32, i32* %20, align 4
  %333 = call i32 @eedi2_filter_dir_map_2x(i32* %322, i32 %323, i32* %324, i32 %325, i32* %326, i32 %327, i32 %330, i32 %331, i32 %332)
  %334 = load i32*, i32** %11, align 8
  %335 = load i32, i32* %18, align 4
  %336 = load i32*, i32** %13, align 8
  %337 = load i32, i32* %18, align 4
  %338 = load i32*, i32** %12, align 8
  %339 = load i32, i32* %18, align 4
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %19, align 4
  %344 = load i32, i32* %20, align 4
  %345 = call i32 @eedi2_expand_dir_map_2x(i32* %334, i32 %335, i32* %336, i32 %337, i32* %338, i32 %339, i32 %342, i32 %343, i32 %344)
  %346 = load i32*, i32** %11, align 8
  %347 = load i32, i32* %18, align 4
  %348 = load i32*, i32** %12, align 8
  %349 = load i32, i32* %18, align 4
  %350 = load i32*, i32** %13, align 8
  %351 = load i32, i32* %18, align 4
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* %19, align 4
  %356 = load i32, i32* %20, align 4
  %357 = call i32 @eedi2_fill_gaps_2x(i32* %346, i32 %347, i32* %348, i32 %349, i32* %350, i32 %351, i32 %354, i32 %355, i32 %356)
  %358 = load i32*, i32** %11, align 8
  %359 = load i32, i32* %18, align 4
  %360 = load i32*, i32** %13, align 8
  %361 = load i32, i32* %18, align 4
  %362 = load i32*, i32** %12, align 8
  %363 = load i32, i32* %18, align 4
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 5
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %19, align 4
  %368 = load i32, i32* %20, align 4
  %369 = call i32 @eedi2_fill_gaps_2x(i32* %358, i32 %359, i32* %360, i32 %361, i32* %362, i32 %363, i32 %366, i32 %367, i32 %368)
  %370 = load i32, i32* %4, align 4
  %371 = load i32*, i32** %12, align 8
  %372 = load i32, i32* %18, align 4
  %373 = load i32*, i32** %9, align 8
  %374 = load i32, i32* %18, align 4
  %375 = load i32*, i32** %10, align 8
  %376 = load i32, i32* %18, align 4
  %377 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i32 0, i32 5
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* %19, align 4
  %384 = load i32, i32* %20, align 4
  %385 = call i32 @eedi2_interpolate_lattice(i32 %370, i32* %371, i32 %372, i32* %373, i32 %374, i32* %375, i32 %376, i32 %379, i32 %382, i32 %383, i32 %384)
  %386 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 4
  %388 = load i32, i32* %387, align 8
  %389 = icmp eq i32 %388, 1
  br i1 %389, label %395, label %390

390:                                              ; preds = %2
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 8
  %394 = icmp eq i32 %393, 3
  br i1 %394, label %395, label %439

395:                                              ; preds = %390, %2
  %396 = load i32*, i32** %10, align 8
  %397 = load i32, i32* %18, align 4
  %398 = load i32*, i32** %12, align 8
  %399 = load i32, i32* %18, align 4
  %400 = load i32, i32* %20, align 4
  %401 = load i32, i32* %19, align 4
  %402 = call i32 @eedi2_bit_blit(i32* %396, i32 %397, i32* %398, i32 %399, i32 %400, i32 %401)
  %403 = load i32*, i32** %11, align 8
  %404 = load i32, i32* %18, align 4
  %405 = load i32*, i32** %12, align 8
  %406 = load i32, i32* %18, align 4
  %407 = load i32*, i32** %13, align 8
  %408 = load i32, i32* %18, align 4
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 5
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* %19, align 4
  %413 = load i32, i32* %20, align 4
  %414 = call i32 @eedi2_filter_dir_map_2x(i32* %403, i32 %404, i32* %405, i32 %406, i32* %407, i32 %408, i32 %411, i32 %412, i32 %413)
  %415 = load i32*, i32** %11, align 8
  %416 = load i32, i32* %18, align 4
  %417 = load i32*, i32** %13, align 8
  %418 = load i32, i32* %18, align 4
  %419 = load i32*, i32** %12, align 8
  %420 = load i32, i32* %18, align 4
  %421 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 5
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %19, align 4
  %425 = load i32, i32* %20, align 4
  %426 = call i32 @eedi2_expand_dir_map_2x(i32* %415, i32 %416, i32* %417, i32 %418, i32* %419, i32 %420, i32 %423, i32 %424, i32 %425)
  %427 = load i32*, i32** %12, align 8
  %428 = load i32, i32* %18, align 4
  %429 = load i32*, i32** %10, align 8
  %430 = load i32, i32* %18, align 4
  %431 = load i32*, i32** %9, align 8
  %432 = load i32, i32* %18, align 4
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 5
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* %19, align 4
  %437 = load i32, i32* %20, align 4
  %438 = call i32 @eedi2_post_process(i32* %427, i32 %428, i32* %429, i32 %430, i32* %431, i32 %432, i32 %435, i32 %436, i32 %437)
  br label %439

439:                                              ; preds = %395, %390
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 4
  %442 = load i32, i32* %441, align 8
  %443 = icmp eq i32 %442, 2
  br i1 %443, label %449, label %444

444:                                              ; preds = %439
  %445 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 8
  %448 = icmp eq i32 %447, 3
  br i1 %448, label %449, label %502

449:                                              ; preds = %444, %439
  %450 = load i32*, i32** %6, align 8
  %451 = load i32, i32* %18, align 4
  %452 = load i32*, i32** %7, align 8
  %453 = load i32, i32* %18, align 4
  %454 = load i32*, i32** %6, align 8
  %455 = load i32, i32* %18, align 4
  %456 = load i32, i32* %21, align 4
  %457 = load i32, i32* %20, align 4
  %458 = call i32 @eedi2_gaussian_blur1(i32* %450, i32 %451, i32* %452, i32 %453, i32* %454, i32 %455, i32 %456, i32 %457)
  %459 = load i32*, i32** %6, align 8
  %460 = load i32, i32* %18, align 4
  %461 = load i32, i32* %21, align 4
  %462 = load i32, i32* %20, align 4
  %463 = load i32*, i32** %14, align 8
  %464 = load i32*, i32** %15, align 8
  %465 = load i32*, i32** %16, align 8
  %466 = call i32 @eedi2_calc_derivatives(i32* %459, i32 %460, i32 %461, i32 %462, i32* %463, i32* %464, i32* %465)
  %467 = load i32*, i32** %14, align 8
  %468 = load i32*, i32** %17, align 8
  %469 = load i32*, i32** %14, align 8
  %470 = load i32, i32* %18, align 4
  %471 = load i32, i32* %21, align 4
  %472 = load i32, i32* %20, align 4
  %473 = call i32 @eedi2_gaussian_blur_sqrt2(i32* %467, i32* %468, i32* %469, i32 %470, i32 %471, i32 %472)
  %474 = load i32*, i32** %15, align 8
  %475 = load i32*, i32** %17, align 8
  %476 = load i32*, i32** %15, align 8
  %477 = load i32, i32* %18, align 4
  %478 = load i32, i32* %21, align 4
  %479 = load i32, i32* %20, align 4
  %480 = call i32 @eedi2_gaussian_blur_sqrt2(i32* %474, i32* %475, i32* %476, i32 %477, i32 %478, i32 %479)
  %481 = load i32*, i32** %16, align 8
  %482 = load i32*, i32** %17, align 8
  %483 = load i32*, i32** %16, align 8
  %484 = load i32, i32* %18, align 4
  %485 = load i32, i32* %21, align 4
  %486 = load i32, i32* %20, align 4
  %487 = call i32 @eedi2_gaussian_blur_sqrt2(i32* %481, i32* %482, i32* %483, i32 %484, i32 %485, i32 %486)
  %488 = load i32*, i32** %14, align 8
  %489 = load i32*, i32** %15, align 8
  %490 = load i32*, i32** %16, align 8
  %491 = load i32, i32* %18, align 4
  %492 = load i32*, i32** %10, align 8
  %493 = load i32, i32* %18, align 4
  %494 = load i32*, i32** %9, align 8
  %495 = load i32, i32* %18, align 4
  %496 = load i32, i32* %19, align 4
  %497 = load i32, i32* %20, align 4
  %498 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %499 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %498, i32 0, i32 5
  %500 = load i32, i32* %499, align 4
  %501 = call i32 @eedi2_post_process_corner(i32* %488, i32* %489, i32* %490, i32 %491, i32* %492, i32 %493, i32* %494, i32 %495, i32 %496, i32 %497, i32 %500)
  br label %502

502:                                              ; preds = %449, %444
  ret void
}

declare dso_local i32 @eedi2_build_edge_mask(i32*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @eedi2_erode_edge_mask(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @eedi2_dilate_edge_mask(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @eedi2_remove_small_gaps(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @eedi2_calc_directions(i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @eedi2_filter_dir_map(i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @eedi2_expand_dir_map(i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @eedi2_filter_map(i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @eedi2_upscale_by_2(i32*, i32*, i32, i32) #1

declare dso_local i32 @eedi2_mark_directions_2x(i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @eedi2_filter_dir_map_2x(i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @eedi2_expand_dir_map_2x(i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @eedi2_fill_gaps_2x(i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @eedi2_interpolate_lattice(i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @eedi2_bit_blit(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @eedi2_post_process(i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @eedi2_gaussian_blur1(i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @eedi2_calc_derivatives(i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @eedi2_gaussian_blur_sqrt2(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @eedi2_post_process_corner(i32*, i32*, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
