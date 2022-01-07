; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_rw.c_fdt_add_mem_rsv.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_rw.c_fdt_add_mem_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_reserve_entry = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_add_mem_rsv(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fdt_reserve_entry*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @FDT_RW_CHECK_HEADER(i8* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @fdt_num_mem_rsv(i8* %13)
  %15 = call %struct.fdt_reserve_entry* @_fdt_mem_rsv_w(i8* %12, i32 %14)
  store %struct.fdt_reserve_entry* %15, %struct.fdt_reserve_entry** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %8, align 8
  %18 = call i32 @_fdt_splice_mem_rsv(i8* %16, %struct.fdt_reserve_entry* %17, i32 0, i32 1)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %32

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @cpu_to_fdt64(i32 %24)
  %26 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %8, align 8
  %27 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @cpu_to_fdt64(i32 %28)
  %30 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %8, align 8
  %31 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %23, %21
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @FDT_RW_CHECK_HEADER(i8*) #1

declare dso_local %struct.fdt_reserve_entry* @_fdt_mem_rsv_w(i8*, i32) #1

declare dso_local i32 @fdt_num_mem_rsv(i8*) #1

declare dso_local i32 @_fdt_splice_mem_rsv(i8*, %struct.fdt_reserve_entry*, i32, i32) #1

declare dso_local i8* @cpu_to_fdt64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
