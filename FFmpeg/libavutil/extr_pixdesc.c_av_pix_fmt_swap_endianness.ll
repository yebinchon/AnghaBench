; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_av_pix_fmt_swap_endianness.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_av_pix_fmt_swap_endianness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"le\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_pix_fmt_swap_endianness(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_3__* @av_pix_fmt_desc_get(i32 %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %18, i32* %2, align 4
  br label %53

19:                                               ; preds = %11
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @av_strlcpy(i8* %20, i8* %23, i32 16)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %26 = call i32 @strlen(i8* %25)
  %27 = sub nsw i32 %26, 2
  store i32 %27, i32* %6, align 4
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %19
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %42, i32* %2, align 4
  br label %53

43:                                               ; preds = %34, %19
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = xor i32 %48, 14
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %46, align 1
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %52 = call i32 @get_pix_fmt_internal(i8* %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %43, %41, %17
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_3__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @get_pix_fmt_internal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
