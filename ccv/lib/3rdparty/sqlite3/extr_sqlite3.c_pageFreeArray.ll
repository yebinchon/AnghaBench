; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pageFreeArray.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pageFreeArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)* @pageFreeArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pageFreeArray(%struct.TYPE_8__* %0, i32 %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %30, i64 %39
  store i32* %40, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %15, align 4
  store i32* null, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %129, %4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %132

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %18, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i64 @SQLITE_WITHIN(i32* %57, i32* %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %128

62:                                               ; preds = %49
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp sgt i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32*, i32** %16, align 8
  %75 = load i32*, i32** %18, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = icmp ne i32* %74, %78
  br i1 %79, label %80, label %120

80:                                               ; preds = %62
  %81 = load i32*, i32** %16, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %109

83:                                               ; preds = %80
  %84 = load i32*, i32** %16, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = icmp ugt i32* %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32*, i32** %16, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = ptrtoint i32* %88 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = icmp slt i64 %93, 65536
  br label %95

95:                                               ; preds = %87, %83
  %96 = phi i1 [ false, %83 ], [ %94, %87 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @freeSpace(%struct.TYPE_8__* %99, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %95, %80
  %110 = load i32*, i32** %18, align 8
  store i32* %110, i32** %16, align 8
  %111 = load i32, i32* %19, align 4
  store i32 %111, i32* %17, align 4
  %112 = load i32*, i32** %16, align 8
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32*, i32** %11, align 8
  %117 = icmp ugt i32* %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %163

119:                                              ; preds = %109
  br label %125

120:                                              ; preds = %62
  %121 = load i32*, i32** %18, align 8
  store i32* %121, i32** %16, align 8
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %120, %119
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %125, %49
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %45

132:                                              ; preds = %45
  %133 = load i32*, i32** %16, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %161

135:                                              ; preds = %132
  %136 = load i32*, i32** %16, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = icmp ugt i32* %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load i32*, i32** %16, align 8
  %141 = load i32*, i32** %10, align 8
  %142 = ptrtoint i32* %140 to i64
  %143 = ptrtoint i32* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sdiv exact i64 %144, 4
  %146 = icmp slt i64 %145, 65536
  br label %147

147:                                              ; preds = %139, %135
  %148 = phi i1 [ false, %135 ], [ %146, %139 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %152 = load i32*, i32** %16, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = ptrtoint i32* %152 to i64
  %155 = ptrtoint i32* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 4
  %158 = trunc i64 %157 to i32
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @freeSpace(%struct.TYPE_8__* %151, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %147, %132
  %162 = load i32, i32* %13, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %118
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i64 @SQLITE_WITHIN(i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @freeSpace(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
