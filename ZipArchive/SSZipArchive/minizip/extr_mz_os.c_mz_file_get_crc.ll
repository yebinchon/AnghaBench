; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_os.c_mz_file_get_crc.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_os.c_mz_file_get_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_OK = common dso_local global i64 0, align 8
@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_file_get_crc(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [16384 x i32], align 16
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %10 = load i64, i64* @MZ_OK, align 8
  store i64 %10, i64* %8, align 8
  %11 = call i32 @mz_stream_os_create(i8** %5)
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %15 = call i64 @mz_stream_os_open(i8* %12, i8* %13, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @MZ_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds [16384 x i32], [16384 x i32]* %9, i64 0, i64 0
  %23 = call i64 @mz_stream_os_read(i8* %21, i32* %22, i32 65536)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %8, align 8
  br label %42

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds [16384 x i32], [16384 x i32]* %9, i64 0, i64 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @mz_crypt_crc32_update(i32 %29, i32* %30, i64 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @MZ_OK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = icmp sgt i64 %38, 0
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i1 [ false, %33 ], [ %39, %37 ]
  br i1 %41, label %20, label %42

42:                                               ; preds = %40, %26
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @mz_stream_os_close(i8* %43)
  br label %45

45:                                               ; preds = %42, %2
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  %48 = call i32 @mz_stream_os_delete(i8** %5)
  %49 = load i64, i64* %8, align 8
  ret i64 %49
}

declare dso_local i32 @mz_stream_os_create(i8**) #1

declare dso_local i64 @mz_stream_os_open(i8*, i8*, i32) #1

declare dso_local i64 @mz_stream_os_read(i8*, i32*, i32) #1

declare dso_local i32 @mz_crypt_crc32_update(i32, i32*, i64) #1

declare dso_local i32 @mz_stream_os_close(i8*) #1

declare dso_local i32 @mz_stream_os_delete(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
