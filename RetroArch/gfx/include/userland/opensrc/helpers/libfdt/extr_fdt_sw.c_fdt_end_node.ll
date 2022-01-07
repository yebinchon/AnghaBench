; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_sw.c_fdt_end_node.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_sw.c_fdt_end_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_TAGSIZE = common dso_local global i32 0, align 4
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@FDT_END_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_end_node(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @FDT_SW_CHECK_HEADER(i8* %5)
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @FDT_TAGSIZE, align 4
  %9 = call i32* @_fdt_grab_space(i8* %7, i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @FDT_END_NODE, align 4
  %17 = call i32 @cpu_to_fdt32(i32 %16)
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @FDT_SW_CHECK_HEADER(i8*) #1

declare dso_local i32* @_fdt_grab_space(i8*, i32) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
