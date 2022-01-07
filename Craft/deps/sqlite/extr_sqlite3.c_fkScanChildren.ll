; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_fkScanChildren.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_fkScanChildren.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_52__ = type { %struct.TYPE_49__* }
%struct.TYPE_49__ = type { %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i8* }
%struct.TYPE_51__ = type { %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i32 }
%struct.TYPE_50__ = type { i32, %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i8*, i8*, i8* }
%struct.TYPE_54__ = type { i32*, %struct.TYPE_50__* }
%struct.TYPE_42__ = type { i64, i32, %struct.TYPE_50__*, %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_43__ = type { i32, i32, i8* }
%struct.TYPE_53__ = type { %struct.TYPE_52__*, %struct.TYPE_51__* }
%struct.TYPE_45__ = type { i32 }

@OP_FkIfZero = common dso_local global i32 0, align 4
@TK_REGISTER = common dso_local global i32 0, align 4
@SQLITE_AFF_INTEGER = common dso_local global i8* null, align 8
@TK_ID = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i32 0, align 4
@TK_NE = common dso_local global i32 0, align 4
@OP_FkCounter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_52__*, %struct.TYPE_51__*, %struct.TYPE_50__*, %struct.TYPE_54__*, %struct.TYPE_42__*, i32*, i32, i32)* @fkScanChildren to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fkScanChildren(%struct.TYPE_52__* %0, %struct.TYPE_51__* %1, %struct.TYPE_50__* %2, %struct.TYPE_54__* %3, %struct.TYPE_42__* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_52__*, align 8
  %10 = alloca %struct.TYPE_51__*, align 8
  %11 = alloca %struct.TYPE_50__*, align 8
  %12 = alloca %struct.TYPE_54__*, align 8
  %13 = alloca %struct.TYPE_42__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_49__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_43__*, align 8
  %20 = alloca %struct.TYPE_53__, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_43__*, align 8
  %25 = alloca %struct.TYPE_43__*, align 8
  %26 = alloca %struct.TYPE_43__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_44__*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.TYPE_43__*, align 8
  %32 = alloca %struct.TYPE_43__*, align 8
  %33 = alloca %struct.TYPE_43__*, align 8
  store %struct.TYPE_52__* %0, %struct.TYPE_52__** %9, align 8
  store %struct.TYPE_51__* %1, %struct.TYPE_51__** %10, align 8
  store %struct.TYPE_50__* %2, %struct.TYPE_50__** %11, align 8
  store %struct.TYPE_54__* %3, %struct.TYPE_54__** %12, align 8
  store %struct.TYPE_42__* %4, %struct.TYPE_42__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %34 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_49__*, %struct.TYPE_49__** %35, align 8
  store %struct.TYPE_49__* %36, %struct.TYPE_49__** %17, align 8
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %19, align 8
  store i32 0, i32* %22, align 4
  %37 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %38 = call i32* @sqlite3GetVdbe(%struct.TYPE_52__* %37)
  store i32* %38, i32** %23, align 8
  %39 = load %struct.TYPE_54__*, %struct.TYPE_54__** %12, align 8
  %40 = icmp ne %struct.TYPE_54__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %8
  %42 = load %struct.TYPE_54__*, %struct.TYPE_54__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_50__*, %struct.TYPE_50__** %43, align 8
  %45 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %46 = icmp eq %struct.TYPE_50__* %44, %45
  br label %47

47:                                               ; preds = %41, %8
  %48 = phi i1 [ true, %8 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32*, i32** %23, align 8
  %55 = load i32, i32* @OP_FkIfZero, align 4
  %56 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @sqlite3VdbeAddOp2(i32* %54, i32 %55, i64 %58, i32 0)
  store i32 %59, i32* %22, align 4
  br label %60

60:                                               ; preds = %53, %47
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %177, %60
  %62 = load i32, i32* %18, align 4
  %63 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %180

67:                                               ; preds = %61
  %68 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %69 = load i32, i32* @TK_REGISTER, align 4
  %70 = call %struct.TYPE_43__* @sqlite3Expr(%struct.TYPE_49__* %68, i32 %69, i8* null)
  store %struct.TYPE_43__* %70, %struct.TYPE_43__** %24, align 8
  %71 = load %struct.TYPE_43__*, %struct.TYPE_43__** %24, align 8
  %72 = icmp ne %struct.TYPE_43__* %71, null
  br i1 %72, label %73, label %132

73:                                               ; preds = %67
  %74 = load %struct.TYPE_54__*, %struct.TYPE_54__** %12, align 8
  %75 = icmp ne %struct.TYPE_54__* %74, null
  br i1 %75, label %76, label %124

76:                                               ; preds = %73
  %77 = load %struct.TYPE_54__*, %struct.TYPE_54__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %27, align 4
  %84 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_44__*, %struct.TYPE_44__** %85, align 8
  %87 = load i32, i32* %27, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %86, i64 %88
  store %struct.TYPE_44__* %89, %struct.TYPE_44__** %29, align 8
  %90 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %27, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %76
  store i32 -1, i32* %27, align 4
  br label %96

96:                                               ; preds = %95, %76
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %27, align 4
  %99 = add nsw i32 %97, %98
  %100 = add nsw i32 %99, 1
  %101 = load %struct.TYPE_43__*, %struct.TYPE_43__** %24, align 8
  %102 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_44__*, %struct.TYPE_44__** %29, align 8
  %104 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_43__*, %struct.TYPE_43__** %24, align 8
  %107 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_44__*, %struct.TYPE_44__** %29, align 8
  %109 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %30, align 8
  %111 = load i8*, i8** %30, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %96
  %114 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_46__*, %struct.TYPE_46__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %30, align 8
  br label %119

119:                                              ; preds = %113, %96
  %120 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %121 = load %struct.TYPE_43__*, %struct.TYPE_43__** %24, align 8
  %122 = load i8*, i8** %30, align 8
  %123 = call %struct.TYPE_43__* @sqlite3ExprAddCollateString(%struct.TYPE_52__* %120, %struct.TYPE_43__* %121, i8* %122)
  store %struct.TYPE_43__* %123, %struct.TYPE_43__** %24, align 8
  br label %131

124:                                              ; preds = %73
  %125 = load i32, i32* %15, align 4
  %126 = load %struct.TYPE_43__*, %struct.TYPE_43__** %24, align 8
  %127 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i8*, i8** @SQLITE_AFF_INTEGER, align 8
  %129 = load %struct.TYPE_43__*, %struct.TYPE_43__** %24, align 8
  %130 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %124, %119
  br label %132

132:                                              ; preds = %131, %67
  %133 = load i32*, i32** %14, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32*, i32** %14, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  br label %148

141:                                              ; preds = %132
  %142 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_47__*, %struct.TYPE_47__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  br label %148

148:                                              ; preds = %141, %135
  %149 = phi i32 [ %140, %135 ], [ %147, %141 ]
  store i32 %149, i32* %27, align 4
  %150 = load i32, i32* %27, align 4
  %151 = icmp sge i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_50__*, %struct.TYPE_50__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_44__*, %struct.TYPE_44__** %157, align 8
  %159 = load i32, i32* %27, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  store i8* %163, i8** %28, align 8
  %164 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %165 = load i32, i32* @TK_ID, align 4
  %166 = load i8*, i8** %28, align 8
  %167 = call %struct.TYPE_43__* @sqlite3Expr(%struct.TYPE_49__* %164, i32 %165, i8* %166)
  store %struct.TYPE_43__* %167, %struct.TYPE_43__** %25, align 8
  %168 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %169 = load i32, i32* @TK_EQ, align 4
  %170 = load %struct.TYPE_43__*, %struct.TYPE_43__** %24, align 8
  %171 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %172 = call %struct.TYPE_43__* @sqlite3PExpr(%struct.TYPE_52__* %168, i32 %169, %struct.TYPE_43__* %170, %struct.TYPE_43__* %171, i32 0)
  store %struct.TYPE_43__* %172, %struct.TYPE_43__** %26, align 8
  %173 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %174 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %175 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %176 = call %struct.TYPE_43__* @sqlite3ExprAnd(%struct.TYPE_49__* %173, %struct.TYPE_43__* %174, %struct.TYPE_43__* %175)
  store %struct.TYPE_43__* %176, %struct.TYPE_43__** %19, align 8
  br label %177

177:                                              ; preds = %148
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %18, align 4
  br label %61

180:                                              ; preds = %61
  %181 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %182 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_50__*, %struct.TYPE_50__** %183, align 8
  %185 = icmp eq %struct.TYPE_50__* %181, %184
  br i1 %185, label %186, label %228

186:                                              ; preds = %180
  %187 = load i32, i32* %16, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %228

189:                                              ; preds = %186
  %190 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %191 = load i32, i32* @TK_REGISTER, align 4
  %192 = call %struct.TYPE_43__* @sqlite3Expr(%struct.TYPE_49__* %190, i32 %191, i8* null)
  store %struct.TYPE_43__* %192, %struct.TYPE_43__** %32, align 8
  %193 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %194 = load i32, i32* @TK_COLUMN, align 4
  %195 = call %struct.TYPE_43__* @sqlite3Expr(%struct.TYPE_49__* %193, i32 %194, i8* null)
  store %struct.TYPE_43__* %195, %struct.TYPE_43__** %33, align 8
  %196 = load %struct.TYPE_43__*, %struct.TYPE_43__** %32, align 8
  %197 = icmp ne %struct.TYPE_43__* %196, null
  br i1 %197, label %198, label %218

198:                                              ; preds = %189
  %199 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %200 = icmp ne %struct.TYPE_43__* %199, null
  br i1 %200, label %201, label %218

201:                                              ; preds = %198
  %202 = load i32, i32* %15, align 4
  %203 = load %struct.TYPE_43__*, %struct.TYPE_43__** %32, align 8
  %204 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i8*, i8** @SQLITE_AFF_INTEGER, align 8
  %206 = load %struct.TYPE_43__*, %struct.TYPE_43__** %32, align 8
  %207 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %206, i32 0, i32 2
  store i8* %205, i8** %207, align 8
  %208 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_48__*, %struct.TYPE_48__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %210, i64 0
  %212 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %215 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %217 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %216, i32 0, i32 1
  store i32 -1, i32* %217, align 4
  br label %218

218:                                              ; preds = %201, %198, %189
  %219 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %220 = load i32, i32* @TK_NE, align 4
  %221 = load %struct.TYPE_43__*, %struct.TYPE_43__** %32, align 8
  %222 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %223 = call %struct.TYPE_43__* @sqlite3PExpr(%struct.TYPE_52__* %219, i32 %220, %struct.TYPE_43__* %221, %struct.TYPE_43__* %222, i32 0)
  store %struct.TYPE_43__* %223, %struct.TYPE_43__** %31, align 8
  %224 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %225 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %226 = load %struct.TYPE_43__*, %struct.TYPE_43__** %31, align 8
  %227 = call %struct.TYPE_43__* @sqlite3ExprAnd(%struct.TYPE_49__* %224, %struct.TYPE_43__* %225, %struct.TYPE_43__* %226)
  store %struct.TYPE_43__* %227, %struct.TYPE_43__** %19, align 8
  br label %228

228:                                              ; preds = %218, %186, %180
  %229 = call i32 @memset(%struct.TYPE_53__* %20, i32 0, i32 16)
  %230 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %20, i32 0, i32 1
  store %struct.TYPE_51__* %230, %struct.TYPE_51__** %231, align 8
  %232 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %20, i32 0, i32 0
  store %struct.TYPE_52__* %232, %struct.TYPE_52__** %233, align 8
  %234 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %235 = call i32 @sqlite3ResolveExprNames(%struct.TYPE_53__* %20, %struct.TYPE_43__* %234)
  %236 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %237 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %238 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %239 = call i32* @sqlite3WhereBegin(%struct.TYPE_52__* %236, %struct.TYPE_51__* %237, %struct.TYPE_43__* %238, i32 0, i32 0, i32 0, i32 0)
  store i32* %239, i32** %21, align 8
  %240 = load i32, i32* %16, align 4
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %228
  %243 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %242
  %248 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %249 = call %struct.TYPE_45__* @sqlite3ParseToplevel(%struct.TYPE_52__* %248)
  %250 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %249, i32 0, i32 0
  store i32 1, i32* %250, align 4
  br label %251

251:                                              ; preds = %247, %242, %228
  %252 = load i32*, i32** %23, align 8
  %253 = load i32, i32* @OP_FkCounter, align 4
  %254 = load %struct.TYPE_42__*, %struct.TYPE_42__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* %16, align 4
  %258 = call i32 @sqlite3VdbeAddOp2(i32* %252, i32 %253, i64 %256, i32 %257)
  %259 = load i32*, i32** %21, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %251
  %262 = load i32*, i32** %21, align 8
  %263 = call i32 @sqlite3WhereEnd(i32* %262)
  br label %264

264:                                              ; preds = %261, %251
  %265 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %266 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %267 = call i32 @sqlite3ExprDelete(%struct.TYPE_49__* %265, %struct.TYPE_43__* %266)
  %268 = load i32, i32* %22, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %264
  %271 = load i32*, i32** %23, align 8
  %272 = load i32, i32* %22, align 4
  %273 = call i32 @sqlite3VdbeJumpHere(i32* %271, i32 %272)
  br label %274

274:                                              ; preds = %270, %264
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_52__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i64, i32) #1

declare dso_local %struct.TYPE_43__* @sqlite3Expr(%struct.TYPE_49__*, i32, i8*) #1

declare dso_local %struct.TYPE_43__* @sqlite3ExprAddCollateString(%struct.TYPE_52__*, %struct.TYPE_43__*, i8*) #1

declare dso_local %struct.TYPE_43__* @sqlite3PExpr(%struct.TYPE_52__*, i32, %struct.TYPE_43__*, %struct.TYPE_43__*, i32) #1

declare dso_local %struct.TYPE_43__* @sqlite3ExprAnd(%struct.TYPE_49__*, %struct.TYPE_43__*, %struct.TYPE_43__*) #1

declare dso_local i32 @memset(%struct.TYPE_53__*, i32, i32) #1

declare dso_local i32 @sqlite3ResolveExprNames(%struct.TYPE_53__*, %struct.TYPE_43__*) #1

declare dso_local i32* @sqlite3WhereBegin(%struct.TYPE_52__*, %struct.TYPE_51__*, %struct.TYPE_43__*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_45__* @sqlite3ParseToplevel(%struct.TYPE_52__*) #1

declare dso_local i32 @sqlite3WhereEnd(i32*) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_49__*, %struct.TYPE_43__*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
