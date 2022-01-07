; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_generateWithRecursiveQuery.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_generateWithRecursiveQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i32, i32* }
%struct.TYPE_31__ = type { i32, i32, i32, i64, i32, i32*, %struct.TYPE_33__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i8**, %struct.TYPE_26__*, %struct.TYPE_29__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_33__* }

@SRT_Fifo = common dso_local global i32 0, align 4
@SQLITE_RECURSIVE = common dso_local global i32 0, align 4
@TK_UNION = common dso_local global i64 0, align 8
@SRT_DistQueue = common dso_local global i32 0, align 4
@SRT_DistFifo = common dso_local global i32 0, align 4
@SRT_Queue = common dso_local global i32 0, align 4
@OP_OpenPseudo = common dso_local global i32 0, align 4
@OP_OpenEphemeral = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Queue table\00", align 1
@SF_UsesEphemeral = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_NullRow = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_RowData = common dso_local global i32 0, align 4
@OP_Delete = common dso_local global i32 0, align 4
@OP_DecrJumpZero = common dso_local global i32 0, align 4
@SF_Aggregate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"recursive aggregate queries not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_30__*)* @generateWithRecursiveQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateWithRecursiveQuery(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_30__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_33__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %6, align 8
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i32 0, i32 11
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  store %struct.TYPE_29__* %29, %struct.TYPE_29__** %7, align 8
  %30 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %30, i32 0, i32 10
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %9, align 8
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %39, align 8
  store %struct.TYPE_31__* %40, %struct.TYPE_31__** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %41 = load i32, i32* @SRT_Fifo, align 4
  store i32 %41, i32* %18, align 4
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %43 = load i32, i32* @SQLITE_RECURSIVE, align 4
  %44 = call i64 @sqlite3AuthCheck(%struct.TYPE_32__* %42, i32 %43, i32 0, i32 0, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  br label %319

47:                                               ; preds = %3
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @sqlite3VdbeMakeLabel(i32* %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 0
  store i32 320, i32* %51, align 8
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @computeLimitRegisters(%struct.TYPE_32__* %52, %struct.TYPE_31__* %53, i32 %54)
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %23, align 8
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %24, align 4
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %25, align 4
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 5
  store i32* null, i32** %66, align 8
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 6
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %72, align 8
  store %struct.TYPE_33__* %73, %struct.TYPE_33__** %22, align 8
  store i32 0, i32* %20, align 4
  br label %74

74:                                               ; preds = %104, %47
  %75 = load i32, i32* %20, align 4
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @ALWAYS(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %74
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %85, align 8
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %83
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %96, align 8
  %98 = load i32, i32* %20, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %14, align 4
  br label %107

103:                                              ; preds = %83
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %20, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %20, align 4
  br label %74

107:                                              ; preds = %94, %74
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  store i32 %110, i32* %16, align 4
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TK_UNION, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %107
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %119 = icmp ne %struct.TYPE_33__* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* @SRT_DistQueue, align 4
  br label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @SRT_DistFifo, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  store i32 %125, i32* %18, align 4
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  store i32 %128, i32* %17, align 4
  br label %139

130:                                              ; preds = %107
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %132 = icmp ne %struct.TYPE_33__* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* @SRT_Queue, align 4
  br label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @SRT_Fifo, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  store i32 %138, i32* %18, align 4
  br label %139

139:                                              ; preds = %137, %124
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @sqlite3SelectDestInit(%struct.TYPE_30__* %19, i32 %140, i32 %141)
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  store i32 %146, i32* %15, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* @OP_OpenPseudo, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @sqlite3VdbeAddOp3(i32* %147, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %154 = icmp ne %struct.TYPE_33__* %153, null
  br i1 %154, label %155, label %172

155:                                              ; preds = %139
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %158 = call i32* @multiSelectOrderByKeyInfo(%struct.TYPE_32__* %156, %struct.TYPE_31__* %157, i32 1)
  store i32* %158, i32** %26, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* @OP_OpenEphemeral, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %163 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 2
  %166 = load i32*, i32** %26, align 8
  %167 = bitcast i32* %166 to i8*
  %168 = load i32, i32* @P4_KEYINFO, align 4
  %169 = call i32 @sqlite3VdbeAddOp4(i32* %159, i32 %160, i32 %161, i32 %165, i32 0, i8* %167, i32 %168)
  %170 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 0
  store %struct.TYPE_33__* %170, %struct.TYPE_33__** %171, align 8
  br label %178

172:                                              ; preds = %139
  %173 = load i32*, i32** %9, align 8
  %174 = load i32, i32* @OP_OpenEphemeral, align 4
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i8* @sqlite3VdbeAddOp2(i32* %173, i32 %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %172, %155
  %179 = load i32*, i32** %9, align 8
  %180 = call i32 @VdbeComment(i32* bitcast ([12 x i8]* @.str to i32*))
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %178
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* @OP_OpenEphemeral, align 4
  %186 = load i32, i32* %17, align 4
  %187 = call i8* @sqlite3VdbeAddOp2(i32* %184, i32 %185, i32 %186, i32 0)
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 9
  %190 = load i8**, i8*** %189, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 0
  store i8* %187, i8** %191, align 8
  %192 = load i32, i32* @SF_UsesEphemeral, align 4
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %183, %178
  %198 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %198, i32 0, i32 6
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %199, align 8
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %201, align 8
  %202 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %204 = call i32 @sqlite3Select(%struct.TYPE_32__* %202, %struct.TYPE_31__* %203, %struct.TYPE_30__* %19)
  store i32 %204, i32* %21, align 4
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %206, i32 0, i32 8
  store %struct.TYPE_31__* %205, %struct.TYPE_31__** %207, align 8
  %208 = load i32, i32* %21, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %197
  br label %305

211:                                              ; preds = %197
  %212 = load i32*, i32** %9, align 8
  %213 = load i32, i32* @OP_Rewind, align 4
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %13, align 4
  %216 = call i8* @sqlite3VdbeAddOp2(i32* %212, i32 %213, i32 %214, i32 %215)
  %217 = ptrtoint i8* %216 to i32
  store i32 %217, i32* %11, align 4
  %218 = load i32*, i32** %9, align 8
  %219 = call i32 @VdbeCoverage(i32* %218)
  %220 = load i32*, i32** %9, align 8
  %221 = load i32, i32* @OP_NullRow, align 4
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @sqlite3VdbeAddOp1(i32* %220, i32 %221, i32 %222)
  %224 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %225 = icmp ne %struct.TYPE_33__* %224, null
  br i1 %225, label %226, label %236

226:                                              ; preds = %211
  %227 = load i32*, i32** %9, align 8
  %228 = load i32, i32* @OP_Column, align 4
  %229 = load i32, i32* %16, align 4
  %230 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %231 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @sqlite3VdbeAddOp3(i32* %227, i32 %228, i32 %229, i32 %233, i32 %234)
  br label %242

236:                                              ; preds = %211
  %237 = load i32*, i32** %9, align 8
  %238 = load i32, i32* @OP_RowData, align 4
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %15, align 4
  %241 = call i8* @sqlite3VdbeAddOp2(i32* %237, i32 %238, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %236, %226
  %243 = load i32*, i32** %9, align 8
  %244 = load i32, i32* @OP_Delete, align 4
  %245 = load i32, i32* %16, align 4
  %246 = call i32 @sqlite3VdbeAddOp1(i32* %243, i32 %244, i32 %245)
  %247 = load i32*, i32** %9, align 8
  %248 = call i32 @sqlite3VdbeMakeLabel(i32* %247)
  store i32 %248, i32* %12, align 4
  %249 = load i32*, i32** %9, align 8
  %250 = load i32, i32* %25, align 4
  %251 = load i32, i32* %12, align 4
  %252 = call i32 @codeOffset(i32* %249, i32 %250, i32 %251)
  %253 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %254 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %255 = load i32, i32* %14, align 4
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* %13, align 4
  %259 = call i32 @selectInnerLoop(%struct.TYPE_32__* %253, %struct.TYPE_31__* %254, i32 %255, i32 0, i32 0, %struct.TYPE_30__* %256, i32 %257, i32 %258)
  %260 = load i32, i32* %24, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %242
  %263 = load i32*, i32** %9, align 8
  %264 = load i32, i32* @OP_DecrJumpZero, align 4
  %265 = load i32, i32* %24, align 4
  %266 = load i32, i32* %13, align 4
  %267 = call i8* @sqlite3VdbeAddOp2(i32* %263, i32 %264, i32 %265, i32 %266)
  %268 = load i32*, i32** %9, align 8
  %269 = call i32 @VdbeCoverage(i32* %268)
  br label %270

270:                                              ; preds = %262, %242
  %271 = load i32*, i32** %9, align 8
  %272 = load i32, i32* %12, align 4
  %273 = call i32 @sqlite3VdbeResolveLabel(i32* %271, i32 %272)
  %274 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @SF_Aggregate, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %270
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %282 = call i32 @sqlite3ErrorMsg(%struct.TYPE_32__* %281, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %298

283:                                              ; preds = %270
  %284 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %284, i32 0, i32 7
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %285, align 8
  %286 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %287 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %288 = call i32 @sqlite3Select(%struct.TYPE_32__* %286, %struct.TYPE_31__* %287, %struct.TYPE_30__* %19)
  %289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 7
  %291 = load %struct.TYPE_31__*, %struct.TYPE_31__** %290, align 8
  %292 = icmp eq %struct.TYPE_31__* %291, null
  %293 = zext i1 %292 to i32
  %294 = call i32 @assert(i32 %293)
  %295 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %296 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %296, i32 0, i32 7
  store %struct.TYPE_31__* %295, %struct.TYPE_31__** %297, align 8
  br label %298

298:                                              ; preds = %283, %280
  %299 = load i32*, i32** %9, align 8
  %300 = load i32, i32* %11, align 4
  %301 = call i32 @sqlite3VdbeGoto(i32* %299, i32 %300)
  %302 = load i32*, i32** %9, align 8
  %303 = load i32, i32* %13, align 4
  %304 = call i32 @sqlite3VdbeResolveLabel(i32* %302, i32 %303)
  br label %305

305:                                              ; preds = %298, %210
  %306 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %309, i32 0, i32 6
  %311 = load %struct.TYPE_33__*, %struct.TYPE_33__** %310, align 8
  %312 = call i32 @sqlite3ExprListDelete(i32 %308, %struct.TYPE_33__* %311)
  %313 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %314, i32 0, i32 6
  store %struct.TYPE_33__* %313, %struct.TYPE_33__** %315, align 8
  %316 = load i32*, i32** %23, align 8
  %317 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %317, i32 0, i32 5
  store i32* %316, i32** %318, align 8
  br label %319

319:                                              ; preds = %305, %46
  ret void
}

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_32__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @computeLimitRegisters(%struct.TYPE_32__*, %struct.TYPE_31__*, i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i32 @sqlite3SelectDestInit(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @multiSelectOrderByKeyInfo(%struct.TYPE_32__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i8* @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3Select(%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @codeOffset(i32*, i32, i32) #1

declare dso_local i32 @selectInnerLoop(%struct.TYPE_32__*, %struct.TYPE_31__*, i32, i32, i32, %struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3ExprListDelete(i32, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
