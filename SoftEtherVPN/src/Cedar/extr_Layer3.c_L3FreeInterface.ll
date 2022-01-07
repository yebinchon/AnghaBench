; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3FreeInterface.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3FreeInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3FreeInterface(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = icmp eq %struct.TYPE_12__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %146

12:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %28, %12
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @LIST_NUM(i32* %17)
  %19 = icmp slt i64 %14, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call %struct.TYPE_11__* @LIST_DATA(i32* %23, i64 %24)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %6, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = call i32 @Free(%struct.TYPE_11__* %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i64, i64* %3, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %13

31:                                               ; preds = %13
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ReleaseList(i32* %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  store i64 0, i64* %3, align 8
  br label %38

38:                                               ; preds = %53, %31
  %39 = load i64, i64* %3, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @LIST_NUM(i32* %42)
  %44 = icmp slt i64 %39, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call %struct.TYPE_11__* @LIST_DATA(i32* %48, i64 %49)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %7, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = call i32 @Free(%struct.TYPE_11__* %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i64, i64* %3, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %3, align 8
  br label %38

56:                                               ; preds = %38
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ReleaseList(i32* %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %70, %56
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i8* @GetNext(i32* %66)
  %68 = bitcast i8* %67 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %4, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = call i32 @Free(%struct.TYPE_11__* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = call i32 @FreePacket(%struct.TYPE_10__* %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = call i32 @Free(%struct.TYPE_11__* %81)
  br label %63

83:                                               ; preds = %63
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @ReleaseQueue(i32* %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  store i32* null, i32** %89, align 8
  store i64 0, i64* %3, align 8
  br label %90

90:                                               ; preds = %115, %83
  %91 = load i64, i64* %3, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i64 @LIST_NUM(i32* %94)
  %96 = icmp slt i64 %91, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %90
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %3, align 8
  %102 = call %struct.TYPE_11__* @LIST_DATA(i32* %100, i64 %101)
  store %struct.TYPE_11__* %102, %struct.TYPE_11__** %8, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = call i32 @Free(%struct.TYPE_11__* %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = call i32 @FreePacket(%struct.TYPE_10__* %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %114 = call i32 @Free(%struct.TYPE_11__* %113)
  br label %115

115:                                              ; preds = %97
  %116 = load i64, i64* %3, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %3, align 8
  br label %90

118:                                              ; preds = %90
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @ReleaseList(i32* %121)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  store i32* null, i32** %124, align 8
  br label %125

125:                                              ; preds = %132, %118
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i8* @GetNext(i32* %128)
  %130 = bitcast i8* %129 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %130, %struct.TYPE_10__** %5, align 8
  %131 = icmp ne %struct.TYPE_10__* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = call i32 @Free(%struct.TYPE_11__* %135)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = call i32 @FreePacket(%struct.TYPE_10__* %137)
  br label %125

139:                                              ; preds = %125
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @ReleaseQueue(i32* %142)
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  store i32* null, i32** %145, align 8
  br label %146

146:                                              ; preds = %139, %11
  ret void
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_11__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @Free(%struct.TYPE_11__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i8* @GetNext(i32*) #1

declare dso_local i32 @FreePacket(%struct.TYPE_10__*) #1

declare dso_local i32 @ReleaseQueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
