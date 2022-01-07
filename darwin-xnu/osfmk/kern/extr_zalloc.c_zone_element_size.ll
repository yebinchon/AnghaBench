; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_zone_element_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_zone_element_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }
%struct.zone_page_metadata = type { i32 }
%struct.zone_free_element = type { i32 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zone_element_size(i8* %0, %struct.zone** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zone**, align 8
  %6 = alloca %struct.zone*, align 8
  %7 = alloca %struct.zone_page_metadata*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.zone** %1, %struct.zone*** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @from_zone_map(i8* %8, i32 8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.zone_free_element*
  %14 = load i32, i32* @FALSE, align 4
  %15 = call %struct.zone_page_metadata* @get_zone_page_metadata(%struct.zone_free_element* %13, i32 %14)
  store %struct.zone_page_metadata* %15, %struct.zone_page_metadata** %7, align 8
  %16 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %7, align 8
  %17 = call %struct.zone* @PAGE_METADATA_GET_ZONE(%struct.zone_page_metadata* %16)
  store %struct.zone* %17, %struct.zone** %6, align 8
  %18 = load %struct.zone**, %struct.zone*** %5, align 8
  %19 = icmp ne %struct.zone** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load %struct.zone*, %struct.zone** %6, align 8
  %22 = load %struct.zone**, %struct.zone*** %5, align 8
  store %struct.zone* %21, %struct.zone** %22, align 8
  br label %23

23:                                               ; preds = %20, %11
  %24 = load %struct.zone*, %struct.zone** %6, align 8
  %25 = getelementptr inbounds %struct.zone, %struct.zone* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @from_zone_map(i8*, i32) #1

declare dso_local %struct.zone_page_metadata* @get_zone_page_metadata(%struct.zone_free_element*, i32) #1

declare dso_local %struct.zone* @PAGE_METADATA_GET_ZONE(%struct.zone_page_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
