; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pageInsertArray.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pageInsertArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64* }
%struct.TYPE_8__ = type { i64** }

@CORRUPT_DB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64*, i64**, i64*, i32, i32, %struct.TYPE_8__*)* @pageInsertArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pageInsertArray(%struct.TYPE_7__* %0, i64* %1, i64** %2, i64* %3, i32 %4, i32 %5, %struct.TYPE_8__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64** %2, i64*** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %15, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %17, align 8
  %26 = load i64**, i64*** %11, align 8
  %27 = load i64*, i64** %26, align 8
  store i64* %27, i64** %18, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %19, align 4
  %31 = load i64, i64* @CORRUPT_DB, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %7
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br label %38

38:                                               ; preds = %33, %7
  %39 = phi i1 [ true, %7 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %137, %38
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %19, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %140

47:                                               ; preds = %43
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @cachedCellSize(%struct.TYPE_8__* %48, i32 %49)
  store i32 %50, i32* %20, align 4
  %51 = load i64*, i64** %17, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i64*, i64** %17, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55, %47
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = load i32, i32* %20, align 4
  %63 = call i64* @pageFindSlot(%struct.TYPE_7__* %61, i32 %62, i32* %21)
  store i64* %63, i64** %22, align 8
  %64 = icmp eq i64* %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %60, %55
  %66 = load i64*, i64** %18, align 8
  %67 = load i64*, i64** %10, align 8
  %68 = ptrtoint i64* %66 to i64
  %69 = ptrtoint i64* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 8
  %72 = load i32, i32* %20, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i32 1, i32* %8, align 4
  br label %143

76:                                               ; preds = %65
  %77 = load i32, i32* %20, align 4
  %78 = load i64*, i64** %18, align 8
  %79 = sext i32 %77 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64* %81, i64** %18, align 8
  %82 = load i64*, i64** %18, align 8
  store i64* %82, i64** %22, align 8
  br label %83

83:                                               ; preds = %76, %60
  %84 = load i64*, i64** %22, align 8
  %85 = load i32, i32* %20, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64**, i64*** %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64*, i64** %90, i64 %92
  %94 = load i64*, i64** %93, align 8
  %95 = icmp ule i64* %87, %94
  br i1 %95, label %112, label %96

96:                                               ; preds = %83
  %97 = load i64*, i64** %22, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64**, i64*** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64*, i64** %100, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = icmp uge i64* %97, %107
  br i1 %108, label %112, label %109

109:                                              ; preds = %96
  %110 = load i64, i64* @CORRUPT_DB, align 8
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %109, %96, %83
  %113 = phi i1 [ true, %96 ], [ true, %83 ], [ %111, %109 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i64*, i64** %22, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64**, i64*** %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64*, i64** %119, i64 %121
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %20, align 4
  %125 = call i32 @memmove(i64* %116, i64* %123, i32 %124)
  %126 = load i64*, i64** %12, align 8
  %127 = load i64*, i64** %22, align 8
  %128 = load i64*, i64** %17, align 8
  %129 = ptrtoint i64* %127 to i64
  %130 = ptrtoint i64* %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @put2byte(i64* %126, i32 %133)
  %135 = load i64*, i64** %12, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 2
  store i64* %136, i64** %12, align 8
  br label %137

137:                                              ; preds = %112
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %16, align 4
  br label %43

140:                                              ; preds = %43
  %141 = load i64*, i64** %18, align 8
  %142 = load i64**, i64*** %11, align 8
  store i64* %141, i64** %142, align 8
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %140, %75
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cachedCellSize(%struct.TYPE_8__*, i32) #1

declare dso_local i64* @pageFindSlot(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @put2byte(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
