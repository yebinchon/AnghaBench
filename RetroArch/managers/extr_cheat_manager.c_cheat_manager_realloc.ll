; ModuleID = '/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_realloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.item_cheat* }
%struct.item_cheat = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, i64 }

@cheat_manager_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CHEAT_TYPE_SET_TO_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cheat_manager_realloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.item_cheat*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %10 = icmp ne %struct.item_cheat* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @calloc(i32 %12, i32 56)
  %14 = inttoptr i64 %13 to %struct.item_cheat*
  store %struct.item_cheat* %14, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  store i32 0, i32* %7, align 4
  br label %73

15:                                               ; preds = %2
  store %struct.item_cheat* null, %struct.item_cheat** %8, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %55, %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %23, i64 %25
  %27 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %26, i32 0, i32 9
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %31, i64 %33
  %35 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %34, i32 0, i32 9
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @free(i64 %36)
  br label %38

38:                                               ; preds = %30, %22
  %39 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %39, i64 %41
  %43 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %47, i64 %49
  %51 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @free(i64 %52)
  br label %54

54:                                               ; preds = %46, %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %18

58:                                               ; preds = %18
  %59 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = mul i64 %61, 56
  %63 = trunc i64 %62 to i32
  %64 = call i64 @realloc(%struct.item_cheat* %59, i32 %63)
  %65 = inttoptr i64 %64 to %struct.item_cheat*
  store %struct.item_cheat* %65, %struct.item_cheat** %8, align 8
  %66 = load %struct.item_cheat*, %struct.item_cheat** %8, align 8
  %67 = icmp ne %struct.item_cheat* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load %struct.item_cheat*, %struct.item_cheat** %8, align 8
  br label %71

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi %struct.item_cheat* [ %69, %68 ], [ null, %70 ]
  store %struct.item_cheat* %72, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  br label %73

73:                                               ; preds = %71, %11
  %74 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %75 = icmp ne %struct.item_cheat* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 4
  store %struct.item_cheat* null, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  store i32 0, i32* %3, align 4
  br label %138

77:                                               ; preds = %73
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 4
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %134, %77
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %137

85:                                               ; preds = %81
  %86 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %86, i64 %88
  %90 = call i32 @memset(%struct.item_cheat* %89, i32 0, i32 56)
  %91 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %91, i64 %93
  %95 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %98 = load i32, i32* %6, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %97, i64 %99
  %101 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %100, i32 0, i32 1
  store i32 %96, i32* %101, align 4
  %102 = load i32, i32* @CHEAT_TYPE_SET_TO_VALUE, align 4
  %103 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %104 = load i32, i32* %6, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %103, i64 %105
  %107 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %106, i32 0, i32 7
  store i32 %102, i32* %107, align 8
  %108 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %109 = load i32, i32* %6, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %108, i64 %110
  %112 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %111, i32 0, i32 2
  store i32 3, i32* %112, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %114, i64 %116
  %118 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %117, i32 0, i32 3
  store i32 %113, i32* %118, align 4
  %119 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %120 = load i32, i32* %6, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %119, i64 %121
  %123 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %122, i32 0, i32 4
  store i32 1, i32* %123, align 8
  %124 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %124, i64 %126
  %128 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %127, i32 0, i32 6
  store i64 0, i64* %128, align 8
  %129 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %130 = load i32, i32* %6, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %129, i64 %131
  %133 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %132, i32 0, i32 5
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %85
  %135 = load i32, i32* %6, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %81

137:                                              ; preds = %81
  store i32 1, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %76
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @realloc(%struct.item_cheat*, i32) #1

declare dso_local i32 @memset(%struct.item_cheat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
