; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_reader.c_GetFifoForId.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_reader.c_GetFifoForId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32**, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (%struct.TYPE_9__*, i32)* @GetFifoForId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @GetFifoForId(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32** null, i32*** %3, align 8
  br label %153

34:                                               ; preds = %28, %23
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  store i32* %37, i32** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  store i32** %48, i32*** %3, align 8
  br label %153

49:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %81, %49
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @hb_list_count(i32 %54)
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %50
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i8* @hb_list_item(i32 %60, i32 %61)
  %63 = bitcast i8* %62 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %9, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %57
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32*, i32** %75, i64 %78
  store i32* %72, i32** %79, align 8
  br label %80

80:                                               ; preds = %69, %57
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %50

84:                                               ; preds = %50
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  store i32* null, i32** %93, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32**, i32*** %95, align 8
  store i32** %96, i32*** %3, align 8
  br label %153

97:                                               ; preds = %84
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %152, label %102

102:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %135, %102
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @hb_list_count(i32 %107)
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %103
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i8* @hb_list_item(i32 %113, i32 %114)
  %116 = bitcast i8* %115 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %8, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %110
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32*, i32** %129, i64 %132
  store i32* %126, i32** %133, align 8
  br label %134

134:                                              ; preds = %122, %110
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %103

138:                                              ; preds = %103
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  store i32* null, i32** %147, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32**, i32*** %149, align 8
  store i32** %150, i32*** %3, align 8
  br label %153

151:                                              ; preds = %138
  br label %152

152:                                              ; preds = %151, %97
  store i32** null, i32*** %3, align 8
  br label %153

153:                                              ; preds = %152, %141, %87, %34, %33
  %154 = load i32**, i32*** %3, align 8
  ret i32** %154
}

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local i8* @hb_list_item(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
