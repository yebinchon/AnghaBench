; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpgv/extr_mpgv_packetizer.c_mpgv_read_picture_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpgv/extr_mpgv_packetizer.c_mpgv_read_picture_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*, i32*)* @mpgv_read_picture_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpgv_read_picture_header(i32* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [2 x i32], align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add i64 %13, 4
  %15 = add i64 %14, 1
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %17 = call i64 @bytestream_peek_at(i32* %12, i64 %15, i32* %16, i32 8)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* %10, align 8
  store i64 %22, i64* %5, align 8
  br label %38

23:                                               ; preds = %4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 2
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 6
  %30 = or i32 %26, %29
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 3
  %35 = and i32 %34, 7
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %23, %21
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i64 @bytestream_peek_at(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
