; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_setup.c_P_GroupLines.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_setup.c_P_GroupLines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_20__*, %struct.TYPE_20__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32*, %struct.TYPE_17__, %struct.TYPE_21__** }
%struct.TYPE_17__ = type { i32, i32 }

@subsectors = common dso_local global %struct.TYPE_18__* null, align 8
@numsubsectors = common dso_local global i32 0, align 4
@segs = common dso_local global %struct.TYPE_19__* null, align 8
@lines = common dso_local global %struct.TYPE_21__* null, align 8
@numlines = common dso_local global i32 0, align 4
@PU_LEVEL = common dso_local global i32 0, align 4
@sectors = common dso_local global %struct.TYPE_20__* null, align 8
@numsectors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"P_GroupLines: miscounted\00", align 1
@BOXRIGHT = common dso_local global i64 0, align 8
@BOXLEFT = common dso_local global i64 0, align 8
@BOXTOP = common dso_local global i64 0, align 8
@BOXBOTTOM = common dso_local global i64 0, align 8
@bmaporgy = common dso_local global i32 0, align 4
@MAXRADIUS = common dso_local global i32 0, align 4
@MAPBLOCKSHIFT = common dso_local global i32 0, align 4
@bmapheight = common dso_local global i32 0, align 4
@bmaporgx = common dso_local global i32 0, align 4
@bmapwidth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_GroupLines() #0 {
  %1 = alloca %struct.TYPE_21__**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** @subsectors, align 8
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %7, align 8
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %29, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @numsubsectors, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** @segs, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i64 %20
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %8, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 1
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %7, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** @lines, align 8
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %5, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %71, %34
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @numlines, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %50, align 8
  %52 = icmp ne %struct.TYPE_20__* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %40
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = icmp ne %struct.TYPE_20__* %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %61, %53, %40
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %2, align 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 1
  store %struct.TYPE_21__* %75, %struct.TYPE_21__** %5, align 8
  br label %36

76:                                               ; preds = %36
  %77 = load i32, i32* %4, align 4
  %78 = mul nsw i32 %77, 4
  %79 = load i32, i32* @PU_LEVEL, align 4
  %80 = call %struct.TYPE_21__** @Z_Malloc(i32 %78, i32 %79, i32 0)
  store %struct.TYPE_21__** %80, %struct.TYPE_21__*** %1, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sectors, align 8
  store %struct.TYPE_20__* %81, %struct.TYPE_20__** %6, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %276, %76
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @numsectors, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %281

86:                                               ; preds = %82
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %88 = call i32 @M_ClearBox(i32* %87)
  %89 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 3
  store %struct.TYPE_21__** %89, %struct.TYPE_21__*** %91, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** @lines, align 8
  store %struct.TYPE_21__* %92, %struct.TYPE_21__** %5, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %138, %86
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @numlines, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %143

97:                                               ; preds = %93
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = icmp eq %struct.TYPE_20__* %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %108 = icmp eq %struct.TYPE_20__* %106, %107
  br i1 %108, label %109, label %137

109:                                              ; preds = %103, %97
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %111 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %111, i32 1
  store %struct.TYPE_21__** %112, %struct.TYPE_21__*** %1, align 8
  store %struct.TYPE_21__* %110, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @M_AddToBox(i32* %113, i32 %118, i32 %123)
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @M_AddToBox(i32* %125, i32 %130, i32 %135)
  br label %137

137:                                              ; preds = %109, %103
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %3, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 1
  store %struct.TYPE_21__* %142, %struct.TYPE_21__** %5, align 8
  br label %93

143:                                              ; preds = %93
  %144 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %1, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %146, align 8
  %148 = ptrtoint %struct.TYPE_21__** %144 to i64
  %149 = ptrtoint %struct.TYPE_21__** %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 8
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = icmp ne i64 %151, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %143
  %158 = call i32 @I_Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %143
  %160 = load i64, i64* @BOXRIGHT, align 8
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* @BOXLEFT, align 8
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %162, %165
  %167 = sdiv i32 %166, 2
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 8
  %171 = load i64, i64* @BOXTOP, align 8
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i64, i64* @BOXBOTTOM, align 8
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %173, %176
  %178 = sdiv i32 %177, 2
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  %182 = load i64, i64* @BOXTOP, align 8
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @bmaporgy, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load i32, i32* @MAXRADIUS, align 4
  %188 = add nsw i32 %186, %187
  %189 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %190 = ashr i32 %188, %189
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @bmapheight, align 4
  %193 = icmp sge i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %159
  %195 = load i32, i32* @bmapheight, align 4
  %196 = sub nsw i32 %195, 1
  br label %199

197:                                              ; preds = %159
  %198 = load i32, i32* %10, align 4
  br label %199

199:                                              ; preds = %197, %194
  %200 = phi i32 [ %196, %194 ], [ %198, %197 ]
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @BOXTOP, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32 %201, i32* %206, align 4
  %207 = load i64, i64* @BOXBOTTOM, align 8
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @bmaporgy, align 4
  %211 = sub nsw i32 %209, %210
  %212 = load i32, i32* @MAXRADIUS, align 4
  %213 = sub nsw i32 %211, %212
  %214 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %215 = ashr i32 %213, %214
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %199
  br label %221

219:                                              ; preds = %199
  %220 = load i32, i32* %10, align 4
  br label %221

221:                                              ; preds = %219, %218
  %222 = phi i32 [ 0, %218 ], [ %220, %219 ]
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* @BOXBOTTOM, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32 %223, i32* %228, align 4
  %229 = load i64, i64* @BOXRIGHT, align 8
  %230 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @bmaporgx, align 4
  %233 = sub nsw i32 %231, %232
  %234 = load i32, i32* @MAXRADIUS, align 4
  %235 = add nsw i32 %233, %234
  %236 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %237 = ashr i32 %235, %236
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* @bmapwidth, align 4
  %240 = icmp sge i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %221
  %242 = load i32, i32* @bmapwidth, align 4
  %243 = sub nsw i32 %242, 1
  br label %246

244:                                              ; preds = %221
  %245 = load i32, i32* %10, align 4
  br label %246

246:                                              ; preds = %244, %241
  %247 = phi i32 [ %243, %241 ], [ %245, %244 ]
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* @BOXRIGHT, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 %248, i32* %253, align 4
  %254 = load i64, i64* @BOXLEFT, align 8
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @bmaporgx, align 4
  %258 = sub nsw i32 %256, %257
  %259 = load i32, i32* @MAXRADIUS, align 4
  %260 = sub nsw i32 %258, %259
  %261 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %262 = ashr i32 %260, %261
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %246
  br label %268

266:                                              ; preds = %246
  %267 = load i32, i32* %10, align 4
  br label %268

268:                                              ; preds = %266, %265
  %269 = phi i32 [ 0, %265 ], [ %267, %266 ]
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load i64, i64* @BOXLEFT, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32 %270, i32* %275, align 4
  br label %276

276:                                              ; preds = %268
  %277 = load i32, i32* %2, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %2, align 4
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 1
  store %struct.TYPE_20__* %280, %struct.TYPE_20__** %6, align 8
  br label %82

281:                                              ; preds = %82
  ret void
}

declare dso_local %struct.TYPE_21__** @Z_Malloc(i32, i32, i32) #1

declare dso_local i32 @M_ClearBox(i32*) #1

declare dso_local i32 @M_AddToBox(i32*, i32, i32) #1

declare dso_local i32 @I_Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
