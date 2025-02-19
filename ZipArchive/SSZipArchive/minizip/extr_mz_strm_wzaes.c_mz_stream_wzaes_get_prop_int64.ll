; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_wzaes.c_mz_stream_wzaes_get_prop_int64.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_wzaes.c_mz_stream_wzaes_get_prop_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@MZ_AES_PW_VERIFY_SIZE = common dso_local global i64 0, align 8
@MZ_AES_AUTHCODE_SIZE = common dso_local global i64 0, align 8
@MZ_EXIST_ERROR = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_stream_wzaes_get_prop_int64(i8* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %39 [
    i32 130, label %12
    i32 128, label %17
    i32 129, label %22
    i32 131, label %27
    i32 132, label %36
  ]

12:                                               ; preds = %3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %7, align 8
  store i64 %15, i64* %16, align 8
  br label %41

17:                                               ; preds = %3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %7, align 8
  store i64 %20, i64* %21, align 8
  br label %41

22:                                               ; preds = %3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  br label %41

27:                                               ; preds = %3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = call i64 @MZ_AES_SALT_LENGTH(i64 %31)
  %33 = load i64, i64* @MZ_AES_PW_VERIFY_SIZE, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  br label %41

36:                                               ; preds = %3
  %37 = load i64, i64* @MZ_AES_AUTHCODE_SIZE, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @MZ_EXIST_ERROR, align 4
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %36, %27, %22, %17, %12
  %42 = load i32, i32* @MZ_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @MZ_AES_SALT_LENGTH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
