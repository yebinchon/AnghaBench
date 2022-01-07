; ModuleID = '/home/carl/AnghaBench/capstone/arch/MOS65XX/extr_MOS65XXDisassembler.c_fillDetails.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/MOS65XX/extr_MOS65XXDisassembler.c_fillDetails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64*, i64*, i64*, %struct.TYPE_13__, i64, i64, i64 }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32, i32, i8* }

@OpInfoTable = common dso_local global %struct.TYPE_16__* null, align 8
@InstructionInfoTable = common dso_local global %struct.TYPE_17__* null, align 8
@MOS65XX_GRP_INVALID = common dso_local global i64 0, align 8
@MOS65XX_REG_INVALID = common dso_local global i64 0, align 8
@MOS65XX_REG_ACC = common dso_local global i8* null, align 8
@MOS65XX_AM_INDY = common dso_local global i64 0, align 8
@MOS65XX_AM_ABSY = common dso_local global i64 0, align 8
@MOS65XX_AM_ZPY = common dso_local global i64 0, align 8
@MOS65XX_REG_Y = common dso_local global i64 0, align 8
@MOS65XX_AM_INDX = common dso_local global i64 0, align 8
@MOS65XX_AM_ABSX = common dso_local global i64 0, align 8
@MOS65XX_AM_ZPX = common dso_local global i64 0, align 8
@MOS65XX_REG_X = common dso_local global i64 0, align 8
@MOS65XX_REG_P = common dso_local global i64 0, align 8
@MOS65XX_OP_IMM = common dso_local global i32 0, align 4
@MOS65XX_OP_REG = common dso_local global i32 0, align 4
@MOS65XX_OP_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i8)* @fillDetails to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fillDetails(%struct.TYPE_15__* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** @OpInfoTable, align 8
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** @OpInfoTable, align 8
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** @InstructionInfoTable, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  store i64 %33, i64* %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** @InstructionInfoTable, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MOS65XX_GRP_INVALID, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %2
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** @InstructionInfoTable, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %58, i64* %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %53, %2
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** @InstructionInfoTable, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MOS65XX_REG_INVALID, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** @InstructionInfoTable, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = getelementptr inbounds i64, i64* %83, i64 %86
  store i64 %80, i64* %88, align 8
  br label %191

89:                                               ; preds = %67
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** @OpInfoTable, align 8
  %91 = load i8, i8* %4, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 131
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = load i8*, i8** @MOS65XX_REG_ACC, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = getelementptr inbounds i64, i64* %102, i64 %105
  store i64 %99, i64* %107, align 8
  br label %190

108:                                              ; preds = %89
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** @OpInfoTable, align 8
  %110 = load i8, i8* %4, align 1
  %111 = zext i8 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* @MOS65XX_AM_INDY, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %138, label %118

118:                                              ; preds = %108
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** @OpInfoTable, align 8
  %120 = load i8, i8* %4, align 1
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* @MOS65XX_AM_ABSY, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %138, label %128

128:                                              ; preds = %118
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** @OpInfoTable, align 8
  %130 = load i8, i8* %4, align 1
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* @MOS65XX_AM_ZPY, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %128, %118, %108
  %139 = load i64, i64* @MOS65XX_REG_Y, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %144, align 8
  %147 = getelementptr inbounds i64, i64* %142, i64 %145
  store i64 %139, i64* %147, align 8
  br label %189

148:                                              ; preds = %128
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** @OpInfoTable, align 8
  %150 = load i8, i8* %4, align 1
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* @MOS65XX_AM_INDX, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %178, label %158

158:                                              ; preds = %148
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** @OpInfoTable, align 8
  %160 = load i8, i8* %4, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* @MOS65XX_AM_ABSX, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %178, label %168

168:                                              ; preds = %158
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** @OpInfoTable, align 8
  %170 = load i8, i8* %4, align 1
  %171 = zext i8 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* @MOS65XX_AM_ZPX, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %168, %158, %148
  %179 = load i64, i64* @MOS65XX_REG_X, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %184, align 8
  %187 = getelementptr inbounds i64, i64* %182, i64 %185
  store i64 %179, i64* %187, align 8
  br label %188

188:                                              ; preds = %178, %168
  br label %189

189:                                              ; preds = %188, %138
  br label %190

190:                                              ; preds = %189, %97
  br label %191

191:                                              ; preds = %190, %75
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** @InstructionInfoTable, align 8
  %193 = load i64, i64* %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @MOS65XX_REG_INVALID, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %191
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** @InstructionInfoTable, align 8
  %201 = load i64, i64* %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 2
  %207 = load i64*, i64** %206, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %209, align 8
  %212 = getelementptr inbounds i64, i64* %207, i64 %210
  store i64 %204, i64* %212, align 8
  br label %233

213:                                              ; preds = %191
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** @OpInfoTable, align 8
  %215 = load i8, i8* %4, align 1
  %216 = zext i8 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 131
  br i1 %220, label %221, label %232

221:                                              ; preds = %213
  %222 = load i8*, i8** @MOS65XX_REG_ACC, align 8
  %223 = ptrtoint i8* %222 to i64
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 2
  %226 = load i64*, i64** %225, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %228, align 8
  %231 = getelementptr inbounds i64, i64* %226, i64 %229
  store i64 %223, i64* %231, align 8
  br label %232

232:                                              ; preds = %221, %213
  br label %233

233:                                              ; preds = %232, %199
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** @InstructionInfoTable, align 8
  %235 = load i64, i64* %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %233
  %241 = load i64, i64* @MOS65XX_REG_P, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 2
  %244 = load i64*, i64** %243, align 8
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, 1
  store i64 %248, i64* %246, align 8
  %249 = getelementptr inbounds i64, i64* %244, i64 %247
  store i64 %241, i64* %249, align 8
  br label %250

250:                                              ; preds = %240, %233
  %251 = load i32, i32* %7, align 4
  switch i32 %251, label %314 [
    i32 129, label %252
    i32 128, label %252
    i32 130, label %253
    i32 131, label %286
  ]

252:                                              ; preds = %250, %250
  br label %347

253:                                              ; preds = %250
  %254 = load i32, i32* @MOS65XX_OP_IMM, align 4
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  store i32 %254, i32* %264, align 4
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i64 0
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 0
  store i32 %270, i32* %280, align 8
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %283, align 8
  br label %347

286:                                              ; preds = %250
  %287 = load i32, i32* @MOS65XX_OP_REG, align 4
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 2
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %290, align 8
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 1
  store i32 %287, i32* %297, align 4
  %298 = load i8*, i8** @MOS65XX_REG_ACC, align 8
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %301, align 8
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 2
  store i8* %298, i8** %308, align 8
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %311, align 8
  br label %347

314:                                              ; preds = %250
  %315 = load i32, i32* @MOS65XX_OP_MEM, align 4
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 2
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %318, align 8
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 1
  store i32 %315, i32* %325, align 4
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i64 0
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 2
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %334, align 8
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 0
  store i32 %331, i32* %341, align 8
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = add i64 %345, 1
  store i64 %346, i64* %344, align 8
  br label %347

347:                                              ; preds = %314, %286, %253, %252
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
