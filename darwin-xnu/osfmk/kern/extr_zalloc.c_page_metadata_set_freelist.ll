; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_page_metadata_set_freelist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_page_metadata_set_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_page_metadata = type { i8* }

@MULTIPAGE_METADATA_MAGIC = common dso_local global i64 0, align 8
@PAGE_METADATA_EMPTY_FREELIST = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zone_page_metadata*, i8*)* @page_metadata_set_freelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_metadata_set_freelist(%struct.zone_page_metadata* %0, i8* %1) #0 {
  %3 = alloca %struct.zone_page_metadata*, align 8
  %4 = alloca i8*, align 8
  store %struct.zone_page_metadata* %0, %struct.zone_page_metadata** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %6 = call i64 @PAGE_METADATA_GET_ZINDEX(%struct.zone_page_metadata* %5)
  %7 = load i64, i64* @MULTIPAGE_METADATA_MAGIC, align 8
  %8 = icmp ne i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** @PAGE_METADATA_EMPTY_FREELIST, align 8
  %15 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %16 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %19 = call i64 @from_zone_map(%struct.zone_page_metadata* %18, i32 8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %25 = call i32 @PAGE_INDEX_FOR_METADATA(%struct.zone_page_metadata* %24)
  %26 = call i64 @PAGE_FOR_PAGE_INDEX(i32 %25)
  %27 = sub nsw i64 %23, %26
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %30 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %40

31:                                               ; preds = %17
  %32 = load i8*, i8** %4, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %35 = ptrtoint %struct.zone_page_metadata* %34 to i64
  %36 = sub nsw i64 %33, %35
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %3, align 8
  %39 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %31, %21
  br label %41

41:                                               ; preds = %40, %13
  ret void
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
