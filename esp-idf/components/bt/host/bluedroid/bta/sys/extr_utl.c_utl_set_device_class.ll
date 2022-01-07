; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_utl.c_utl_set_device_class.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_utl.c_utl_set_device_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@BTM_COD_MINOR_CLASS_MASK = common dso_local global i32 0, align 4
@BTM_COD_MAJOR_CLASS_MASK = common dso_local global i32 0, align 4
@BTM_COD_SERVICE_CLASS_MASK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utl_set_device_class(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i32* (...) @BTM_ReadDeviceClass()
  store i32* %11, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @BTM_COD_SERVICE_CLASS(i32 %12, i32* %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @BTM_COD_MINOR_CLASS(i32 %15, i32* %16)
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @BTM_COD_MAJOR_CLASS(i32 %18, i32* %19)
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %93 [
    i32 129, label %22
    i32 128, label %33
    i32 132, label %44
    i32 130, label %56
    i32 131, label %77
  ]

22:                                               ; preds = %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BTM_COD_MINOR_CLASS_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BTM_COD_MAJOR_CLASS_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %9, align 4
  br label %95

33:                                               ; preds = %2
  %34 = load i32, i32* @BTM_COD_SERVICE_CLASS_MASK, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  store i32 %43, i32* %7, align 4
  br label %95

44:                                               ; preds = %2
  %45 = load i32, i32* @BTM_COD_SERVICE_CLASS_MASK, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %50, %54
  store i32 %55, i32* %7, align 4
  br label %95

56:                                               ; preds = %2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BTM_COD_MINOR_CLASS_MASK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %8, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BTM_COD_MAJOR_CLASS_MASK, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @BTM_COD_SERVICE_CLASS_MASK, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %72, %75
  store i32 %76, i32* %7, align 4
  br label %95

77:                                               ; preds = %2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BTM_COD_MINOR_CLASS_MASK, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %8, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BTM_COD_MAJOR_CLASS_MASK, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %9, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BTM_COD_SERVICE_CLASS_MASK, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %7, align 4
  br label %95

93:                                               ; preds = %2
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %3, align 4
  br label %109

95:                                               ; preds = %77, %56, %44, %33, %22
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @FIELDS_TO_COD(i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %10, align 4
  %102 = call i64 @BTM_SetDeviceClass(i32 %101)
  %103 = load i64, i64* @BTM_SUCCESS, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %3, align 4
  br label %109

107:                                              ; preds = %95
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %105, %93
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32* @BTM_ReadDeviceClass(...) #1

declare dso_local i32 @BTM_COD_SERVICE_CLASS(i32, i32*) #1

declare dso_local i32 @BTM_COD_MINOR_CLASS(i32, i32*) #1

declare dso_local i32 @BTM_COD_MAJOR_CLASS(i32, i32*) #1

declare dso_local i32 @FIELDS_TO_COD(i32, i32, i32, i32) #1

declare dso_local i64 @BTM_SetDeviceClass(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
