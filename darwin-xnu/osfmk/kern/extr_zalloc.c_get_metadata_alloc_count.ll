; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_get_metadata_alloc_count.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_get_metadata_alloc_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_page_metadata = type { i32 }
%struct.zone = type { i32 }

@MULTIPAGE_METADATA_MAGIC = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zone_page_metadata*)* @get_metadata_alloc_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_metadata_alloc_count(%struct.zone_page_metadata* %0) #0 {
  %2 = alloca %struct.zone_page_metadata*, align 8
  %3 = alloca %struct.zone*, align 8
  store %struct.zone_page_metadata* %0, %struct.zone_page_metadata** %2, align 8
  %4 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %2, align 8
  %5 = call i64 @PAGE_METADATA_GET_ZINDEX(%struct.zone_page_metadata* %4)
  %6 = load i64, i64* @MULTIPAGE_METADATA_MAGIC, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %2, align 8
  %11 = call %struct.zone* @PAGE_METADATA_GET_ZONE(%struct.zone_page_metadata* %10)
  store %struct.zone* %11, %struct.zone** %3, align 8
  %12 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %2, align 8
  %13 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load %struct.zone*, %struct.zone** %3, align 8
  %18 = getelementptr inbounds %struct.zone, %struct.zone* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %16, %19
  ret i32 %20
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @PAGE_METADATA_GET_ZINDEX(%struct.zone_page_metadata*) #1

declare dso_local %struct.zone* @PAGE_METADATA_GET_ZONE(%struct.zone_page_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
