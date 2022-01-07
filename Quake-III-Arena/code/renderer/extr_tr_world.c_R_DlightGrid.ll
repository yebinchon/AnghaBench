; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_world.c_R_DlightGrid.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_world.c_R_DlightGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64*, i64 }
%struct.TYPE_9__ = type { i64**, i32* }

@tr = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @R_DlightGrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @R_DlightGrid(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %137, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 2, i32 0), align 8
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %140

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %137

18:                                               ; preds = %11
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 2, i32 1), align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %21
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %6, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64**, i64*** %33, align 8
  %35 = getelementptr inbounds i64*, i64** %34, i64 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %31, %38
  br i1 %39, label %130, label %40

40:                                               ; preds = %18
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64**, i64*** %51, align 8
  %53 = getelementptr inbounds i64*, i64** %52, i64 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %49, %56
  br i1 %57, label %130, label %58

58:                                               ; preds = %40
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64**, i64*** %69, align 8
  %71 = getelementptr inbounds i64*, i64** %70, i64 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %67, %74
  br i1 %75, label %130, label %76

76:                                               ; preds = %58
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64**, i64*** %87, align 8
  %89 = getelementptr inbounds i64*, i64** %88, i64 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %85, %92
  br i1 %93, label %130, label %94

94:                                               ; preds = %76
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i64**, i64*** %105, align 8
  %107 = getelementptr inbounds i64*, i64** %106, i64 1
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %103, %110
  br i1 %111, label %130, label %112

112:                                              ; preds = %94
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64**, i64*** %123, align 8
  %125 = getelementptr inbounds i64*, i64** %124, i64 0
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %121, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %112, %94, %76, %58, %40, %18
  %131 = load i32, i32* %5, align 4
  %132 = shl i32 1, %131
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %4, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %130, %112
  br label %137

137:                                              ; preds = %136, %17
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %7

140:                                              ; preds = %7
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1, i32 0), align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1, i32 0), align 8
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32 %147, i32* %152, align 4
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
