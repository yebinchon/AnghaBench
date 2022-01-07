; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1.c_ff_g723_1_gen_acb_excitation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1.c_ff_g723_1_gen_acb_excitation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SUBFRAME_LEN = common dso_local global i32 0, align 4
@PITCH_ORDER = common dso_local global i32 0, align 4
@RATE_6300 = common dso_local global i32 0, align 4
@adaptive_cb_gain85 = common dso_local global i32* null, align 8
@adaptive_cb_gain170 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_g723_1_gen_acb_excitation(i32* %0, i32* %1, i32 %2, %struct.TYPE_3__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @SUBFRAME_LEN, align 4
  %18 = load i32, i32* @PITCH_ORDER, align 4
  %19 = add nsw i32 %17, %18
  %20 = sub nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %14, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @ff_g723_1_get_residual(i32* %23, i32* %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @RATE_6300, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %5
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SUBFRAME_LEN, align 4
  %39 = sub nsw i32 %38, 2
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32*, i32** @adaptive_cb_gain85, align 8
  store i32* %42, i32** %13, align 8
  br label %45

43:                                               ; preds = %36, %5
  %44 = load i32*, i32** @adaptive_cb_gain170, align 8
  store i32* %44, i32** %13, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 20
  %50 = load i32*, i32** %13, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %13, align 8
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %73, %45
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @SUBFRAME_LEN, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %23, i64 %59
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* @PITCH_ORDER, align 4
  %63 = call i32 @ff_dot_product(i32* %60, i32* %61, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @av_sat_add32(i32 %64, i32 %65)
  %67 = call i32 @av_sat_dadd32(i32 32768, i32 %66)
  %68 = ashr i32 %67, 16
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %53

76:                                               ; preds = %53
  %77 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %77)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ff_g723_1_get_residual(i32*, i32*, i32) #2

declare dso_local i32 @ff_dot_product(i32*, i32*, i32) #2

declare dso_local i32 @av_sat_dadd32(i32, i32) #2

declare dso_local i32 @av_sat_add32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
