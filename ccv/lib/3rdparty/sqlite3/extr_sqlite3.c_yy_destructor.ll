; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_yy_destructor.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_yy_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@sqlite3ParserARG_FETCH = common dso_local global i32 0, align 4
@pParse = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_6__*)* @yy_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yy_destructor(i32* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %7 = load i32, i32* @sqlite3ParserARG_FETCH, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %74 [
    i32 163, label %9
    i32 195, label %9
    i32 196, label %9
    i32 207, label %9
    i32 173, label %17
    i32 174, label %17
    i32 202, label %17
    i32 204, label %17
    i32 216, label %17
    i32 227, label %17
    i32 229, label %17
    i32 238, label %17
    i32 243, label %17
    i32 178, label %25
    i32 187, label %25
    i32 188, label %25
    i32 200, label %25
    i32 203, label %25
    i32 205, label %25
    i32 208, label %25
    i32 209, label %25
    i32 210, label %25
    i32 220, label %25
    i32 226, label %25
    i32 228, label %25
    i32 194, label %33
    i32 201, label %33
    i32 212, label %33
    i32 213, label %33
    i32 197, label %41
    i32 217, label %49
    i32 218, label %49
    i32 222, label %49
    i32 234, label %57
    i32 239, label %57
    i32 236, label %65
  ]

9:                                                ; preds = %3, %3, %3, %3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pParse, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sqlite3SelectDelete(i32 %12, i32 %15)
  br label %75

17:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pParse, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sqlite3ExprDelete(i32 %20, i32 %23)
  br label %75

25:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pParse, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sqlite3ExprListDelete(i32 %28, i32 %31)
  br label %75

33:                                               ; preds = %3, %3, %3, %3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pParse, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sqlite3SrcListDelete(i32 %36, i32 %39)
  br label %75

41:                                               ; preds = %3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pParse, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sqlite3WithDelete(i32 %44, i32 %47)
  br label %75

49:                                               ; preds = %3, %3, %3
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pParse, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sqlite3IdListDelete(i32 %52, i32 %55)
  br label %75

57:                                               ; preds = %3, %3
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pParse, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sqlite3DeleteTriggerStep(i32 %60, i32 %63)
  br label %75

65:                                               ; preds = %3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pParse, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sqlite3IdListDelete(i32 %68, i32 %72)
  br label %75

74:                                               ; preds = %3
  br label %75

75:                                               ; preds = %74, %65, %57, %49, %41, %33, %25, %17, %9
  ret void
}

declare dso_local i32 @sqlite3SelectDelete(i32, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32, i32) #1

declare dso_local i32 @sqlite3ExprListDelete(i32, i32) #1

declare dso_local i32 @sqlite3SrcListDelete(i32, i32) #1

declare dso_local i32 @sqlite3WithDelete(i32, i32) #1

declare dso_local i32 @sqlite3IdListDelete(i32, i32) #1

declare dso_local i32 @sqlite3DeleteTriggerStep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
