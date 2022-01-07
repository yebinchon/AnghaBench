; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_speedhq.c_decode_alpha_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_speedhq.c_decode_alpha_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@re = common dso_local global i32 0, align 4
@ff_dc_alpha_run_vlc_le = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ALPHA_VLC_BITS = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_dc_alpha_level_vlc_le = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32)* @decode_alpha_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_alpha_block(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [128 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %18 = getelementptr inbounds [128 x i32], [128 x i32]* %12, i64 0, i64 0
  %19 = call i32 @memset(i32* %18, i32 0, i32 512)
  %20 = load i32, i32* @re, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @OPEN_READER(i32 %20, i32* %21)
  br label %23

23:                                               ; preds = %44, %5
  %24 = load i32, i32* @re, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @UPDATE_CACHE_LE(i32 %24, i32* %25)
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @re, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ff_dc_alpha_run_vlc_le, i32 0, i32 0), align 4
  %31 = load i32, i32* @ALPHA_VLC_BITS, align 4
  %32 = call i32 @GET_VLC(i32 %27, i32 %28, i32* %29, i32 %30, i32 %31, i32 2)
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %59

36:                                               ; preds = %23
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp sge i32 %40, 128
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %6, align 4
  br label %99

44:                                               ; preds = %36
  %45 = load i32, i32* @re, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @UPDATE_CACHE_LE(i32 %45, i32* %46)
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* @re, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ff_dc_alpha_level_vlc_le, i32 0, i32 0), align 4
  %52 = load i32, i32* @ALPHA_VLC_BITS, align 4
  %53 = call i32 @GET_VLC(i32 %48, i32 %49, i32* %50, i32 %51, i32 %52, i32 2)
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds [128 x i32], [128 x i32]* %12, i64 0, i64 %57
  store i32 %54, i32* %58, align 4
  br label %23

59:                                               ; preds = %35
  %60 = load i32, i32* @re, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @CLOSE_READER(i32 %60, i32* %61)
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %95, %59
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %98

66:                                               ; preds = %63
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %84, %66
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 16
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i32, i32* %15, align 4
  %72 = mul nsw i32 %71, 16
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [128 x i32], [128 x i32]* %12, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, %77
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %70
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %67

87:                                               ; preds = %67
  %88 = load i32*, i32** %10, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @memcpy(i32* %88, i32* %89, i32 16)
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %10, align 8
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %63

98:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %42
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE_LE(i32, i32*) #1

declare dso_local i32 @GET_VLC(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
