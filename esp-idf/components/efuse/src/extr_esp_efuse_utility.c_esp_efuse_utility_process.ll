; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_utility.c_esp_efuse_utility_process.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_utility.c_esp_efuse_utility_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Range of data does not match the coding scheme\00", align 1
@ESP_ERR_CODING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"In EFUSE_BLK%d__DATA%d_REG is used %d bits starting with %d bit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_efuse_utility_process(%struct.TYPE_4__** %0, i8* %1, i64 %2, i64 (i32, i64, i32, i32, i8*, i32*)* %3) #0 {
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64 (i32, i64, i32, i32, i8*, i32*)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 (i32, i64, i32, i32, i8*, i32*)* %3, i64 (i32, i64, i32, i32, i8*, i32*)** %8, align 8
  %18 = load i64, i64* @ESP_OK, align 8
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %20 = call i32 @esp_efuse_get_field_size(%struct.TYPE_4__** %19)
  store i32 %20, i32* %11, align 4
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  br label %29

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @MIN(i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i32 [ %24, %23 ], [ %28, %25 ]
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %169, %29
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @ESP_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br label %46

46:                                               ; preds = %39, %35, %31
  %47 = phi i1 [ false, %35 ], [ false, %31 ], [ %45, %39 ]
  br i1 %47, label %48, label %172

48:                                               ; preds = %46
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %63, i64 %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @check_range_of_bits(i64 %55, i32 %62, i32 %69)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %48
  %73 = load i32, i32* @TAG, align 4
  %74 = call i32 @ESP_LOGE(i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %75 = load i64, i64* @ESP_ERR_CODING, align 8
  store i64 %75, i64* %9, align 8
  br label %76

76:                                               ; preds = %72, %48
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %140, %76
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @ESP_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %86, i64 %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @get_reg_num(i32 %92, i32 %99, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = icmp ne i32 %101, -1
  br label %103

103:                                              ; preds = %85, %81, %77
  %104 = phi i1 [ false, %81 ], [ false, %77 ], [ %102, %85 ]
  br i1 %104, label %105, label %169

105:                                              ; preds = %103
  %106 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %106, i64 %108
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @get_starting_bit_num_in_reg(i32 %112, i32 %113)
  store i32 %114, i32* %16, align 4
  %115 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %115, i64 %117
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %122, i64 %124
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @get_count_bits_in_reg(i32 %121, i32 %128, i32 %129)
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %12, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %105
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %10, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %17, align 4
  br label %140

140:                                              ; preds = %136, %105
  %141 = load i32, i32* @TAG, align 4
  %142 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %142, i64 %144
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %16, align 4
  %153 = call i32 @ESP_LOGD(i32 %141, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load i64 (i32, i64, i32, i32, i8*, i32*)*, i64 (i32, i64, i32, i32, i8*, i32*)** %8, align 8
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %156, i64 %158
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load i8*, i8** %6, align 8
  %166 = call i64 %154(i32 %155, i64 %162, i32 %163, i32 %164, i8* %165, i32* %10)
  store i64 %166, i64* %9, align 8
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %77

169:                                              ; preds = %103
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  br label %31

172:                                              ; preds = %46
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp sle i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load i64, i64* %9, align 8
  ret i64 %178
}

declare dso_local i32 @esp_efuse_get_field_size(%struct.TYPE_4__**) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @check_range_of_bits(i64, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @get_reg_num(i32, i32, i32) #1

declare dso_local i32 @get_starting_bit_num_in_reg(i32, i32) #1

declare dso_local i32 @get_count_bits_in_reg(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
