; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_computeLimitRegisters.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_computeLimitRegisters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, double, i32, i32, i32 }

@OP_Integer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"LIMIT counter\00", align 1
@OP_Goto = common dso_local global i32 0, align 4
@OP_MustBeInt = common dso_local global i32 0, align 4
@OP_IfZero = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"OFFSET counter\00", align 1
@OP_IfPos = common dso_local global i32 0, align 4
@OP_Add = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"LIMIT+OFFSET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i32)* @computeLimitRegisters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computeLimitRegisters(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %166

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = call i32 @sqlite3ExprCacheClear(%struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %24, %17
  %30 = phi i1 [ true, %17 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %166

37:                                               ; preds = %29
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call i32* @sqlite3GetVdbe(%struct.TYPE_9__* %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp eq i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i64 @NEVER(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %166

52:                                               ; preds = %37
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @sqlite3ExprIsInteger(i32 %55, i32* %11)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %52
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @OP_Integer, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @sqlite3VdbeAddOp2(i32* %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @VdbeComment(i32* bitcast ([14 x i8]* @.str to i32*))
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @OP_Goto, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @sqlite3VdbeAddOp2(i32* %69, i32 %70, i32 0, i32 %71)
  br label %86

73:                                               ; preds = %58
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load double, double* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sitofp i32 %77 to double
  %79 = fcmp ogt double %76, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i32, i32* %11, align 4
  %82 = sitofp i32 %81 to double
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store double %82, double* %84, align 8
  br label %85

85:                                               ; preds = %80, %73
  br label %86

86:                                               ; preds = %85, %68
  br label %105

87:                                               ; preds = %52
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @sqlite3ExprCode(%struct.TYPE_9__* %88, i32 %91, i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @OP_MustBeInt, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @sqlite3VdbeAddOp1(i32* %94, i32 %95, i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @VdbeComment(i32* bitcast ([14 x i8]* @.str to i32*))
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* @OP_IfZero, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @sqlite3VdbeAddOp2(i32* %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %87, %86
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %165

110:                                              ; preds = %105
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  store i32 %114, i32* %9, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @sqlite3ExprCode(%struct.TYPE_9__* %121, i32 %124, i32 %125)
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* @OP_MustBeInt, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @sqlite3VdbeAddOp1(i32* %127, i32 %128, i32 %129)
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @VdbeComment(i32* bitcast ([15 x i8]* @.str.1 to i32*))
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* @OP_IfPos, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @sqlite3VdbeAddOp1(i32* %133, i32 %134, i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* @OP_Integer, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @sqlite3VdbeAddOp2(i32* %137, i32 %138, i32 0, i32 %139)
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @sqlite3VdbeJumpHere(i32* %141, i32 %142)
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* @OP_Add, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  %150 = call i32 @sqlite3VdbeAddOp3(i32* %144, i32 %145, i32 %146, i32 %147, i32 %149)
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @VdbeComment(i32* bitcast ([13 x i8]* @.str.2 to i32*))
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* @OP_IfPos, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @sqlite3VdbeAddOp1(i32* %153, i32 %154, i32 %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* @OP_Integer, align 4
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  %161 = call i32 @sqlite3VdbeAddOp2(i32* %157, i32 %158, i32 -1, i32 %160)
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @sqlite3VdbeJumpHere(i32* %162, i32 %163)
  br label %165

165:                                              ; preds = %110, %105
  br label %166

166:                                              ; preds = %16, %51, %165, %29
  ret void
}

declare dso_local i32 @sqlite3ExprCacheClear(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_9__*) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i64 @sqlite3ExprIsInteger(i32, i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
