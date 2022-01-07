; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_phandle_relocate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_phandle_relocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s property too small\00", align 1
@FDT_ERR_BADSTRUCTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"  phandle_relocate %d->%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8*, i64)* @dtoverlay_phandle_relocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtoverlay_phandle_relocate(%struct.TYPE_3__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32* @fdt_getprop(i32 %16, i32 %17, i8* %18, i32* %10)
  store i32* %19, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @dtoverlay_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %50

30:                                               ; preds = %22
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @fdt32_to_cpu(i32 %32)
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* %13, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @fdt32_to_cpu(i32 %37)
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @phandle_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @fdt_setprop_inplace_u32(i32 %43, i32 %44, i8* %45, i64 %46)
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %30, %4
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %25
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32* @fdt_getprop(i32, i32, i8*, i32*) #1

declare dso_local i32 @dtoverlay_error(i8*, i8*) #1

declare dso_local i64 @fdt32_to_cpu(i32) #1

declare dso_local i32 @phandle_debug(i8*, i64, i64) #1

declare dso_local i32 @fdt_setprop_inplace_u32(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
