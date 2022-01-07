; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_prunenodes.c_AAS_PruneNodes_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_prunenodes.c_AAS_PruneNodes_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__**, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@c_numprunes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @AAS_PruneNodes_r(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %157

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %2, align 8
  br label %157

16:                                               ; preds = %9
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call %struct.TYPE_6__* @AAS_PruneNodes_r(%struct.TYPE_6__* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 0
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call %struct.TYPE_6__* @AAS_PruneNodes_r(%struct.TYPE_6__* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %35, i64 1
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %39, i64 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %136

43:                                               ; preds = %16
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %136

50:                                               ; preds = %43
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = icmp ne %struct.TYPE_7__* %57, null
  br i1 %58, label %59, label %136

59:                                               ; preds = %50
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %62, i64 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %136

68:                                               ; preds = %59
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %4, align 8
  br label %76

76:                                               ; preds = %81, %68
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = icmp ne %struct.TYPE_7__* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %4, align 8
  br label %76

85:                                               ; preds = %76
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %5, align 8
  br label %93

93:                                               ; preds = %98, %85
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = icmp ne %struct.TYPE_7__* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %5, align 8
  br label %93

102:                                              ; preds = %93
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = icmp eq %struct.TYPE_7__* %103, %104
  br i1 %105, label %106, label %135

106:                                              ; preds = %102
  %107 = load i32, i32* @c_numprunes, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @c_numprunes, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %116, i64 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = call i32 @AAS_FreeTmpNode(%struct.TYPE_6__* %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %122, i64 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = call i32 @AAS_FreeTmpNode(%struct.TYPE_6__* %124)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %128, i64 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %132, i64 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %133, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %134, %struct.TYPE_6__** %2, align 8
  br label %157

135:                                              ; preds = %102
  br label %136

136:                                              ; preds = %135, %59, %50, %43, %16
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %139, i64 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = icmp ne %struct.TYPE_6__* %141, null
  br i1 %142, label %155, label %143

143:                                              ; preds = %136
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %146, i64 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = icmp ne %struct.TYPE_6__* %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* @c_numprunes, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* @c_numprunes, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = call i32 @AAS_FreeTmpNode(%struct.TYPE_6__* %153)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %157

155:                                              ; preds = %143, %136
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %156, %struct.TYPE_6__** %2, align 8
  br label %157

157:                                              ; preds = %155, %150, %106, %14, %8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %158
}

declare dso_local i32 @AAS_FreeTmpNode(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
