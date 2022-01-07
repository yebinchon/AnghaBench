; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_create.c_AAS_RemoveFaceFromArea.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_create.c_AAS_RemoveFaceFromArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.TYPE_7__**, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__**, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__**, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }

@.str = private unnamed_addr constant [50 x i8] c"AAS_RemoveFaceFromArea: face not part of the area\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_RemoveFaceFromArea(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = icmp ne %struct.TYPE_10__* %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = icmp ne %struct.TYPE_10__* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @Error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13, %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = icmp ne %struct.TYPE_10__* %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %30, i64 %32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %68

36:                                               ; preds = %21
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %39, i64 %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = icmp ne %struct.TYPE_10__* %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 %53
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %58, i64 %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %64, i64 %66
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %67, align 8
  br label %78

68:                                               ; preds = %21
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %71, i64 %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %77, align 8
  br label %78

78:                                               ; preds = %68, %36
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %81, i64 %83
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %87, label %119

87:                                               ; preds = %78
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %90, i64 %92
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = icmp ne %struct.TYPE_10__* %96, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %7, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %102, i64 %104
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %109, i64 %111
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %115, i64 %117
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %118, align 8
  br label %119

119:                                              ; preds = %87, %78
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %124, align 8
  br label %128

125:                                              ; preds = %119
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %127, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %131, i64 %133
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %134, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %137, i64 %139
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %140, align 8
  ret void
}

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
