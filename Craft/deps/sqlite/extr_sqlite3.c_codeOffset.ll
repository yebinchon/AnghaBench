; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_codeOffset.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_codeOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@OP_AddImm = common dso_local global i32 0, align 4
@OP_IfNeg = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"skip OFFSET records\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32)* @codeOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeOffset(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @OP_AddImm, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @sqlite3VdbeAddOp2(i32* %16, i32 %17, i64 %20, i32 -1)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @OP_IfNeg, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @sqlite3VdbeAddOp1(i32* %22, i32 %23, i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @OP_Goto, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sqlite3VdbeAddOp2(i32* %28, i32 %29, i64 0, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @VdbeComment(i32* bitcast ([20 x i8]* @.str to i32*))
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @sqlite3VdbeJumpHere(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %15, %12, %3
  ret void
}

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i64, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i64) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
