; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3ExprCodeIN.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3ExprCodeIN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"begin IN expr\00", align 1
@OP_IsNull = common dso_local global i32 0, align 4
@OP_NotNull = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@IN_INDEX_ROWID = common dso_local global i32 0, align 4
@OP_MustBeInt = common dso_local global i32 0, align 4
@OP_NotExists = common dso_local global i32 0, align 4
@OP_Affinity = common dso_local global i32 0, align 4
@OP_NotFound = common dso_local global i32 0, align 4
@OP_Found = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@OP_AddImm = common dso_local global i32 0, align 4
@OP_If = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"end IN expr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32)* @sqlite3ExprCodeIN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite3ExprCodeIN(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %13, align 8
  %26 = call i32 @VdbeNoopComment(i32* bitcast ([14 x i8]* @.str to i32*))
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = call i32 @sqlite3FindInIndex(%struct.TYPE_13__* %27, %struct.TYPE_14__* %28, i32* %9)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = call signext i8 @comparisonAffinity(%struct.TYPE_14__* %30)
  store i8 %31, i8* %10, align 1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = call i32 @sqlite3ExprCachePush(%struct.TYPE_13__* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = call i32 @sqlite3GetTempReg(%struct.TYPE_13__* %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @sqlite3ExprCode(%struct.TYPE_13__* %36, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %4
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* @OP_IsNull, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @sqlite3VdbeAddOp2(i32* %46, i32 %47, i32 %48, i32 %49)
  br label %70

51:                                               ; preds = %4
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* @OP_NotNull, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @sqlite3VdbeAddOp1(i32* %52, i32 %53, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* @OP_Rewind, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @sqlite3VdbeAddOp2(i32* %56, i32 %57, i32 %60, i32 %61)
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* @OP_Goto, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @sqlite3VdbeAddOp2(i32* %63, i32 %64, i32 0, i32 %65)
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @sqlite3VdbeJumpHere(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %51, %45
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @IN_INDEX_ROWID, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* @OP_MustBeInt, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @sqlite3VdbeAddOp2(i32* %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* @OP_NotExists, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @sqlite3VdbeAddOp3(i32* %80, i32 %81, i32 %84, i32 %85, i32 %86)
  br label %154

88:                                               ; preds = %70
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* @OP_Affinity, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @sqlite3VdbeAddOp4(i32* %89, i32 %90, i32 %91, i32 1, i32 0, i8* %10, i32 1)
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %95, %88
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* @OP_NotFound, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @sqlite3VdbeAddOp4Int(i32* %100, i32 %101, i32 %104, i32 %105, i32 %106, i32 1)
  br label %153

108:                                              ; preds = %95
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* @OP_Found, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @sqlite3VdbeAddOp4Int(i32* %109, i32 %110, i32 %113, i32 0, i32 %114, i32 1)
  store i32 %115, i32* %15, align 4
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* @OP_NotNull, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @sqlite3VdbeAddOp1(i32* %116, i32 %117, i32 %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* @OP_Found, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @sqlite3VdbeAddOp4Int(i32* %120, i32 %121, i32 %124, i32 0, i32 %125, i32 1)
  store i32 %126, i32* %17, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = load i32, i32* @OP_Integer, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @sqlite3VdbeAddOp2(i32* %127, i32 %128, i32 -1, i32 %129)
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @sqlite3VdbeJumpHere(i32* %131, i32 %132)
  %134 = load i32*, i32** %13, align 8
  %135 = load i32, i32* @OP_AddImm, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @sqlite3VdbeAddOp2(i32* %134, i32 %135, i32 %136, i32 1)
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @sqlite3VdbeJumpHere(i32* %138, i32 %139)
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* @OP_If, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @sqlite3VdbeAddOp2(i32* %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* @OP_Goto, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @sqlite3VdbeAddOp2(i32* %146, i32 %147, i32 0, i32 %148)
  %150 = load i32*, i32** %13, align 8
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @sqlite3VdbeJumpHere(i32* %150, i32 %151)
  br label %153

153:                                              ; preds = %108, %99
  br label %154

154:                                              ; preds = %153, %74
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_13__* %155, i32 %156)
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %159 = call i32 @sqlite3ExprCachePop(%struct.TYPE_13__* %158, i32 1)
  %160 = load i32*, i32** %13, align 8
  %161 = call i32 @VdbeComment(i32* bitcast ([12 x i8]* @.str.1 to i32*))
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VdbeNoopComment(i32*) #1

declare dso_local i32 @sqlite3FindInIndex(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*) #1

declare dso_local signext i8 @comparisonAffinity(%struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3ExprCachePush(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sqlite3ExprCachePop(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
