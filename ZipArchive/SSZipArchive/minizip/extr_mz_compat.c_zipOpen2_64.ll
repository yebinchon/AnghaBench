; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_zipOpen2_64.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_zipOpen2_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zipOpen2_64(i8* %0, i32 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* null, i32** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @zipConvertAppendToStreamMode(i32 %13)
  store i32 %14, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i64*, i64** %9, align 8
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32* @mz_stream_create(i8** %12, i32* %20)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32* null, i32** %5, align 8
  br label %50

24:                                               ; preds = %17
  br label %30

25:                                               ; preds = %4
  %26 = call i32* @mz_stream_os_create(i8** %12)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32* null, i32** %5, align 8
  br label %50

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i8*, i8** %12, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @mz_stream_open(i8* %31, i8* %32, i32 %33)
  %35 = load i64, i64* @MZ_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @mz_stream_delete(i8** %12)
  store i32* null, i32** %5, align 8
  br label %50

39:                                               ; preds = %30
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i8**, i8*** %8, align 8
  %43 = call i32* @zipOpen_MZ(i8* %40, i32 %41, i8** %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 @mz_stream_delete(i8** %12)
  store i32* null, i32** %5, align 8
  br label %50

48:                                               ; preds = %39
  %49 = load i32*, i32** %10, align 8
  store i32* %49, i32** %5, align 8
  br label %50

50:                                               ; preds = %48, %46, %37, %28, %23
  %51 = load i32*, i32** %5, align 8
  ret i32* %51
}

declare dso_local i32 @zipConvertAppendToStreamMode(i32) #1

declare dso_local i32* @mz_stream_create(i8**, i32*) #1

declare dso_local i32* @mz_stream_os_create(i8**) #1

declare dso_local i64 @mz_stream_open(i8*, i8*, i32) #1

declare dso_local i32 @mz_stream_delete(i8**) #1

declare dso_local i32* @zipOpen_MZ(i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
