; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_lighting_server.c_get_light_lc_prop_val.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_lighting_server.c_get_light_lc_prop_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { %struct.bt_mesh_light_lc_setup_srv* }
%struct.bt_mesh_light_lc_setup_srv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.bt_mesh_model*, i32)* @get_light_lc_prop_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_light_lc_prop_val(%struct.bt_mesh_model* %0, i32 %1) #0 {
  %3 = alloca %struct.bt_mesh_model*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bt_mesh_light_lc_setup_srv*, align 8
  %6 = alloca i32*, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %3, align 8
  %8 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %7, i32 0, i32 0
  %9 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %8, align 8
  store %struct.bt_mesh_light_lc_setup_srv* %9, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %119 [
    i32 130, label %11
    i32 133, label %17
    i32 128, label %23
    i32 134, label %29
    i32 129, label %35
    i32 132, label %41
    i32 131, label %47
    i32 142, label %53
    i32 141, label %59
    i32 140, label %65
    i32 145, label %71
    i32 144, label %77
    i32 143, label %83
    i32 137, label %89
    i32 138, label %95
    i32 135, label %101
    i32 136, label %107
    i32 139, label %113
  ]

11:                                               ; preds = %2
  %12 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %13 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 17
  store i32* %16, i32** %6, align 8
  br label %119

17:                                               ; preds = %2
  %18 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %19 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 16
  store i32* %22, i32** %6, align 8
  br label %119

23:                                               ; preds = %2
  %24 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %25 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 15
  store i32* %28, i32** %6, align 8
  br label %119

29:                                               ; preds = %2
  %30 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %31 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 14
  store i32* %34, i32** %6, align 8
  br label %119

35:                                               ; preds = %2
  %36 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %37 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 13
  store i32* %40, i32** %6, align 8
  br label %119

41:                                               ; preds = %2
  %42 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %43 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 12
  store i32* %46, i32** %6, align 8
  br label %119

47:                                               ; preds = %2
  %48 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %49 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 11
  store i32* %52, i32** %6, align 8
  br label %119

53:                                               ; preds = %2
  %54 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %55 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 10
  store i32* %58, i32** %6, align 8
  br label %119

59:                                               ; preds = %2
  %60 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %61 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 9
  store i32* %64, i32** %6, align 8
  br label %119

65:                                               ; preds = %2
  %66 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %67 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 8
  store i32* %70, i32** %6, align 8
  br label %119

71:                                               ; preds = %2
  %72 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %73 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 7
  store i32* %76, i32** %6, align 8
  br label %119

77:                                               ; preds = %2
  %78 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %79 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 6
  store i32* %82, i32** %6, align 8
  br label %119

83:                                               ; preds = %2
  %84 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %85 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 5
  store i32* %88, i32** %6, align 8
  br label %119

89:                                               ; preds = %2
  %90 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %91 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  store i32* %94, i32** %6, align 8
  br label %119

95:                                               ; preds = %2
  %96 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %97 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  store i32* %100, i32** %6, align 8
  br label %119

101:                                              ; preds = %2
  %102 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %103 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  store i32* %106, i32** %6, align 8
  br label %119

107:                                              ; preds = %2
  %108 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %109 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i32* %112, i32** %6, align 8
  br label %119

113:                                              ; preds = %2
  %114 = load %struct.bt_mesh_light_lc_setup_srv*, %struct.bt_mesh_light_lc_setup_srv** %5, align 8
  %115 = getelementptr inbounds %struct.bt_mesh_light_lc_setup_srv, %struct.bt_mesh_light_lc_setup_srv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32* %118, i32** %6, align 8
  br label %119

119:                                              ; preds = %2, %113, %107, %101, %95, %89, %83, %77, %71, %65, %59, %53, %47, %41, %35, %29, %23, %17, %11
  %120 = load i32*, i32** %6, align 8
  ret i32* %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
