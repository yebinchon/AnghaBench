; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_ptrmapPut.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_ptrmapPut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PTRMAP_UPDATE: %d->(%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i64, i64, i32*)* @ptrmapPut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptrmapPut(%struct.TYPE_6__* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %125

20:                                               ; preds = %5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sqlite3_mutex_held(i32 %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = call i32 @PENDING_BYTE_PAGE(%struct.TYPE_6__* %27)
  %29 = call i64 @PTRMAP_ISPAGE(%struct.TYPE_6__* %26, i32 %28)
  %30 = icmp eq i64 0, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  br label %125

42:                                               ; preds = %20
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @PTRMAP_PAGENO(%struct.TYPE_6__* %43, i64 %44)
  store i64 %45, i64* %13, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @sqlite3PagerGet(i32 %48, i64 %49, i32** %11, i32 0)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @SQLITE_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* %15, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  br label %125

57:                                               ; preds = %42
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @PTRMAP_PTROFFSET(i64 %58, i64 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  br label %122

66:                                               ; preds = %57
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = sub nsw i32 %71, 5
  %73 = icmp sle i32 %67, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32*, i32** %11, align 8
  %77 = call i64 @sqlite3PagerGetData(i32* %76)
  %78 = inttoptr i64 %77 to i64*
  store i64* %78, i64** %12, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64*, i64** %12, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %79, %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %66
  %87 = load i64*, i64** %12, align 8
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = call i64 @get4byte(i64* %91)
  %93 = load i64, i64* %9, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %86, %66
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @TRACE(i8* %99)
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @sqlite3PagerWrite(i32* %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32*, i32** %10, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @SQLITE_OK, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %95
  %108 = load i64, i64* %8, align 8
  %109 = load i64*, i64** %12, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 %108, i64* %112, align 8
  %113 = load i64*, i64** %12, align 8
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @put4byte(i64* %117, i64 %118)
  br label %120

120:                                              ; preds = %107, %95
  br label %121

121:                                              ; preds = %120, %86
  br label %122

122:                                              ; preds = %121, %63
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @sqlite3PagerUnref(i32* %123)
  br label %125

125:                                              ; preds = %122, %54, %39, %19
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i64 @PTRMAP_ISPAGE(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PENDING_BYTE_PAGE(%struct.TYPE_6__*) #1

declare dso_local i64 @PTRMAP_PAGENO(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @sqlite3PagerGet(i32, i64, i32**, i32) #1

declare dso_local i32 @PTRMAP_PTROFFSET(i64, i64) #1

declare dso_local i64 @sqlite3PagerGetData(i32*) #1

declare dso_local i64 @get4byte(i64*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @sqlite3PagerWrite(i32*) #1

declare dso_local i32 @put4byte(i64*, i64) #1

declare dso_local i32 @sqlite3PagerUnref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
