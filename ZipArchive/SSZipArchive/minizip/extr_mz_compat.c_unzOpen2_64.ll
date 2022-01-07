; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzOpen2_64.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzOpen2_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @unzOpen2_64(i8* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = call i32* @mz_stream_create(i8** %7, i32* %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32* null, i32** %3, align 8
  br label %41

17:                                               ; preds = %10
  br label %23

18:                                               ; preds = %2
  %19 = call i32* @mz_stream_os_create(i8** %7)
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32* null, i32** %3, align 8
  br label %41

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %27 = call i64 @mz_stream_open(i8* %24, i8* %25, i32 %26)
  %28 = load i64, i64* @MZ_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @mz_stream_delete(i8** %7)
  store i32* null, i32** %3, align 8
  br label %41

32:                                               ; preds = %23
  %33 = load i8*, i8** %7, align 8
  %34 = call i32* @unzOpen_MZ(i8* %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @mz_stream_delete(i8** %7)
  store i32* null, i32** %3, align 8
  br label %41

39:                                               ; preds = %32
  %40 = load i32*, i32** %6, align 8
  store i32* %40, i32** %3, align 8
  br label %41

41:                                               ; preds = %39, %37, %30, %21, %16
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
}

declare dso_local i32* @mz_stream_create(i8**, i32*) #1

declare dso_local i32* @mz_stream_os_create(i8**) #1

declare dso_local i64 @mz_stream_open(i8*, i8*, i32) #1

declare dso_local i32 @mz_stream_delete(i8**) #1

declare dso_local i32* @unzOpen_MZ(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
