; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_aes_ctr.c_av_aes_ctr_set_iv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_aes_ctr.c_av_aes_ctr_set_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVAESCTR = type { i64, i64 }

@AES_CTR_IV_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_aes_ctr_set_iv(%struct.AVAESCTR* %0, i32* %1) #0 {
  %3 = alloca %struct.AVAESCTR*, align 8
  %4 = alloca i32*, align 8
  store %struct.AVAESCTR* %0, %struct.AVAESCTR** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.AVAESCTR*, %struct.AVAESCTR** %3, align 8
  %6 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i64, i64* @AES_CTR_IV_SIZE, align 8
  %10 = call i32 @memcpy(i64 %7, i32* %8, i64 %9)
  %11 = load %struct.AVAESCTR*, %struct.AVAESCTR** %3, align 8
  %12 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AES_CTR_IV_SIZE, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* @AES_CTR_IV_SIZE, align 8
  %17 = sub i64 8, %16
  %18 = call i32 @memset(i64 %15, i32 0, i64 %17)
  %19 = load %struct.AVAESCTR*, %struct.AVAESCTR** %3, align 8
  %20 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  ret void
}

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
