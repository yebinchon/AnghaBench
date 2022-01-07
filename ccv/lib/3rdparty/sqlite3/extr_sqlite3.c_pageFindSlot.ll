; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pageFindSlot.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pageFindSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32, i32*)* @pageFindSlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pageFindSlot(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @get2byte(i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  br label %37

37:                                               ; preds = %130, %3
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sub nsw i32 %39, 4
  %41 = icmp sle i32 %38, %40
  br i1 %41, label %42, label %131

42:                                               ; preds = %37
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = call i32 @get2byte(i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %12, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %117

53:                                               ; preds = %42
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 4
  %56 = zext i1 %55 to i32
  %57 = call i32 @testcase(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 3
  %60 = zext i1 %59 to i32
  %61 = call i32 @testcase(i32 %60)
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__* %68)
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  store i32* null, i32** %4, align 8
  br label %139

71:                                               ; preds = %53
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %101

74:                                               ; preds = %71
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 7
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 57
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32* null, i32** %4, align 8
  br label %139

83:                                               ; preds = %74
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @memcpy(i32* %87, i32* %91, i32 2)
  %93 = load i32, i32* %12, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 7
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %93
  store i32 %100, i32* %98, align 4
  br label %109

101:                                              ; preds = %71
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @put2byte(i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %101, %83
  br label %110

110:                                              ; preds = %109
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  store i32* %116, i32** %4, align 8
  br label %139

117:                                              ; preds = %42
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %10, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = call i32 @get2byte(i32* %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %125, %126
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  br label %131

130:                                              ; preds = %117
  br label %37

131:                                              ; preds = %129, %37
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %136 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__* %135)
  %137 = load i32*, i32** %7, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %131
  store i32* null, i32** %4, align 8
  br label %139

139:                                              ; preds = %138, %110, %82, %67
  %140 = load i32*, i32** %4, align 8
  ret i32* %140
}

declare dso_local i32 @get2byte(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @put2byte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
