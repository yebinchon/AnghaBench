; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_aes_ctr.c_av_aes_ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_aes_ctr.c_av_aes_ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVAESCTR = type { i64, i32*, i64, i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_aes_ctr_crypt(%struct.AVAESCTR* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.AVAESCTR*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.AVAESCTR* %0, %struct.AVAESCTR** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %9, align 8
  br label %16

16:                                               ; preds = %92, %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ult i32* %17, %18
  br i1 %19, label %20, label %93

20:                                               ; preds = %16
  %21 = load %struct.AVAESCTR*, %struct.AVAESCTR** %5, align 8
  %22 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.AVAESCTR*, %struct.AVAESCTR** %5, align 8
  %27 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.AVAESCTR*, %struct.AVAESCTR** %5, align 8
  %30 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.AVAESCTR*, %struct.AVAESCTR** %5, align 8
  %33 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @av_aes_crypt(i32 %28, i32* %31, i64 %34, i32 1, i32* null, i32 0)
  %36 = load %struct.AVAESCTR*, %struct.AVAESCTR** %5, align 8
  %37 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 8
  %40 = call i32 @av_aes_ctr_increment_be64(i64 %39)
  br label %41

41:                                               ; preds = %25, %20
  %42 = load %struct.AVAESCTR*, %struct.AVAESCTR** %5, align 8
  %43 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.AVAESCTR*, %struct.AVAESCTR** %5, align 8
  %46 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load %struct.AVAESCTR*, %struct.AVAESCTR** %5, align 8
  %54 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 0, %55
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32* @FFMIN(i32* %58, i32* %59)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = ptrtoint i32* %61 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = load %struct.AVAESCTR*, %struct.AVAESCTR** %5, align 8
  %68 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = load %struct.AVAESCTR*, %struct.AVAESCTR** %5, align 8
  %75 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = and i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %82, %41
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = icmp ult i32* %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %7, align 8
  %85 = load i32, i32* %83, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %11, align 8
  %88 = load i32, i32* %86, align 4
  %89 = xor i32 %85, %88
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %6, align 8
  store i32 %89, i32* %90, align 4
  br label %78

92:                                               ; preds = %78
  br label %16

93:                                               ; preds = %16
  ret void
}

declare dso_local i32 @av_aes_crypt(i32, i32*, i64, i32, i32*, i32) #1

declare dso_local i32 @av_aes_ctr_increment_be64(i64) #1

declare dso_local i32* @FFMIN(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
