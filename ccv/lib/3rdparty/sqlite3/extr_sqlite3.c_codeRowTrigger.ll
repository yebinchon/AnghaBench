; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_codeRowTrigger.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_codeRowTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i32*, %struct.TYPE_35__*, %struct.TYPE_37__*, %struct.TYPE_34__* }
%struct.TYPE_37__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_38__ = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_34__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_38__*, %struct.TYPE_36__*, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_35__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__* }

@.str = private unnamed_addr constant [31 x i8] c"Start: %s.%s (%s %s%s%s ON %s)\00", align 1
@TRIGGER_BEFORE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"BEFORE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"AFTER\00", align 1
@TK_UPDATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TK_INSERT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@TK_DELETE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"-- TRIGGER %s\00", align 1
@P4_DYNAMIC = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@OP_Halt = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"End: %s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_34__* (%struct.TYPE_38__*, %struct.TYPE_35__*, %struct.TYPE_36__*, i32)* @codeRowTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_34__* @codeRowTrigger(%struct.TYPE_38__* %0, %struct.TYPE_35__* %1, %struct.TYPE_36__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_38__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_39__, align 8
  %16 = alloca %struct.TYPE_37__*, align 8
  %17 = alloca %struct.TYPE_38__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %6, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_36__* %2, %struct.TYPE_36__** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %20 = call %struct.TYPE_38__* @sqlite3ParseToplevel(%struct.TYPE_38__* %19)
  store %struct.TYPE_38__* %20, %struct.TYPE_38__** %10, align 8
  %21 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %21, i32 0, i32 15
  %23 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  store %struct.TYPE_33__* %23, %struct.TYPE_33__** %11, align 8
  store i32* null, i32** %13, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %16, align 8
  store i32 0, i32* %18, align 4
  %24 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %30 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %31 = call %struct.TYPE_36__* @tableOfTrigger(%struct.TYPE_35__* %30)
  %32 = icmp eq %struct.TYPE_36__* %29, %31
  br label %33

33:                                               ; preds = %28, %4
  %34 = phi i1 [ true, %4 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %42 = call i8* @sqlite3DbMallocZero(%struct.TYPE_33__* %41, i32 40)
  %43 = bitcast i8* %42 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %43, %struct.TYPE_34__** %12, align 8
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %45 = icmp ne %struct.TYPE_34__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %5, align 8
  br label %320

47:                                               ; preds = %33
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %49, align 8
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %51, i32 0, i32 4
  store %struct.TYPE_34__* %50, %struct.TYPE_34__** %52, align 8
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %54 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %54, i32 0, i32 6
  store %struct.TYPE_34__* %53, %struct.TYPE_34__** %55, align 8
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %57 = call i8* @sqlite3DbMallocZero(%struct.TYPE_33__* %56, i32 24)
  %58 = bitcast i8* %57 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %58, %struct.TYPE_37__** %16, align 8
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 3
  store %struct.TYPE_37__* %58, %struct.TYPE_37__** %60, align 8
  %61 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %62 = icmp ne %struct.TYPE_37__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %47
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %5, align 8
  br label %320

64:                                               ; preds = %47
  %65 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %69 = call i32 @sqlite3VdbeLinkSubProgram(i32 %67, %struct.TYPE_37__* %68)
  %70 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %71, i32 0, i32 2
  store %struct.TYPE_35__* %70, %struct.TYPE_35__** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 -1, i32* %79, align 4
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 -1, i32* %83, align 4
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %85 = call %struct.TYPE_38__* @sqlite3StackAllocZero(%struct.TYPE_33__* %84, i32 96)
  store %struct.TYPE_38__* %85, %struct.TYPE_38__** %17, align 8
  %86 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %87 = icmp ne %struct.TYPE_38__* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %64
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %5, align 8
  br label %320

89:                                               ; preds = %64
  %90 = call i32 @memset(%struct.TYPE_39__* %15, i32 0, i32 8)
  %91 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 0
  store %struct.TYPE_38__* %91, %struct.TYPE_38__** %92, align 8
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %94 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %94, i32 0, i32 15
  store %struct.TYPE_33__* %93, %struct.TYPE_33__** %95, align 8
  %96 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %97 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %97, i32 0, i32 14
  store %struct.TYPE_36__* %96, %struct.TYPE_36__** %98, align 8
  %99 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %100 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %100, i32 0, i32 13
  store %struct.TYPE_38__* %99, %struct.TYPE_38__** %101, align 8
  %102 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %105, i32 0, i32 12
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %112, i32 0, i32 11
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %115, i32 0, i32 11
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %118 = call i32* @sqlite3GetVdbe(%struct.TYPE_38__* %117)
  store i32* %118, i32** %14, align 8
  %119 = load i32*, i32** %14, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %285

121:                                              ; preds = %89
  %122 = load i32*, i32** %14, align 8
  %123 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @onErrorText(i32 %126)
  %128 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TRIGGER_BEFORE, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %135 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @TK_UPDATE, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TK_INSERT, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %149 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @TK_DELETE, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i32*
  %161 = call i32 @VdbeComment(i32* %160)
  %162 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %121
  %167 = load i32*, i32** %14, align 8
  %168 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %169 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @sqlite3MPrintf(%struct.TYPE_33__* %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @P4_DYNAMIC, align 4
  %174 = call i32 @sqlite3VdbeChangeP4(i32* %167, i32 -1, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %166, %121
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %207

180:                                              ; preds = %175
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %182 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = call i32* @sqlite3ExprDup(%struct.TYPE_33__* %181, i32 %184, i32 0)
  store i32* %185, i32** %13, align 8
  %186 = load i64, i64* @SQLITE_OK, align 8
  %187 = load i32*, i32** %13, align 8
  %188 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_39__* %15, i32* %187)
  %189 = icmp eq i64 %186, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %180
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %190
  %196 = load i32*, i32** %14, align 8
  %197 = call i32 @sqlite3VdbeMakeLabel(i32* %196)
  store i32 %197, i32* %18, align 4
  %198 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %202 = call i32 @sqlite3ExprIfFalse(%struct.TYPE_38__* %198, i32* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %195, %190, %180
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %205 = load i32*, i32** %13, align 8
  %206 = call i32 @sqlite3ExprDelete(%struct.TYPE_33__* %204, i32* %205)
  br label %207

207:                                              ; preds = %203, %175
  %208 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @codeTriggerProgram(%struct.TYPE_38__* %208, i32 %211, i32 %212)
  %214 = load i32, i32* %18, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %207
  %217 = load i32*, i32** %14, align 8
  %218 = load i32, i32* %18, align 4
  %219 = call i32 @sqlite3VdbeResolveLabel(i32* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %207
  %221 = load i32*, i32** %14, align 8
  %222 = load i32, i32* @OP_Halt, align 4
  %223 = call i32 @sqlite3VdbeAddOp0(i32* %221, i32 %222)
  %224 = load i32*, i32** %14, align 8
  %225 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @onErrorText(i32 %228)
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to i32*
  %232 = call i32 @VdbeComment(i32* %231)
  %233 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %234 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %235 = call i32 @transferParseError(%struct.TYPE_38__* %233, %struct.TYPE_38__* %234)
  %236 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %220
  %241 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %240
  %246 = load i32*, i32** %14, align 8
  %247 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %248 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %249, i32 0, i32 5
  %251 = call i32 @sqlite3VdbeTakeOpArray(i32* %246, i32* %248, i32* %250)
  %252 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %252, i32 0, i32 4
  store i32 %251, i32* %253, align 4
  br label %254

254:                                              ; preds = %245, %240, %220
  %255 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %256 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %255, i32 0, i32 10
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 4
  %260 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %261 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %260, i32 0, i32 9
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %264 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 8
  %265 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %266 = bitcast %struct.TYPE_35__* %265 to i8*
  %267 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %268 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %267, i32 0, i32 0
  store i8* %266, i8** %268, align 8
  %269 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %270 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  store i32 %271, i32* %275, align 4
  %276 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %277 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  store i32 %278, i32* %282, align 4
  %283 = load i32*, i32** %14, align 8
  %284 = call i32 @sqlite3VdbeDelete(i32* %283)
  br label %285

285:                                              ; preds = %254, %89
  %286 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %287 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %286, i32 0, i32 8
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %296, label %290

290:                                              ; preds = %285
  %291 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %292 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  %295 = xor i1 %294, true
  br label %296

296:                                              ; preds = %290, %285
  %297 = phi i1 [ false, %285 ], [ %295, %290 ]
  %298 = zext i1 %297 to i32
  %299 = call i32 @assert(i32 %298)
  %300 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %301 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %300, i32 0, i32 6
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %301, align 8
  %303 = icmp ne %struct.TYPE_34__* %302, null
  br i1 %303, label %310, label %304

304:                                              ; preds = %296
  %305 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %306 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  %309 = xor i1 %308, true
  br label %310

310:                                              ; preds = %304, %296
  %311 = phi i1 [ false, %296 ], [ %309, %304 ]
  %312 = zext i1 %311 to i32
  %313 = call i32 @assert(i32 %312)
  %314 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %315 = call i32 @sqlite3ParserReset(%struct.TYPE_38__* %314)
  %316 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %317 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %318 = call i32 @sqlite3StackFree(%struct.TYPE_33__* %316, %struct.TYPE_38__* %317)
  %319 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  store %struct.TYPE_34__* %319, %struct.TYPE_34__** %5, align 8
  br label %320

320:                                              ; preds = %310, %88, %63, %46
  %321 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  ret %struct.TYPE_34__* %321
}

declare dso_local %struct.TYPE_38__* @sqlite3ParseToplevel(%struct.TYPE_38__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_36__* @tableOfTrigger(%struct.TYPE_35__*) #1

declare dso_local i8* @sqlite3DbMallocZero(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @sqlite3VdbeLinkSubProgram(i32, %struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_38__* @sqlite3StackAllocZero(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_39__*, i32, i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_38__*) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @onErrorText(i32) #1

declare dso_local i32 @sqlite3VdbeChangeP4(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3MPrintf(%struct.TYPE_33__*, i8*, i32) #1

declare dso_local i32* @sqlite3ExprDup(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i64 @sqlite3ResolveExprNames(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3ExprIfFalse(%struct.TYPE_38__*, i32*, i32, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_33__*, i32*) #1

declare dso_local i32 @codeTriggerProgram(%struct.TYPE_38__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @transferParseError(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @sqlite3VdbeTakeOpArray(i32*, i32*, i32*) #1

declare dso_local i32 @sqlite3VdbeDelete(i32*) #1

declare dso_local i32 @sqlite3ParserReset(%struct.TYPE_38__*) #1

declare dso_local i32 @sqlite3StackFree(%struct.TYPE_33__*, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
