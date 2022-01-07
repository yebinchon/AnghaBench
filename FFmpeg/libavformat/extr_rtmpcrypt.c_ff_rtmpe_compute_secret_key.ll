; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpcrypt.c_ff_rtmpe_compute_secret_key.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpcrypt.c_ff_rtmpe_compute_secret_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rtmpe_compute_secret_key(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca [128 x i32], align 16
  %12 = alloca [32 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @ff_rtmp_calc_digest_pos(i32* %22, i32 1532, i32 632, i32 772)
  store i32 %23, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %85

27:                                               ; preds = %21
  br label %35

28:                                               ; preds = %4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @ff_rtmp_calc_digest_pos(i32* %29, i32 768, i32 632, i32 8)
  store i32 %30, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %5, align 4
  br label %85

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @ff_rtmp_calc_digest_pos(i32* %36, i32 768, i32 632, i32 8)
  store i32 %37, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %5, align 4
  br label %85

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 0
  %50 = call i32 @ff_dh_compute_shared_secret_key(i32 %44, i32* %48, i32 128, i32* %49, i32 512)
  store i32 %50, i32* %15, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %5, align 4
  br label %85

54:                                               ; preds = %41
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 0
  %60 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %61 = call i32 @ff_rtmp_calc_digest(i32* %58, i32 128, i32 0, i32* %59, i32 128, i32* %60)
  store i32 %61, i32* %15, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %5, align 4
  br label %85

65:                                               ; preds = %54
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %69 = call i32 @av_rc4_init(i32* %67, i32* %68, i32 128, i32 1)
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 0
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %76 = call i32 @ff_rtmp_calc_digest(i32* %73, i32 128, i32 0, i32* %74, i32 128, i32* %75)
  store i32 %76, i32* %15, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %5, align 4
  br label %85

80:                                               ; preds = %65
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %84 = call i32 @av_rc4_init(i32* %82, i32* %83, i32 128, i32 1)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %78, %63, %52, %39, %32, %25
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @ff_rtmp_calc_digest_pos(i32*, i32, i32, i32) #1

declare dso_local i32 @ff_dh_compute_shared_secret_key(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ff_rtmp_calc_digest(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @av_rc4_init(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
