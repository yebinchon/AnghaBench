; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/partition_api/partition_find/main/extr_main.c_find_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/partition_api/partition_find/main/extr_main.c_find_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Find partition with type %s, subtype %s, label %s...\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"NULL (unspecified)\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"\09found partition '%s' at offset 0x%x with size 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @find_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_partition(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @TAG, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @get_type_str(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @get_subtype_str(i32 %11)
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %18

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %15 ], [ %17, %16 ]
  %20 = call i32 @ESP_LOGI(i32 %8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i8* %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call %struct.TYPE_3__* @esp_partition_find_first(i32 %21, i32 %22, i8* %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %7, align 8
  %25 = load i32, i32* @TAG, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %31, i8* %34)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @get_type_str(i32) #1

declare dso_local i32 @get_subtype_str(i32) #1

declare dso_local %struct.TYPE_3__* @esp_partition_find_first(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
