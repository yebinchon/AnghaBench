; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_extrafield_contains.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_extrafield_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_OK = common dso_local global i32 0, align 4
@MZ_PARAM_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_zip_extrafield_contains(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load i32, i32* @MZ_OK, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %19, i32* %5, align 4
  br label %33

20:                                               ; preds = %15
  %21 = call i32 @mz_stream_mem_create(i8** %10)
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mz_stream_mem_set_buffer(i8* %22, i8* %24, i32 %25)
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @mz_zip_extrafield_find(i8* %27, i32 %28, i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = call i32 @mz_stream_mem_delete(i8** %10)
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %20, %18
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @mz_stream_mem_create(i8**) #1

declare dso_local i32 @mz_stream_mem_set_buffer(i8*, i8*, i32) #1

declare dso_local i32 @mz_zip_extrafield_find(i8*, i32, i32*) #1

declare dso_local i32 @mz_stream_mem_delete(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
