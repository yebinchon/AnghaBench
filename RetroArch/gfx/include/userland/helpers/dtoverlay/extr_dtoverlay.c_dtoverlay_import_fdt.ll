; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_import_fdt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_import_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }

@.str = private unnamed_addr constant [25 x i8] c"not a valid FDT - err %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"fdt is too large\00", align 1
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @dtoverlay_import_fdt(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @fdt_check_header(i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %69

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @fdt_totalsize(i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %69

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @fdt_set_totalsize(i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = call %struct.TYPE_4__* @calloc(i32 1, i32 16)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %5, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 (i8*, ...) @dtoverlay_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %69

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %64, %41
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @fdt_get_phandle(i8* %51, i32 %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %50
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @fdt_next_node(i8* %65, i32 %66, i32* null)
  store i32 %67, i32* %6, align 4
  br label %47

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %68, %39, %23, %14
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %70
}

declare dso_local i32 @fdt_check_header(i8*) #1

declare dso_local i32 @dtoverlay_error(i8*, ...) #1

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i32 @fdt_set_totalsize(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i64 @fdt_get_phandle(i8*, i32) #1

declare dso_local i32 @fdt_next_node(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
