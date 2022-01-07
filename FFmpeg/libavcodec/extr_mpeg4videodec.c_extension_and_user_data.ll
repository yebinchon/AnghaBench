; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_extension_and_user_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_extension_and_user_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USER_DATA_STARTCODE = common dso_local global i64 0, align 8
@EXT_STARTCODE = common dso_local global i64 0, align 8
@QUANT_MATRIX_EXT_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @extension_and_user_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extension_and_user_data(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @show_bits_long(i32* %9, i32 32)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @USER_DATA_STARTCODE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @EXT_STARTCODE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14, %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %41

24:                                               ; preds = %21, %18
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @EXT_STARTCODE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @skip_bits_long(i32* %29, i32 32)
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @get_bits(i32* %31, i32 4)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @QUANT_MATRIX_EXT_ID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @read_quant_matrix_ext(i32* %37, i32* %38)
  br label %40

40:                                               ; preds = %36, %28
  br label %41

41:                                               ; preds = %40, %24, %21
  br label %42

42:                                               ; preds = %41, %14
  ret void
}

declare dso_local i64 @show_bits_long(i32*, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @read_quant_matrix_ext(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
