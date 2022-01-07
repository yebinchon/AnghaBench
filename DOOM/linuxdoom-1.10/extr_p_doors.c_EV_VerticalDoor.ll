; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_doors.c_EV_VerticalDoor.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_doors.c_EV_VerticalDoor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { i32, i64* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32* }

@it_bluecard = common dso_local global i64 0, align 8
@it_blueskull = common dso_local global i64 0, align 8
@PD_BLUEK = common dso_local global i32 0, align 4
@sfx_oof = common dso_local global i32 0, align 4
@it_yellowcard = common dso_local global i64 0, align 8
@it_yellowskull = common dso_local global i64 0, align 8
@PD_YELLOWK = common dso_local global i32 0, align 4
@it_redcard = common dso_local global i64 0, align 8
@it_redskull = common dso_local global i64 0, align 8
@PD_REDK = common dso_local global i32 0, align 4
@sides = common dso_local global %struct.TYPE_22__* null, align 8
@sectors = common dso_local global %struct.TYPE_18__* null, align 8
@sfx_bdopn = common dso_local global i32 0, align 4
@sfx_doropn = common dso_local global i32 0, align 4
@PU_LEVSPEC = common dso_local global i32 0, align 4
@T_VerticalDoor = common dso_local global i64 0, align 8
@VDOORSPEED = common dso_local global i32 0, align 4
@VDOORWAIT = common dso_local global i32 0, align 4
@normal = common dso_local global i32 0, align 4
@open = common dso_local global i32 0, align 4
@blazeRaise = common dso_local global i32 0, align 4
@blazeOpen = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EV_VerticalDoor(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %5, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %97 [
    i32 26, label %16
    i32 32, label %16
    i32 27, label %43
    i32 34, label %43
    i32 28, label %70
    i32 33, label %70
  ]

16:                                               ; preds = %2, %2
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = icmp ne %struct.TYPE_19__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %236

20:                                               ; preds = %16
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @it_bluecard, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @it_blueskull, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @PD_BLUEK, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @sfx_oof, align 4
  %41 = call i32 @S_StartSound(%struct.TYPE_20__* null, i32 %40)
  br label %236

42:                                               ; preds = %28, %20
  br label %97

43:                                               ; preds = %2, %2
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = icmp ne %struct.TYPE_19__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %236

47:                                               ; preds = %43
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @it_yellowcard, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @it_yellowskull, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @PD_YELLOWK, align 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @sfx_oof, align 4
  %68 = call i32 @S_StartSound(%struct.TYPE_20__* null, i32 %67)
  br label %236

69:                                               ; preds = %55, %47
  br label %97

70:                                               ; preds = %2, %2
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = icmp ne %struct.TYPE_19__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %236

74:                                               ; preds = %70
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @it_redcard, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %74
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @it_redskull, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* @PD_REDK, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @sfx_oof, align 4
  %95 = call i32 @S_StartSound(%struct.TYPE_20__* null, i32 %94)
  br label %236

96:                                               ; preds = %82, %74
  br label %97

97:                                               ; preds = %2, %96, %69, %42
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** @sides, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = xor i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  store %struct.TYPE_18__* %109, %struct.TYPE_18__** %7, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sectors, align 8
  %112 = ptrtoint %struct.TYPE_18__* %110 to i64
  %113 = ptrtoint %struct.TYPE_18__* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 16
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %6, align 4
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = icmp ne %struct.TYPE_17__* %119, null
  br i1 %120, label %121, label %147

121:                                              ; preds = %97
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  store %struct.TYPE_17__* %124, %struct.TYPE_17__** %8, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %146 [
    i32 1, label %128
    i32 26, label %128
    i32 27, label %128
    i32 28, label %128
    i32 117, label %128
  ]

128:                                              ; preds = %121, %121, %121, %121, %121
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  br label %145

136:                                              ; preds = %128
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = icmp ne %struct.TYPE_19__* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  br label %236

142:                                              ; preds = %136
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  store i32 -1, i32* %144, align 8
  br label %145

145:                                              ; preds = %142, %133
  br label %236

146:                                              ; preds = %121
  br label %147

147:                                              ; preds = %146, %97
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  switch i32 %150, label %163 [
    i32 117, label %151
    i32 118, label %151
    i32 1, label %157
    i32 31, label %157
  ]

151:                                              ; preds = %147, %147
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = bitcast i32* %153 to %struct.TYPE_20__*
  %155 = load i32, i32* @sfx_bdopn, align 4
  %156 = call i32 @S_StartSound(%struct.TYPE_20__* %154, i32 %155)
  br label %169

157:                                              ; preds = %147, %147
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  %160 = bitcast i32* %159 to %struct.TYPE_20__*
  %161 = load i32, i32* @sfx_doropn, align 4
  %162 = call i32 @S_StartSound(%struct.TYPE_20__* %160, i32 %161)
  br label %169

163:                                              ; preds = %147
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = bitcast i32* %165 to %struct.TYPE_20__*
  %167 = load i32, i32* @sfx_doropn, align 4
  %168 = call i32 @S_StartSound(%struct.TYPE_20__* %166, i32 %167)
  br label %169

169:                                              ; preds = %163, %157, %151
  %170 = load i32, i32* @PU_LEVSPEC, align 4
  %171 = call %struct.TYPE_17__* @Z_Malloc(i32 40, i32 %170, i32 0)
  store %struct.TYPE_17__* %171, %struct.TYPE_17__** %8, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 6
  %174 = call i32 @P_AddThinker(%struct.TYPE_15__* %173)
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  store %struct.TYPE_17__* %175, %struct.TYPE_17__** %177, align 8
  %178 = load i64, i64* @T_VerticalDoor, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  store i64 %178, i64* %182, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 5
  store %struct.TYPE_18__* %183, %struct.TYPE_18__** %185, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load i32, i32* @VDOORSPEED, align 4
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @VDOORWAIT, align 4
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  switch i32 %196, label %225 [
    i32 1, label %197
    i32 26, label %197
    i32 27, label %197
    i32 28, label %197
    i32 31, label %201
    i32 32, label %201
    i32 33, label %201
    i32 34, label %201
    i32 117, label %207
    i32 118, label %215
  ]

197:                                              ; preds = %169, %169, %169, %169
  %198 = load i32, i32* @normal, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  br label %225

201:                                              ; preds = %169, %169, %169, %169
  %202 = load i32, i32* @open, align 4
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  store i32 0, i32* %206, align 8
  br label %225

207:                                              ; preds = %169
  %208 = load i32, i32* @blazeRaise, align 4
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* @VDOORSPEED, align 4
  %212 = mul nsw i32 %211, 4
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  br label %225

215:                                              ; preds = %169
  %216 = load i32, i32* @blazeOpen, align 4
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 4
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  store i32 0, i32* %220, align 8
  %221 = load i32, i32* @VDOORSPEED, align 4
  %222 = mul nsw i32 %221, 4
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  br label %225

225:                                              ; preds = %169, %215, %207, %201, %197
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %227 = call i32 @P_FindLowestCeilingSurrounding(%struct.TYPE_18__* %226)
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* @FRACUNIT, align 4
  %231 = mul nsw i32 4, %230
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = sub nsw i32 %234, %231
  store i32 %235, i32* %233, align 8
  br label %236

236:                                              ; preds = %225, %145, %141, %90, %73, %63, %46, %36, %19
  ret void
}

declare dso_local i32 @S_StartSound(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_17__* @Z_Malloc(i32, i32, i32) #1

declare dso_local i32 @P_AddThinker(%struct.TYPE_15__*) #1

declare dso_local i32 @P_FindLowestCeilingSurrounding(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
