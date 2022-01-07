; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_computeLimitRegisters.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_computeLimitRegisters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i64 }

@TK_LIMIT = common dso_local global i64 0, align 8
@OP_Integer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"LIMIT counter\00", align 1
@SF_FixedLimit = common dso_local global i32 0, align 4
@OP_MustBeInt = common dso_local global i32 0, align 4
@OP_IfNot = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"OFFSET counter\00", align 1
@OP_OffsetLimit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"LIMIT+OFFSET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32)* @computeLimitRegisters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computeLimitRegisters(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %11, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %154

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = call i32 @sqlite3ExprCacheClear(%struct.TYPE_10__* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %154

25:                                               ; preds = %20
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TK_LIMIT, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = call i32* @sqlite3GetVdbe(%struct.TYPE_10__* %45)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @sqlite3ExprIsInteger(i64 %53, i32* %10)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %25
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @OP_Integer, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @sqlite3VdbeAddOp2(i32* %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @VdbeComment(i32* bitcast ([14 x i8]* @.str to i32*))
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @sqlite3VdbeGoto(i32* %67, i32 %68)
  br label %91

70:                                               ; preds = %56
  %71 = load i32, i32* %10, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @sqlite3LogEst(i32 %77)
  %79 = icmp sgt i64 %76, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @sqlite3LogEst(i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* @SF_FixedLimit, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %80, %73, %70
  br label %91

91:                                               ; preds = %90, %66
  br label %114

92:                                               ; preds = %25
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @sqlite3ExprCode(%struct.TYPE_10__* %93, i64 %96, i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* @OP_MustBeInt, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @sqlite3VdbeAddOp1(i32* %99, i32 %100, i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @VdbeCoverage(i32* %103)
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @VdbeComment(i32* bitcast ([14 x i8]* @.str to i32*))
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* @OP_IfNot, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @sqlite3VdbeAddOp2(i32* %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @VdbeCoverage(i32* %112)
  br label %114

114:                                              ; preds = %92, %91
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %153

119:                                              ; preds = %114
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  store i32 %123, i32* %9, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @sqlite3ExprCode(%struct.TYPE_10__* %130, i64 %133, i32 %134)
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* @OP_MustBeInt, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @sqlite3VdbeAddOp1(i32* %136, i32 %137, i32 %138)
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @VdbeCoverage(i32* %140)
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @VdbeComment(i32* bitcast ([15 x i8]* @.str.1 to i32*))
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* @OP_OffsetLimit, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @sqlite3VdbeAddOp3(i32* %144, i32 %145, i32 %146, i32 %148, i32 %149)
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @VdbeComment(i32* bitcast ([13 x i8]* @.str.2 to i32*))
  br label %153

153:                                              ; preds = %119, %114
  br label %154

154:                                              ; preds = %19, %153, %20
  ret void
}

declare dso_local i32 @sqlite3ExprCacheClear(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_10__*) #1

declare dso_local i64 @sqlite3ExprIsInteger(i64, i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i64 @sqlite3LogEst(i32) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
