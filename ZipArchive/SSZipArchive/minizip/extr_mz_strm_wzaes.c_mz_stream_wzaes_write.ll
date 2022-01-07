; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_wzaes.c_mz_stream_wzaes_write.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_wzaes.c_mz_stream_wzaes_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@MZ_PARAM_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_stream_wzaes_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  store i64 8, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %20, i64* %4, align 8
  br label %92

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %81, %21
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %11, align 8
  %26 = sub nsw i64 %24, %25
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %11, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @memcpy(i64 %35, i32* %36, i64 %37)
  %39 = load i64, i64* %10, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 %39
  store i32* %41, i32** %9, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @mz_stream_wzaes_ctr_encrypt(i8* %42, i32* %46, i64 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @mz_crypt_hmac_update(i32 %51, i64 %54, i64 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @mz_stream_write(i32 %60, i64 %63, i64 %64)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %32
  %69 = load i64, i64* %12, align 8
  store i64 %69, i64* %4, align 8
  br label %92

70:                                               ; preds = %32
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %11, align 8
  br label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i64, i64* %12, align 8
  %80 = icmp sgt i64 %79, 0
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i1 [ false, %74 ], [ %80, %78 ]
  br i1 %82, label %22, label %83

83:                                               ; preds = %81
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  %91 = load i64, i64* %11, align 8
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %83, %68, %19
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @mz_stream_wzaes_ctr_encrypt(i8*, i32*, i64) #1

declare dso_local i32 @mz_crypt_hmac_update(i32, i64, i64) #1

declare dso_local i64 @mz_stream_write(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
