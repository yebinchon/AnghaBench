; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_plats.c_EV_DoPlat.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_plats.c_EV_DoPlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i8*, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i8*, i8*, i32, %struct.TYPE_16__, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i64*, i32 }

@sectors = common dso_local global %struct.TYPE_19__* null, align 8
@PU_LEVSPEC = common dso_local global i32 0, align 4
@T_PlatRaise = common dso_local global i64 0, align 8
@PLATSPEED = common dso_local global i32 0, align 4
@sides = common dso_local global %struct.TYPE_22__* null, align 8
@up = common dso_local global i8* null, align 8
@sfx_stnmov = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@PLATWAIT = common dso_local global i32 0, align 4
@down = common dso_local global i8* null, align 8
@sfx_pstart = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EV_DoPlat(%struct.TYPE_21__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %17 [
    i32 130, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @P_ActivateInStasis(i32 %15)
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %12
  br label %19

19:                                               ; preds = %271, %33, %18
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @P_FindSectorFromLineTag(%struct.TYPE_21__* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %274

24:                                               ; preds = %19
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** @sectors, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i64 %27
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %10, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = icmp ne %struct.TYPE_20__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %19

34:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  %35 = load i32, i32* @PU_LEVSPEC, align 4
  %36 = call %struct.TYPE_20__* @Z_Malloc(i32 64, i32 %35, i32 0)
  store %struct.TYPE_20__* %36, %struct.TYPE_20__** %7, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 8
  %39 = call i32 @P_AddThinker(%struct.TYPE_16__* %38)
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 9
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %45, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 9
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 4
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %50, align 8
  %51 = load i64, i64* @T_PlatRaise, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store i64 %51, i64* %55, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %5, align 4
  switch i32 %63, label %271 [
    i32 128, label %64
    i32 129, label %101
    i32 131, label %139
    i32 132, label %179
    i32 130, label %219
  ]

64:                                               ; preds = %34
  %65 = load i32, i32* @PLATSPEED, align 4
  %66 = sdiv i32 %65, 2
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** @sides, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @P_FindNextHighestFloor(%struct.TYPE_19__* %82, i8* %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 3
  store i32 0, i32* %90, align 4
  %91 = load i8*, i8** @up, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 3
  store i32 0, i32* %96, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* @sfx_stnmov, align 4
  %100 = call i32 @S_StartSound(i32* %98, i32 %99)
  br label %271

101:                                              ; preds = %34
  %102 = load i32, i32* @PLATSPEED, align 4
  %103 = sdiv i32 %102, 2
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** @sides, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @FRACUNIT, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr i8, i8* %121, i64 %125
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 5
  store i8* %126, i8** %128, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 3
  store i32 0, i32* %130, align 4
  %131 = load i8*, i8** @up, align 8
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i32, i32* @sfx_stnmov, align 4
  %138 = call i32 @S_StartSound(i32* %136, i32 %137)
  br label %271

139:                                              ; preds = %34
  %140 = load i32, i32* @PLATSPEED, align 4
  %141 = mul nsw i32 %140, 4
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %145 = call i8* @P_FindLowestFloorSurrounding(%struct.TYPE_19__* %144)
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 6
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 6
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ugt i8* %150, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %139
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 6
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %155, %139
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 5
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* @PLATWAIT, align 4
  %168 = mul nsw i32 35, %167
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  %171 = load i8*, i8** @down, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = load i32, i32* @sfx_pstart, align 4
  %178 = call i32 @S_StartSound(i32* %176, i32 %177)
  br label %271

179:                                              ; preds = %34
  %180 = load i32, i32* @PLATSPEED, align 4
  %181 = mul nsw i32 %180, 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %185 = call i8* @P_FindLowestFloorSurrounding(%struct.TYPE_19__* %184)
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 6
  store i8* %185, i8** %187, align 8
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 6
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ugt i8* %190, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %179
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 6
  store i8* %198, i8** %200, align 8
  br label %201

201:                                              ; preds = %195, %179
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 5
  store i8* %204, i8** %206, align 8
  %207 = load i32, i32* @PLATWAIT, align 4
  %208 = mul nsw i32 35, %207
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load i8*, i8** @down, align 8
  %212 = ptrtoint i8* %211 to i32
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i32, i32* @sfx_pstart, align 4
  %218 = call i32 @S_StartSound(i32* %216, i32 %217)
  br label %271

219:                                              ; preds = %34
  %220 = load i32, i32* @PLATSPEED, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %224 = call i8* @P_FindLowestFloorSurrounding(%struct.TYPE_19__* %223)
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 6
  store i8* %224, i8** %226, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 6
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = icmp ugt i8* %229, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %219
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 1
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 6
  store i8* %237, i8** %239, align 8
  br label %240

240:                                              ; preds = %234, %219
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %242 = call i8* @P_FindHighestFloorSurrounding(%struct.TYPE_19__* %241)
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 5
  store i8* %242, i8** %244, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 5
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = icmp ult i8* %247, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %240
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 5
  store i8* %255, i8** %257, align 8
  br label %258

258:                                              ; preds = %252, %240
  %259 = load i32, i32* @PLATWAIT, align 4
  %260 = mul nsw i32 35, %259
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 3
  store i32 %260, i32* %262, align 4
  %263 = call i32 (...) @P_Random()
  %264 = and i32 %263, 1
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load i32, i32* @sfx_pstart, align 4
  %270 = call i32 @S_StartSound(i32* %268, i32 %269)
  br label %271

271:                                              ; preds = %34, %258, %201, %161, %101, %64
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %273 = call i32 @P_AddActivePlat(%struct.TYPE_20__* %272)
  br label %19

274:                                              ; preds = %19
  %275 = load i32, i32* %9, align 4
  ret i32 %275
}

declare dso_local i32 @P_ActivateInStasis(i32) #1

declare dso_local i32 @P_FindSectorFromLineTag(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_20__* @Z_Malloc(i32, i32, i32) #1

declare dso_local i32 @P_AddThinker(%struct.TYPE_16__*) #1

declare dso_local i8* @P_FindNextHighestFloor(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @S_StartSound(i32*, i32) #1

declare dso_local i8* @P_FindLowestFloorSurrounding(%struct.TYPE_19__*) #1

declare dso_local i8* @P_FindHighestFloorSurrounding(%struct.TYPE_19__*) #1

declare dso_local i32 @P_Random(...) #1

declare dso_local i32 @P_AddActivePlat(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
