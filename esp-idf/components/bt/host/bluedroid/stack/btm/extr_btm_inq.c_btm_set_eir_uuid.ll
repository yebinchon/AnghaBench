; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_set_eir_uuid.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_set_eir_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@BTM_EIR_MORE_16BITS_UUID_TYPE = common dso_local global i64 0, align 8
@LEN_UUID_16 = common dso_local global i32 0, align 4
@BTM_EIR_COMPLETE_16BITS_UUID_TYPE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"btm_set_eir_uuid eir_complete_list=0x%02X\0A\00", align 1
@LEN_UUID_32 = common dso_local global i32 0, align 4
@LEN_UUID_128 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_set_eir_uuid(i64* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = load i64, i64* @BTM_EIR_MORE_16BITS_UUID_TYPE, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = load i32, i32* @LEN_UUID_16, align 4
  %13 = call i64* @btm_eir_get_uuid_list(i64* %11, i32 %12, i64* %6, i64* %9)
  store i64* %13, i64** %5, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @BTM_EIR_COMPLETE_16BITS_UUID_TYPE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @TRUE, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @FALSE, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i64*, i64** %5, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = call i32 @STREAM_TO_UINT16(i64 %38, i64* %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @BTM_AddEirService(i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %33

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %25
  %51 = load i64*, i64** %3, align 8
  %52 = load i32, i32* @LEN_UUID_32, align 4
  %53 = call i64* @btm_eir_get_uuid_list(i64* %51, i32 %52, i64* %6, i64* %9)
  store i64* %53, i64** %5, align 8
  %54 = load i64*, i64** %5, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %50
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %78, %56
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load i64*, i64** %5, align 8
  %63 = load i32, i32* @LEN_UUID_32, align 4
  %64 = call i64 @btm_convert_uuid_to_uuid16(i64* %62, i32 %63)
  store i64 %64, i64* %7, align 8
  %65 = load i32, i32* @LEN_UUID_32, align 4
  %66 = load i64*, i64** %5, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64* %68, i64** %5, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @BTM_AddEirService(i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %71, %61
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %8, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %57

81:                                               ; preds = %57
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i64*, i64** %3, align 8
  %84 = load i32, i32* @LEN_UUID_128, align 4
  %85 = call i64* @btm_eir_get_uuid_list(i64* %83, i32 %84, i64* %6, i64* %9)
  store i64* %85, i64** %5, align 8
  %86 = load i64*, i64** %5, align 8
  %87 = icmp ne i64* %86, null
  br i1 %87, label %88, label %114

88:                                               ; preds = %82
  store i64 0, i64* %8, align 8
  br label %89

89:                                               ; preds = %110, %88
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %89
  %94 = load i64*, i64** %5, align 8
  %95 = load i32, i32* @LEN_UUID_128, align 4
  %96 = call i64 @btm_convert_uuid_to_uuid16(i64* %94, i32 %95)
  store i64 %96, i64* %7, align 8
  %97 = load i32, i32* @LEN_UUID_128, align 4
  %98 = load i64*, i64** %5, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64* %100, i64** %5, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %93
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @BTM_AddEirService(i32 %106, i64 %107)
  br label %109

109:                                              ; preds = %103, %93
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %8, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %8, align 8
  br label %89

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %113, %82
  ret void
}

declare dso_local i64* @btm_eir_get_uuid_list(i64*, i32, i64*, i64*) #1

declare dso_local i32 @BTM_TRACE_API(i8*, i32) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i64*) #1

declare dso_local i32 @BTM_AddEirService(i32, i64) #1

declare dso_local i64 @btm_convert_uuid_to_uuid16(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
