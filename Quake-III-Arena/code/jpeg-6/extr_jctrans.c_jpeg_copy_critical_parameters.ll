; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jctrans.c_jpeg_copy_critical_parameters.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jctrans.c_jpeg_copy_critical_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_15__**, %struct.TYPE_12__*, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_12__*, %struct.TYPE_15__**, i32, i32, i32, i32, i32 }

@CSTATE_START = common dso_local global i64 0, align 8
@JERR_BAD_STATE = common dso_local global i32 0, align 4
@NUM_QUANT_TBLS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MAX_COMPONENTS = common dso_local global i32 0, align 4
@JERR_COMPONENT_COUNT = common dso_local global i32 0, align 4
@JERR_NO_QUANT_TABLE = common dso_local global i32 0, align 4
@DCTSIZE2 = common dso_local global i32 0, align 4
@JERR_MISMATCHED_QUANT_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jpeg_copy_critical_parameters(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CSTATE_START, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = load i32, i32* @JERR_BAD_STATE, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @ERREXIT1(%struct.TYPE_14__* %19, i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %18, %2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = call i32 @jpeg_set_defaults(%struct.TYPE_14__* %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @jpeg_set_colorspace(%struct.TYPE_14__* %49, i32 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %117, %26
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @NUM_QUANT_TBLS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %120

68:                                               ; preds = %64
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %71, i64 %73
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = icmp ne %struct.TYPE_15__* %75, null
  br i1 %76, label %77, label %116

77:                                               ; preds = %68
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %80, i64 %82
  store %struct.TYPE_15__** %83, %struct.TYPE_15__*** %5, align 8
  %84 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = icmp eq %struct.TYPE_15__* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %77
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = ptrtoint %struct.TYPE_14__* %88 to i32
  %90 = call %struct.TYPE_15__* @jpeg_alloc_quant_table(i32 %89)
  %91 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  store %struct.TYPE_15__* %90, %struct.TYPE_15__** %91, align 8
  br label %92

92:                                               ; preds = %87, %77
  %93 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %99, i64 %101
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = call i32 @SIZEOF(i64* %109)
  %111 = call i32 @MEMCOPY(i64* %96, i64* %105, i32 %110)
  %112 = load i32, i32* @FALSE, align 4
  %113 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 8
  br label %116

116:                                              ; preds = %92, %68
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %64

120:                                              ; preds = %64
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %136, label %130

130:                                              ; preds = %120
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MAX_COMPONENTS, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %130, %120
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = load i32, i32* @JERR_COMPONENT_COUNT, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @MAX_COMPONENTS, align 4
  %143 = call i32 @ERREXIT2(%struct.TYPE_14__* %137, i32 %138, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %136, %130
  store i32 0, i32* %11, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  store %struct.TYPE_12__* %147, %struct.TYPE_12__** %6, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  store %struct.TYPE_12__* %150, %struct.TYPE_12__** %7, align 8
  br label %151

151:                                              ; preds = %246, %144
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %253

157:                                              ; preds = %151
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %157
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @NUM_QUANT_TBLS, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %196, label %187

187:                                              ; preds = %183
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %190, i64 %192
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %193, align 8
  %195 = icmp eq %struct.TYPE_15__* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %187, %183, %157
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = load i32, i32* @JERR_NO_QUANT_TABLE, align 4
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @ERREXIT1(%struct.TYPE_14__* %197, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %196, %187
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %203, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %204, i64 %206
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  store %struct.TYPE_15__* %208, %struct.TYPE_15__** %9, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %210, align 8
  store %struct.TYPE_15__* %211, %struct.TYPE_15__** %8, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %213 = icmp ne %struct.TYPE_15__* %212, null
  br i1 %213, label %214, label %245

214:                                              ; preds = %201
  store i32 0, i32* %12, align 4
  br label %215

215:                                              ; preds = %241, %214
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* @DCTSIZE2, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %244

219:                                              ; preds = %215
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i64*, i64** %228, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %226, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %219
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %237 = load i32, i32* @JERR_MISMATCHED_QUANT_TABLE, align 4
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @ERREXIT1(%struct.TYPE_14__* %236, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %235, %219
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %12, align 4
  br label %215

244:                                              ; preds = %215
  br label %245

245:                                              ; preds = %244, %201
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %11, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %11, align 4
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 1
  store %struct.TYPE_12__* %250, %struct.TYPE_12__** %6, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 1
  store %struct.TYPE_12__* %252, %struct.TYPE_12__** %7, align 8
  br label %151

253:                                              ; preds = %151
  ret void
}

declare dso_local i32 @ERREXIT1(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @jpeg_set_defaults(%struct.TYPE_14__*) #1

declare dso_local i32 @jpeg_set_colorspace(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_15__* @jpeg_alloc_quant_table(i32) #1

declare dso_local i32 @MEMCOPY(i64*, i64*, i32) #1

declare dso_local i32 @SIZEOF(i64*) #1

declare dso_local i32 @ERREXIT2(%struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
