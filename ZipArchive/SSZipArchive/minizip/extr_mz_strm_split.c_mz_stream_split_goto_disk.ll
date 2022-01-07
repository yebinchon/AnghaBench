; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_split.c_mz_stream_split_goto_disk.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_split.c_mz_stream_split_goto_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_OPEN_MODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @mz_stream_split_goto_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mz_stream_split_goto_disk(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load i64, i64* @MZ_OK, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* @MZ_OK, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @mz_stream_is_open(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MZ_OPEN_MODE_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @MZ_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @mz_stream_split_open_disk(i8* %33, i64 %34)
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %32, %28
  br label %67

37:                                               ; preds = %21, %2
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @MZ_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43, %37
  %48 = load i8*, i8** %3, align 8
  %49 = call i64 @mz_stream_split_close_disk(i8* %48)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @MZ_OK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @mz_stream_split_open_disk(i8* %54, i64 %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @MZ_OK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %53
  br label %65

65:                                               ; preds = %64, %47
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i64, i64* %6, align 8
  ret i64 %68
}

declare dso_local i64 @mz_stream_is_open(i32) #1

declare dso_local i64 @mz_stream_split_open_disk(i8*, i64) #1

declare dso_local i64 @mz_stream_split_close_disk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
