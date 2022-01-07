; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_rw.c__fdt_find_add_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/opensrc/helpers/libfdt/extr_fdt_rw.c__fdt_find_add_string.c"
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
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @fdt_off_dt_strings(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @fdt_size_dt_strings(i8* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @_fdt_find_string(i8* %19, i32 %21, i8* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %2
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @fdt_size_dt_strings(i8* %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @_fdt_splice_string(i8* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %33
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @memcpy(i8* %47, i8* %48, i32 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %46, %44, %26
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @fdt_off_dt_strings(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @_fdt_find_string(i8*, i32, i8*) #1

declare dso_local i32 @fdt_size_dt_strings(i8*) #1

declare dso_local i32 @_fdt_splice_string(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
