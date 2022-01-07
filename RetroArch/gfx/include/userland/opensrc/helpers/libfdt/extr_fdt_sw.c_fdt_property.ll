; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_sw.c_fdt_property.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_sw.c_fdt_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i32, i8*, i8*, i8* }

@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@FDT_PROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_property(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fdt_property*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @FDT_SW_CHECK_HEADER(i8* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @_fdt_find_add_string(i8* %14, i8* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %52

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @FDT_TAGALIGN(i32 %24)
  %26 = add i64 32, %25
  %27 = call %struct.fdt_property* @_fdt_grab_space(i8* %23, i64 %26)
  store %struct.fdt_property* %27, %struct.fdt_property** %10, align 8
  %28 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %29 = icmp ne %struct.fdt_property* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %52

33:                                               ; preds = %22
  %34 = load i32, i32* @FDT_PROP, align 4
  %35 = call i8* @cpu_to_fdt32(i32 %34)
  %36 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %37 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i8* @cpu_to_fdt32(i32 %38)
  %40 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %41 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i8* @cpu_to_fdt32(i32 %42)
  %44 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %45 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %47 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @memcpy(i32 %48, i8* %49, i32 %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %33, %30, %19
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @FDT_SW_CHECK_HEADER(i8*) #1

declare dso_local i32 @_fdt_find_add_string(i8*, i8*) #1

declare dso_local %struct.fdt_property* @_fdt_grab_space(i8*, i64) #1

declare dso_local i64 @FDT_TAGALIGN(i32) #1

declare dso_local i8* @cpu_to_fdt32(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
