; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_get_zone_page_metadata.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_get_zone_page_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_page_metadata = type { i32 }
%struct.zone_free_element = type { i32 }

@MULTIPAGE_METADATA_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zone_page_metadata* (%struct.zone_free_element*, i64)* @get_zone_page_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zone_page_metadata* @get_zone_page_metadata(%struct.zone_free_element* %0, i64 %1) #0 {
  %3 = alloca %struct.zone_free_element*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zone_page_metadata*, align 8
  store %struct.zone_free_element* %0, %struct.zone_free_element** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.zone_page_metadata* null, %struct.zone_page_metadata** %5, align 8
  %6 = load %struct.zone_free_element*, %struct.zone_free_element** %3, align 8
  %7 = call i64 @from_zone_map(%struct.zone_free_element* %6, i32 4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.zone_free_element*, %struct.zone_free_element** %3, align 8
  %11 = call i64 @PAGE_METADATA_FOR_ELEMENT(%struct.zone_free_element* %10)
  %12 = inttoptr i64 %11 to %struct.zone_page_metadata*
  store %struct.zone_page_metadata* %12, %struct.zone_page_metadata** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %5, align 8
  %17 = call i32 @zone_populate_metadata_page(%struct.zone_page_metadata* %16)
  br label %18

18:                                               ; preds = %15, %9
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.zone_free_element*, %struct.zone_free_element** %3, align 8
  %21 = ptrtoint %struct.zone_free_element* %20 to i32
  %22 = call i64 @trunc_page(i32 %21)
  %23 = inttoptr i64 %22 to %struct.zone_page_metadata*
  store %struct.zone_page_metadata* %23, %struct.zone_page_metadata** %5, align 8
  br label %24

24:                                               ; preds = %19, %18
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %5, align 8
  %29 = bitcast %struct.zone_page_metadata* %28 to i8*
  %30 = call i32 @bzero(i8* %29, i32 4)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %5, align 8
  %33 = call i64 @PAGE_METADATA_GET_ZINDEX(%struct.zone_page_metadata* %32)
  %34 = load i64, i64* @MULTIPAGE_METADATA_MAGIC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %5, align 8
  br label %41

38:                                               ; preds = %31
  %39 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %5, align 8
  %40 = call %struct.zone_page_metadata* @page_metadata_get_realmeta(%struct.zone_page_metadata* %39)
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi %struct.zone_page_metadata* [ %37, %36 ], [ %40, %38 ]
  ret %struct.zone_page_metadata* %42
}

declare dso_local i64 @from_zone_map(%struct.zone_free_element*, i32) #1

declare dso_local i64 @PAGE_METADATA_FOR_ELEMENT(%struct.zone_free_element*) #1

declare dso_local i32 @zone_populate_metadata_page(%struct.zone_page_metadata*) #1

declare dso_local i64 @trunc_page(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @PAGE_METADATA_GET_ZINDEX(%struct.zone_page_metadata*) #1

declare dso_local %struct.zone_page_metadata* @page_metadata_get_realmeta(%struct.zone_page_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
