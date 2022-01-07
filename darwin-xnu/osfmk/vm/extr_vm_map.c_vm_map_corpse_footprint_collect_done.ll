; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_corpse_footprint_collect_done.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_corpse_footprint_collect_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.vm_map_corpse_footprint_header = type { i32, i32, i64 }
%struct.vm_map_corpse_footprint_region = type { i64 }

@vm_map_corpse_footprint_size_avg = common dso_local global i32 0, align 4
@vm_map_corpse_footprint_count = common dso_local global i32 0, align 4
@vm_map_corpse_footprint_size_max = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"trim: footprint_header %p buf_size 0x%llx actual_size 0x%llx kr=0x%x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"guard: footprint_header %p buf_size 0x%llx actual_size 0x%llx kr=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_corpse_footprint_collect_done(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.vm_map_corpse_footprint_header*, align 8
  %4 = alloca %struct.vm_map_corpse_footprint_region*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %1
  br label %132

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.vm_map_corpse_footprint_header*
  store %struct.vm_map_corpse_footprint_header* %26, %struct.vm_map_corpse_footprint_header** %3, align 8
  %27 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %28 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  %30 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %31 = bitcast %struct.vm_map_corpse_footprint_header* %30 to i8*
  %32 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %33 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = bitcast i8* %36 to %struct.vm_map_corpse_footprint_region*
  store %struct.vm_map_corpse_footprint_region* %37, %struct.vm_map_corpse_footprint_region** %4, align 8
  %38 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %4, align 8
  %39 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %42 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %48 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %4, align 8
  %51 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %55 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %57 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 8
  %61 = load %struct.vm_map_corpse_footprint_region*, %struct.vm_map_corpse_footprint_region** %4, align 8
  %62 = getelementptr inbounds %struct.vm_map_corpse_footprint_region, %struct.vm_map_corpse_footprint_region* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %60, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @vm_map_corpse_footprint_size_avg, align 4
  %67 = load i32, i32* @vm_map_corpse_footprint_count, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @vm_map_corpse_footprint_count, align 4
  %72 = add nsw i32 %71, 1
  %73 = sdiv i32 %70, %72
  store i32 %73, i32* @vm_map_corpse_footprint_size_avg, align 4
  %74 = load i32, i32* @vm_map_corpse_footprint_count, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @vm_map_corpse_footprint_count, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @vm_map_corpse_footprint_size_max, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %22
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* @vm_map_corpse_footprint_size_max, align 4
  br label %81

81:                                               ; preds = %79, %22
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @round_page(i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %128

87:                                               ; preds = %81
  %88 = load i32, i32* @kernel_map, align 4
  %89 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %90 = ptrtoint %struct.vm_map_corpse_footprint_header* %89 to i64
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load i64, i64* @PAGE_SIZE, align 8
  %95 = add nsw i64 %93, %94
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %96, %97
  %99 = call i64 @vm_deallocate(i32 %88, i64 %95, i32 %98)
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* @KERN_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @assertf(i32 %103, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), %struct.vm_map_corpse_footprint_header* %104, i32 %105, i32 %106, i64 %107)
  %109 = load i32, i32* @kernel_map, align 4
  %110 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %111 = ptrtoint %struct.vm_map_corpse_footprint_header* %110 to i64
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load i64, i64* @PAGE_SIZE, align 8
  %116 = load i32, i32* @FALSE, align 4
  %117 = load i32, i32* @VM_PROT_NONE, align 4
  %118 = call i64 @vm_protect(i32 %109, i64 %114, i64 %115, i32 %116, i32 %117)
  store i64 %118, i64* %7, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* @KERN_SUCCESS, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @assertf(i32 %122, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), %struct.vm_map_corpse_footprint_header* %123, i32 %124, i32 %125, i64 %126)
  br label %128

128:                                              ; preds = %87, %81
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.vm_map_corpse_footprint_header*, %struct.vm_map_corpse_footprint_header** %3, align 8
  %131 = getelementptr inbounds %struct.vm_map_corpse_footprint_header, %struct.vm_map_corpse_footprint_header* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @vm_deallocate(i32, i64, i32) #1

declare dso_local i32 @assertf(i32, i8*, %struct.vm_map_corpse_footprint_header*, i32, i32, i64) #1

declare dso_local i64 @vm_protect(i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
