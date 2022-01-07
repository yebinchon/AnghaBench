; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpgv/extr_mpgv_packetizer.c_mpgv_read_sequence_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpgv/extr_mpgv_packetizer.c_mpgv_read_sequence_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpgv_read_sequence_header.frame_rate = internal constant [16 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 24000, i32 1001], [2 x i32] [i32 24, i32 1], [2 x i32] [i32 25, i32 1], [2 x i32] [i32 30000, i32 1001], [2 x i32] [i32 30, i32 1], [2 x i32] [i32 50, i32 1], [2 x i32] [i32 60000, i32 1001], [2 x i32] [i32 60, i32 1], [2 x i32] [i32 15, i32 1001], [2 x i32] [i32 5, i32 1001], [2 x i32] [i32 10, i32 1001], [2 x i32] [i32 12, i32 1001], [2 x i32] [i32 15, i32 1001], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer], align 16
@mpgv_read_sequence_header.aspect_ratio = internal constant <{ [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [11 x [2 x i32]] }> <{ [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 1], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 16, i32 9], [2 x i32] [i32 221, i32 100], [11 x [2 x i32]] zeroinitializer }>, align 16
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*, i32*, i32*, i32*, i32*, i32*)* @mpgv_read_sequence_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpgv_read_sequence_header(i32* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [8 x i32], align 16
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 0
  %30 = call i64 @bytestream_peek_at(i32* %27, i64 %28, i32* %29, i32 32)
  store i64 %30, i64* %18, align 8
  %31 = load i64, i64* %18, align 8
  %32 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = load i64, i64* %18, align 8
  store i64 %35, i64* %9, align 8
  br label %119

36:                                               ; preds = %8
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 4
  %38 = load i32, i32* %37, align 16
  %39 = shl i32 %38, 4
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 5
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 4
  %43 = or i32 %39, %42
  store i32 %43, i32* %19, align 4
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 5
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 15
  %47 = shl i32 %46, 8
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 6
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %47, %49
  store i32 %50, i32* %20, align 4
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 7
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 4
  store i32 %53, i32* %22, align 4
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 7
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 15
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %36
  %60 = load i32, i32* %20, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %22, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %21, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65, %62, %59, %36
  %69 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  store i64 %69, i64* %9, align 8
  br label %119

70:                                               ; preds = %65
  %71 = load i32, i32* %19, align 4
  %72 = load i32*, i32** %12, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i32*, i32** %13, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %21, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* @mpgv_read_sequence_header.frame_rate, i64 0, i64 %76
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %77, i64 0, i64 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %14, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %21, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* @mpgv_read_sequence_header.frame_rate, i64 0, i64 %82
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %15, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %22, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* bitcast (<{ [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [11 x [2 x i32]] }>* @mpgv_read_sequence_header.aspect_ratio to [16 x [2 x i32]]*), i64 0, i64 %88
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %89, i64 0, i64 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %20, align 4
  %93 = mul i32 %91, %92
  store i32 %93, i32* %23, align 4
  %94 = load i32, i32* %22, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* bitcast (<{ [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [11 x [2 x i32]] }>* @mpgv_read_sequence_header.aspect_ratio to [16 x [2 x i32]]*), i64 0, i64 %95
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %96, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %19, align 4
  %100 = mul i32 %98, %99
  store i32 %100, i32* %24, align 4
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* %24, align 4
  %103 = call i32 @vc_container_maths_gcd(i32 %101, i32 %102)
  store i32 %103, i32* %25, align 4
  %104 = load i32, i32* %25, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %70
  %107 = load i32, i32* %25, align 4
  %108 = load i32, i32* %23, align 4
  %109 = udiv i32 %108, %107
  store i32 %109, i32* %23, align 4
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* %24, align 4
  %112 = udiv i32 %111, %110
  store i32 %112, i32* %24, align 4
  br label %113

113:                                              ; preds = %106, %70
  %114 = load i32, i32* %23, align 4
  %115 = load i32*, i32** %16, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %24, align 4
  %117 = load i32*, i32** %17, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %118, i64* %9, align 8
  br label %119

119:                                              ; preds = %113, %68, %34
  %120 = load i64, i64* %9, align 8
  ret i64 %120
}

declare dso_local i64 @bytestream_peek_at(i32*, i64, i32*, i32) #1

declare dso_local i32 @vc_container_maths_gcd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
