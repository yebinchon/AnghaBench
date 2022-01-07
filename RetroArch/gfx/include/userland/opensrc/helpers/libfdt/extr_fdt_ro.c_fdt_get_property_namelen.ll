; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_ro.c_fdt_get_property_namelen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_ro.c_fdt_get_property_namelen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i32 }

@FDT_ERR_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fdt_property* @fdt_get_property_namelen(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.fdt_property*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.fdt_property*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @fdt_first_property_offset(i8* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %41, %5
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = call %struct.fdt_property* @fdt_get_property_by_offset(i8* %20, i32 %21, i32* %22)
  store %struct.fdt_property* %23, %struct.fdt_property** %12, align 8
  %24 = icmp eq %struct.fdt_property* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @FDT_ERR_INTERNAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %45

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.fdt_property*, %struct.fdt_property** %12, align 8
  %31 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fdt32_to_cpu(i32 %32)
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @_fdt_string_eq(i8* %29, i32 %33, i8* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load %struct.fdt_property*, %struct.fdt_property** %12, align 8
  store %struct.fdt_property* %39, %struct.fdt_property** %6, align 8
  br label %52

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @fdt_next_property_offset(i8* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %16

45:                                               ; preds = %25, %16
  %46 = load i32*, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  store %struct.fdt_property* null, %struct.fdt_property** %6, align 8
  br label %52

52:                                               ; preds = %51, %38
  %53 = load %struct.fdt_property*, %struct.fdt_property** %6, align 8
  ret %struct.fdt_property* %53
}

declare dso_local i32 @fdt_first_property_offset(i8*, i32) #1

declare dso_local %struct.fdt_property* @fdt_get_property_by_offset(i8*, i32, i32*) #1

declare dso_local i64 @_fdt_string_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

declare dso_local i32 @fdt_next_property_offset(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
