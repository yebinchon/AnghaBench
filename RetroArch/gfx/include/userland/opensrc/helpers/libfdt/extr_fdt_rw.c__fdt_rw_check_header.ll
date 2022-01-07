; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_rw.c__fdt_rw_check_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_rw.c__fdt_rw_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_BADVERSION = common dso_local global i32 0, align 4
@FDT_ERR_BADLAYOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @_fdt_rw_check_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fdt_rw_check_header(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @FDT_CHECK_HEADER(i8* %4)
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @fdt_version(i8* %6)
  %8 = icmp slt i32 %7, 17
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @FDT_ERR_BADVERSION, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @fdt_size_dt_struct(i8* %14)
  %16 = call i64 @_fdt_blocks_misordered(i8* %13, i32 4, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @FDT_ERR_BADLAYOUT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %12
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @fdt_version(i8* %22)
  %24 = icmp sgt i32 %23, 17
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @fdt_set_version(i8* %26, i32 17)
  br label %28

28:                                               ; preds = %25, %21
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %18, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @FDT_CHECK_HEADER(i8*) #1

declare dso_local i32 @fdt_version(i8*) #1

declare dso_local i64 @_fdt_blocks_misordered(i8*, i32, i32) #1

declare dso_local i32 @fdt_size_dt_struct(i8*) #1

declare dso_local i32 @fdt_set_version(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
