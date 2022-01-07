; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_getAndInitPage.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_getAndInitPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_11__**, %struct.TYPE_11__* }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, %struct.TYPE_11__**, %struct.TYPE_13__*, i32)* @getAndInitPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getAndInitPage(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_11__** %2, %struct.TYPE_13__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sqlite3_mutex_held(i32 %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %20 = icmp eq %struct.TYPE_13__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  %25 = icmp eq %struct.TYPE_11__** %22, %24
  br label %26

26:                                               ; preds = %21, %5
  %27 = phi i1 [ true, %5 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = icmp eq %struct.TYPE_13__* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i1 [ true, %26 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %43 = icmp eq %struct.TYPE_13__* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %47, 0
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i1 [ true, %38 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = call i32 @btreePagecount(%struct.TYPE_12__* %54)
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %58, i32* %12, align 4
  br label %138

59:                                               ; preds = %49
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @sqlite3PagerGet(i32 %62, i32 %63, i32** %13, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %138

69:                                               ; preds = %59
  %70 = load i32*, i32** %13, align 8
  %71 = call i64 @sqlite3PagerGetExtra(i32* %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_11__*
  %73 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %73, align 8
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %69
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = call i32 @btreePageFromDbPage(i32* %80, i32 %81, %struct.TYPE_12__* %82)
  %84 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = call i32 @btreeInitPage(%struct.TYPE_11__* %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @SQLITE_OK, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = call i32 @releasePage(%struct.TYPE_11__* %92)
  br label %138

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %69
  %96 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = call i64 @sqlite3PagerGetData(i32* %108)
  %110 = icmp eq i64 %107, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %114 = icmp ne %struct.TYPE_13__* %113, null
  br i1 %114, label %115, label %136

115:                                              ; preds = %95
  %116 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %130, label %121

121:                                              ; preds = %115
  %122 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %125, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %121, %115
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @SQLITE_CORRUPT_PGNO(i32 %131)
  store i32 %132, i32* %12, align 4
  %133 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = call i32 @releasePage(%struct.TYPE_11__* %134)
  br label %138

136:                                              ; preds = %121, %95
  %137 = load i32, i32* @SQLITE_OK, align 4
  store i32 %137, i32* %6, align 4
  br label %172

138:                                              ; preds = %130, %90, %68, %57
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %140 = icmp ne %struct.TYPE_13__* %139, null
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %144, -1
  store i64 %145, i64* %143, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %147, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %148, i64 %151
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 4
  store %struct.TYPE_11__* %153, %struct.TYPE_11__** %155, align 8
  br label %156

156:                                              ; preds = %141, %138
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 @testcase(i32 %159)
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @SQLITE_CORRUPT, align 4
  %166 = icmp eq i32 %164, %165
  br label %167

167:                                              ; preds = %163, %156
  %168 = phi i1 [ true, %156 ], [ %166, %163 ]
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %167, %136
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @btreePagecount(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3PagerGet(i32, i32, i32**, i32) #1

declare dso_local i64 @sqlite3PagerGetExtra(i32*) #1

declare dso_local i32 @btreePageFromDbPage(i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @btreeInitPage(%struct.TYPE_11__*) #1

declare dso_local i32 @releasePage(%struct.TYPE_11__*) #1

declare dso_local i64 @sqlite3PagerGetData(i32*) #1

declare dso_local i32 @SQLITE_CORRUPT_PGNO(i32) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
