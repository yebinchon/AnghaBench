; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_add_bg_dev_list.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_add_bg_dev_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64*, i64* }

@FALSE = common dso_local global i64 0, align 8
@GATT_MAX_APPS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"device already in iniator white list\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"device already in adv white list\00", align 1
@GATT_LISTEN_TO_ALL = common dso_local global i64 0, align 8
@GATT_LISTEN_TO_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"no device record available\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gatt_add_bg_dev_list(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_7__* @gatt_find_bg_dev(i32 %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %9, align 8
  %18 = icmp eq %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_7__* @gatt_alloc_bg_dev(i32 %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %9, align 8
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %128

25:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  br label %26

26:                                               ; preds = %124, %25
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @GATT_MAX_APPS, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %127

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %30
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %4, align 8
  br label %132

45:                                               ; preds = %33
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %45
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %54, i64* %59, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i64, i64* @TRUE, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @BTM_BleUpdateBgConnDev(i64 %63, i32 %64)
  store i64 %65, i64* %11, align 8
  br label %68

66:                                               ; preds = %53
  %67 = load i64, i64* @TRUE, align 8
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %66, %62
  br label %127

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %69
  br label %123

71:                                               ; preds = %30
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i64, i64* @TRUE, align 8
  store i64 %82, i64* %4, align 8
  br label %132

83:                                               ; preds = %71
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %83
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @GATT_LISTEN_TO_ALL, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i64, i64* @GATT_LISTEN_TO_NONE, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %91
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %106, i64* %111, align 8
  %112 = load i64, i64* %10, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %101
  %115 = load i64, i64* @TRUE, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i64 @BTM_BleUpdateAdvWhitelist(i64 %115, i32 %116, i32 0, i32* null)
  store i64 %117, i64* %11, align 8
  br label %120

118:                                              ; preds = %101
  %119 = load i64, i64* @TRUE, align 8
  store i64 %119, i64* %11, align 8
  br label %120

120:                                              ; preds = %118, %114
  br label %127

121:                                              ; preds = %83
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %70
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %10, align 8
  br label %26

127:                                              ; preds = %120, %68, %26
  br label %130

128:                                              ; preds = %22
  %129 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %127
  %131 = load i64, i64* %11, align 8
  store i64 %131, i64* %4, align 8
  br label %132

132:                                              ; preds = %130, %80, %42
  %133 = load i64, i64* %4, align 8
  ret i64 %133
}

declare dso_local %struct.TYPE_7__* @gatt_find_bg_dev(i32) #1

declare dso_local %struct.TYPE_7__* @gatt_alloc_bg_dev(i32) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i64 @BTM_BleUpdateBgConnDev(i64, i32) #1

declare dso_local i64 @BTM_BleUpdateAdvWhitelist(i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
