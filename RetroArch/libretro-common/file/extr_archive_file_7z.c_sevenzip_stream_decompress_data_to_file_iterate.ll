; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_stream_decompress_data_to_file_iterate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_stream_decompress_data_to_file_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sevenzip_context_t = type { i64, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@SZ_ERROR_FAIL = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sevenzip_stream_decompress_data_to_file_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sevenzip_stream_decompress_data_to_file_iterate(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sevenzip_context_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.sevenzip_context_t*
  store %struct.sevenzip_context_t* %10, %struct.sevenzip_context_t** %4, align 8
  %11 = load i64, i64* @SZ_ERROR_FAIL, align 8
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %4, align 8
  %13 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %12, i32 0, i32 7
  %14 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %4, align 8
  %15 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %4, align 8
  %18 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %4, align 8
  %21 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %20, i32 0, i32 4
  %22 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %4, align 8
  %23 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %22, i32 0, i32 0
  %24 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %4, align 8
  %25 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %24, i32 0, i32 3
  %26 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %4, align 8
  %27 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %26, i32 0, i32 2
  %28 = call i64 @SzArEx_Extract(i32* %13, i32* %16, i32 %19, i32* %21, i64* %23, i64* %6, i64* %7, i64* %8, i32* %25, i32* %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @SZ_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

33:                                               ; preds = %1
  %34 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %4, align 8
  %35 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %4, align 8
  %40 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %41, %42
  %44 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %4, align 8
  %45 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %43, i64* %47, align 8
  br label %48

48:                                               ; preds = %38, %33
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @SzArEx_Extract(i32*, i32*, i32, i32*, i64*, i64*, i64*, i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
