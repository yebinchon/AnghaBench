; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.wps_context*, i32, i32 }
%struct.wps_context = type { i32 }
%struct.wps_registrar_config = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wps_registrar* @wps_registrar_init(%struct.wps_context* %0, %struct.wps_registrar_config* %1) #0 {
  %3 = alloca %struct.wps_registrar*, align 8
  %4 = alloca %struct.wps_context*, align 8
  %5 = alloca %struct.wps_registrar_config*, align 8
  %6 = alloca %struct.wps_registrar*, align 8
  store %struct.wps_context* %0, %struct.wps_context** %4, align 8
  store %struct.wps_registrar_config* %1, %struct.wps_registrar_config** %5, align 8
  %7 = call i64 @os_zalloc(i32 80)
  %8 = inttoptr i64 %7 to %struct.wps_registrar*
  store %struct.wps_registrar* %8, %struct.wps_registrar** %6, align 8
  %9 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %10 = icmp eq %struct.wps_registrar* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.wps_registrar* null, %struct.wps_registrar** %3, align 8
  br label %101

12:                                               ; preds = %2
  %13 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %14 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %15 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %14, i32 0, i32 14
  store %struct.wps_context* %13, %struct.wps_context** %15, align 8
  %16 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %17 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %20 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %19, i32 0, i32 13
  store i32 %18, i32* %20, align 4
  %21 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %22 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %21, i32 0, i32 11
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %25 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 8
  %26 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %27 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %30 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 8
  %31 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %32 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %35 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %37 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %40 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 8
  %41 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %42 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %45 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %47 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %50 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %52 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %12
  %56 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %57 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %60 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @wpabuf_alloc_copy(i64 %58, i32 %61)
  %63 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %64 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %63, i32 0, i32 5
  store i32* %62, i32** %64, align 8
  %65 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %66 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %71 = call i32 @os_free(%struct.wps_registrar* %70)
  store %struct.wps_registrar* null, %struct.wps_registrar** %3, align 8
  br label %101

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %12
  %74 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %75 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %78 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %80 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %79, i32 0, i32 0
  store i32 -1, i32* %80, align 8
  %81 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %82 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %81, i32 0, i32 1
  store i32 -1, i32* %82, align 4
  %83 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %84 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %87 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.wps_registrar_config*, %struct.wps_registrar_config** %5, align 8
  %89 = getelementptr inbounds %struct.wps_registrar_config, %struct.wps_registrar_config* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %92 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %94 = call i64 @wps_set_ie(%struct.wps_registrar* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %73
  %97 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  %98 = call i32 @wps_registrar_deinit(%struct.wps_registrar* %97)
  store %struct.wps_registrar* null, %struct.wps_registrar** %3, align 8
  br label %101

99:                                               ; preds = %73
  %100 = load %struct.wps_registrar*, %struct.wps_registrar** %6, align 8
  store %struct.wps_registrar* %100, %struct.wps_registrar** %3, align 8
  br label %101

101:                                              ; preds = %99, %96, %69, %11
  %102 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  ret %struct.wps_registrar* %102
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32* @wpabuf_alloc_copy(i64, i32) #1

declare dso_local i32 @os_free(%struct.wps_registrar*) #1

declare dso_local i64 @wps_set_ie(%struct.wps_registrar*) #1

declare dso_local i32 @wps_registrar_deinit(%struct.wps_registrar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
