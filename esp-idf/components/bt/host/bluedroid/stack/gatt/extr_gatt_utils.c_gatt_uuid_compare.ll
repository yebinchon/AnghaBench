; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_uuid_compare.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_uuid_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32, i32 }

@LEN_UUID_128 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LEN_UUID_16 = common dso_local global i64 0, align 8
@LEN_UUID_32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_uuid_compare(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @LEN_UUID_128, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @LEN_UUID_128, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %2
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %121

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LEN_UUID_16, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LEN_UUID_16, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %121

45:                                               ; preds = %31, %26
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LEN_UUID_32, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LEN_UUID_32, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %121

64:                                               ; preds = %50, %45
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LEN_UUID_16, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @gatt_convert_uuid16_to_uuid128(i32* %13, i32 %72)
  store i32* %13, i32** %7, align 8
  br label %89

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @LEN_UUID_32, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @gatt_convert_uuid32_to_uuid128(i32* %13, i32 %82)
  store i32* %13, i32** %7, align 8
  br label %88

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %7, align 8
  br label %88

88:                                               ; preds = %84, %79
  br label %89

89:                                               ; preds = %88, %69
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @LEN_UUID_16, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @gatt_convert_uuid16_to_uuid128(i32* %16, i32 %97)
  store i32* %16, i32** %8, align 8
  br label %114

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @LEN_UUID_32, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @gatt_convert_uuid32_to_uuid128(i32* %16, i32 %107)
  store i32* %16, i32** %8, align 8
  br label %113

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %8, align 8
  br label %113

113:                                              ; preds = %109, %104
  br label %114

114:                                              ; preds = %113, %94
  %115 = load i32*, i32** %7, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* @LEN_UUID_128, align 4
  %118 = call i64 @memcmp(i32* %115, i32* %116, i32 %117)
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %121

121:                                              ; preds = %114, %55, %36, %24
  %122 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gatt_convert_uuid16_to_uuid128(i32*, i32) #2

declare dso_local i32 @gatt_convert_uuid32_to_uuid128(i32*, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
