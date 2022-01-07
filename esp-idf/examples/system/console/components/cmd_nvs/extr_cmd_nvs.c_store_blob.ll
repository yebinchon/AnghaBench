; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_nvs/extr_cmd_nvs.c_store_blob.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_nvs/extr_cmd_nvs.c_store_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Blob data must contain even number of characters\00", align 1
@ESP_ERR_NVS_TYPE_MISMATCH = common dso_local global i64 0, align 8
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Blob data contain invalid character\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i8*)* @store_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_blob(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = udiv i64 %18, 2
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = urem i64 %20, 2
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @TAG, align 4
  %25 = call i32 @ESP_LOGE(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @ESP_ERR_NVS_TYPE_MISMATCH, align 8
  store i64 %26, i64* %4, align 8
  br label %140

27:                                               ; preds = %3
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @malloc(i64 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %34, i64* %4, align 8
  br label %140

35:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %121, %35
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %124

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %14, align 1
  %47 = load i8, i8* %14, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sge i32 %48, 48
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load i8, i8* %14, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 57
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i8, i8* %14, align 1
  %56 = sext i8 %55 to i32
  %57 = sub nsw i32 %56, 48
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %8, align 1
  br label %95

59:                                               ; preds = %50, %41
  %60 = load i8, i8* %14, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sge i32 %61, 65
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i8, i8* %14, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 %65, 70
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i8, i8* %14, align 1
  %69 = sext i8 %68 to i32
  %70 = sub nsw i32 %69, 65
  %71 = add nsw i32 %70, 10
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %8, align 1
  br label %94

73:                                               ; preds = %63, %59
  %74 = load i8, i8* %14, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sge i32 %75, 97
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i8, i8* %14, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp sle i32 %79, 102
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i8, i8* %14, align 1
  %83 = sext i8 %82 to i32
  %84 = sub nsw i32 %83, 97
  %85 = add nsw i32 %84, 10
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %8, align 1
  br label %93

87:                                               ; preds = %77, %73
  %88 = load i32, i32* @TAG, align 4
  %89 = call i32 @ESP_LOGE(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i64, i64* @ESP_ERR_NVS_TYPE_MISMATCH, align 8
  store i64 %92, i64* %4, align 8
  br label %140

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %67
  br label %95

95:                                               ; preds = %94, %54
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i8, i8* %8, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = add nsw i32 %108, %101
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %106, align 1
  br label %120

111:                                              ; preds = %95
  %112 = load i8, i8* %8, align 1
  %113 = sext i8 %112 to i32
  %114 = shl i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8 %115, i8* %119, align 1
  br label %120

120:                                              ; preds = %111, %99
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %36

124:                                              ; preds = %36
  %125 = load i32, i32* %5, align 4
  %126 = load i8*, i8** %6, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i64 @nvs_set_blob(i32 %125, i8* %126, i8* %127, i64 %128)
  store i64 %129, i64* %15, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* @ESP_OK, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = load i32, i32* %5, align 4
  %137 = call i64 @nvs_commit(i32 %136)
  store i64 %137, i64* %15, align 8
  br label %138

138:                                              ; preds = %135, %124
  %139 = load i64, i64* %15, align 8
  store i64 %139, i64* %4, align 8
  br label %140

140:                                              ; preds = %138, %87, %33, %23
  %141 = load i64, i64* %4, align 8
  ret i64 %141
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @nvs_set_blob(i32, i8*, i8*, i64) #1

declare dso_local i64 @nvs_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
