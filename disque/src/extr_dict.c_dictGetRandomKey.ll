; ModuleID = '/home/carl/AnghaBench/disque/src/extr_dict.c_dictGetRandomKey.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_dict.c_dictGetRandomKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @dictGetRandomKey(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i64 @dictSize(%struct.TYPE_11__* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %142

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i64 @dictIsRehashing(%struct.TYPE_11__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = call i32 @_dictRehashStep(%struct.TYPE_11__* %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call i64 @dictIsRehashing(%struct.TYPE_11__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %92

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %88, %24
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (...) @random()
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %35, %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  %47 = srem i32 %29, %46
  %48 = add nsw i32 %28, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp uge i32 %49, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %25
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub i32 %64, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %63, i64 %72
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  br label %86

75:                                               ; preds = %25
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %81, i64 %83
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  br label %86

86:                                               ; preds = %75, %57
  %87 = phi %struct.TYPE_10__* [ %74, %57 ], [ %85, %75 ]
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %4, align 8
  br label %88

88:                                               ; preds = %86
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = icmp eq %struct.TYPE_10__* %89, null
  br i1 %90, label %25, label %91

91:                                               ; preds = %88
  br label %116

92:                                               ; preds = %20
  br label %93

93:                                               ; preds = %112, %92
  %94 = call i32 (...) @random()
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %94, %100
  store i32 %101, i32* %6, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %107, i64 %109
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %4, align 8
  br label %112

112:                                              ; preds = %93
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = icmp eq %struct.TYPE_10__* %113, null
  br i1 %114, label %93, label %115

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %115, %91
  store i32 0, i32* %7, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %117, %struct.TYPE_10__** %5, align 8
  br label %118

118:                                              ; preds = %121, %116
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = icmp ne %struct.TYPE_10__* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %4, align 8
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %118

127:                                              ; preds = %118
  %128 = call i32 (...) @random()
  %129 = load i32, i32* %7, align 4
  %130 = srem i32 %128, %129
  store i32 %130, i32* %8, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %131, %struct.TYPE_10__** %4, align 8
  br label %132

132:                                              ; preds = %136, %127
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %8, align 4
  %135 = icmp ne i32 %133, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  store %struct.TYPE_10__* %139, %struct.TYPE_10__** %4, align 8
  br label %132

140:                                              ; preds = %132
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %141, %struct.TYPE_10__** %2, align 8
  br label %142

142:                                              ; preds = %140, %12
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %143
}

declare dso_local i64 @dictSize(%struct.TYPE_11__*) #1

declare dso_local i64 @dictIsRehashing(%struct.TYPE_11__*) #1

declare dso_local i32 @_dictRehashStep(%struct.TYPE_11__*) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
