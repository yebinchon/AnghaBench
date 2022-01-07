; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_corpse_footprint_new_region.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_corpse_footprint_new_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_map_corpse_footprint_region = type { i64, i64 }
%struct.vm_map_corpse_footprint_header = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vm_map_corpse_footprint_region* (%struct.vm_map_corpse_footprint_header*)* @vm_map_corpse_footprint_new_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vm_map_corpse_footprint_region* @vm_map_corpse_footprint_new_region(%struct.vm_map_corpse_footprint_header* %0) #0 {
  %2 = alloca %struct.vm_map_corpse_footprint_region*, align 8
  %3 = alloca %struct.vm_map_corpse_footprint_header*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_map_corpse_footprint_region*, align 8
  %7 = alloca %struct.vm_map_corpse_footprint_region*, align 8
  store %struct.vm_map_corpse_footprint_header* %0, %struct.vm_map_corpse_footprint_header** %3, align 8
  %8 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %9 = ptrtoint %struct.vm_map_corpse_footprint_header* %8 to i64
  %10 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %11 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %9, %12
  store i64 %13, i64* %4, align 8
  %14 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %15 = bitcast %struct.vm_map_corpse_footprint_header* %14 to i8*
  %16 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %17 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  %20 = bitcast i8* %19 to %struct.vm_map_corpse_footprint_region*
  store %struct.vm_map_corpse_footprint_region* %20, %struct.vm_map_corpse_footprint_region** %6, align 8
  %21 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %6, align 8
  %22 = ptrtoint %struct.vm_map_corpse_footprint_region* %21 to i64
  %23 = add i64 %22, 16
  %24 = load i64, i64* %4, align 8
  %25 = icmp ule i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %6, align 8
  %29 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %32 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %38 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %6, align 8
  %41 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %45 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %6, align 8
  %47 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %1
  %51 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %6, align 8
  store %struct.vm_map_corpse_footprint_region* %51, %struct.vm_map_corpse_footprint_region** %2, align 8
  br label %96

52:                                               ; preds = %1
  %53 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %54 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 16
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %6, align 8
  %62 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @roundup(i32 %68, i32 4)
  store i32 %69, i32* %5, align 4
  %70 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %71 = ptrtoint %struct.vm_map_corpse_footprint_header* %70 to i64
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %71, %73
  %75 = add i64 %74, 16
  %76 = load i64, i64* %4, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %52
  store %struct.vm_map_corpse_footprint_region* null, %struct.vm_map_corpse_footprint_region** %2, align 8
  br label %96

79:                                               ; preds = %52
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %83 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %85 = bitcast %struct.vm_map_corpse_footprint_header* %84 to i8*
  %86 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %87 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = bitcast i8* %89 to %struct.vm_map_corpse_footprint_region*
  store %struct.vm_map_corpse_footprint_region* %90, %struct.vm_map_corpse_footprint_region** %7, align 8
  %91 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %7, align 8
  %92 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %7, align 8
  %94 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %7, align 8
  store %struct.vm_map_corpse_footprint_region* %95, %struct.vm_map_corpse_footprint_region** %2, align 8
  br label %96

96:                                               ; preds = %79, %78, %50
  %97 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %2, align 8
  ret %struct.vm_map_corpse_footprint_region* %97
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
