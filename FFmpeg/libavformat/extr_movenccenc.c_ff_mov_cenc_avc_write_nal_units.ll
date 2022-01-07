; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenccenc.c_ff_mov_cenc_avc_write_nal_units.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenccenc.c_ff_mov_cenc_avc_write_nal_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"CENC-AVC: remaining size %d smaller than nal length+type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"CENC-AVC: nal size %d remaining %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mov_cenc_avc_write_nal_units(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @mov_cenc_start_packet(i32* %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %15, align 4
  store i32 %22, i32* %7, align 4
  br label %104

23:                                               ; preds = %6
  br label %24

24:                                               ; preds = %75, %23
  %25 = load i32, i32* %13, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @av_log(i32* %33, i32 %34, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37)
  store i32 -1, i32* %7, align 4
  br label %104

39:                                               ; preds = %27
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @avio_write(i32* %40, i32* %41, i32 %43)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %45

45:                                               ; preds = %56, %39
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32, i32* %14, align 4
  %51 = shl i32 %50, 8
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %12, align 8
  %54 = load i32, i32* %52, align 4
  %55 = or i32 %51, %54
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %16, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65, %59
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @av_log(i32* %70, i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  store i32 -1, i32* %7, align 4
  br label %104

75:                                               ; preds = %65
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %80, 1
  %82 = call i32 @mov_cenc_write_encrypted(i32* %76, i32* %77, i32* %79, i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %12, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %13, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %93, 1
  %95 = call i32 @auxiliary_info_add_subsample(i32* %90, i32 %92, i32 %94)
  br label %24

96:                                               ; preds = %24
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @mov_cenc_end_packet(i32* %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %7, align 4
  br label %104

103:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %103, %101, %69, %32, %21
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @mov_cenc_start_packet(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @mov_cenc_write_encrypted(i32*, i32*, i32*, i32) #1

declare dso_local i32 @auxiliary_info_add_subsample(i32*, i32, i32) #1

declare dso_local i32 @mov_cenc_end_packet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
