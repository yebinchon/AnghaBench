; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_page_metadata_get_freelist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_page_metadata_get_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_page_metadata = type { i64 }

@MULTIPAGE_METADATA_MAGIC = common dso_local global i64 0, align 8
@PAGE_METADATA_EMPTY_FREELIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.zone_page_metadata*)* @page_metadata_get_freelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @page_metadata_get_freelist(%struct.zone_page_metadata* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.zone_page_metadata*, align 8
  store %struct.zone_page_metadata* %0, %struct.zone_page_metadata** %3, align 8
  %4 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %5 = call i64 @PAGE_METADATA_GET_ZINDEX(%struct.zone_page_metadata* %4)
  %6 = load i64, i64* @MULTIPAGE_METADATA_MAGIC, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %11 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PAGE_METADATA_EMPTY_FREELIST, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %18 = call i64 @from_zone_map(%struct.zone_page_metadata* %17, i32 8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %22 = call i32 @PAGE_INDEX_FOR_METADATA(%struct.zone_page_metadata* %21)
  %23 = call i64 @PAGE_FOR_PAGE_INDEX(i32 %22)
  %24 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %25 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %2, align 8
  br label %37

29:                                               ; preds = %16
  %30 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %31 = ptrtoint %struct.zone_page_metadata* %30 to i64
  %32 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %33 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %2, align 8
  br label %37

37:                                               ; preds = %29, %20, %15
  %38 = load i8*, i8** %2, align 8
  ret i8* %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @PAGE_METADATA_GET_ZINDEX(%struct.zone_page_metadata*) #1

declare dso_local i64 @from_zone_map(%struct.zone_page_metadata*, i32) #1

declare dso_local i64 @PAGE_FOR_PAGE_INDEX(i32) #1

declare dso_local i32 @PAGE_INDEX_FOR_METADATA(%struct.zone_page_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
