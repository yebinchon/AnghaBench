; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_sw.c__fdt_find_add_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_sw.c__fdt_find_add_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @_fdt_find_add_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fdt_find_add_string(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @fdt_totalsize(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @fdt_size_dt_strings(i8* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @_fdt_find_string(i8* %26, i32 %27, i8* %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %70

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 0, %40
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %11, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @fdt_off_dt_struct(i8* %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @fdt_size_dt_struct(i8* %46)
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %10, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @fdt_totalsize(i8* %49)
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %70

56:                                               ; preds = %39
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @memcpy(i8* %60, i8* %61, i32 %62)
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i32 @fdt_set_size_dt_strings(i8* %64, i32 %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %56, %55, %32
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i32 @fdt_size_dt_strings(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @_fdt_find_string(i8*, i32, i8*) #1

declare dso_local i32 @fdt_off_dt_struct(i8*) #1

declare dso_local i32 @fdt_size_dt_struct(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fdt_set_size_dt_strings(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
