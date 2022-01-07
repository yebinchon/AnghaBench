; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_swfdec.c_swf_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_swfdec.c_swf_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_14__*, i8*, i8*, i32 }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SWF compressed file detected\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"zlib support is required to read SWF compressed files\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AVFMTCTX_NOHEADER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ZBUF_SIZE = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8
@zlib_refill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @swf_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swf_read_header(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = call i32 @avio_rb32(%struct.TYPE_14__* %15)
  %17 = and i32 %16, -256
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = call i32 @avio_rl32(%struct.TYPE_14__* %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @MKBETAG(float 6.700000e+01, i8 signext 87, i8 signext 83, i32 0)
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = load i32, i32* @AV_LOG_INFO, align 4
  %26 = call i32 @av_log(%struct.TYPE_15__* %24, i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = call i32 @av_log(%struct.TYPE_15__* %27, i32 %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %65

32:                                               ; preds = %1
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @MKBETAG(float 7.000000e+01, i8 signext 87, i8 signext 83, i32 0)
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EIO, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %65

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = call i32 @avio_r8(%struct.TYPE_14__* %41)
  %43 = ashr i32 %42, 3
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 4, %44
  %46 = sub nsw i32 %45, 3
  %47 = add nsw i32 %46, 7
  %48 = sdiv i32 %47, 8
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @avio_skip(%struct.TYPE_14__* %49, i32 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = call i32 @avio_rl16(%struct.TYPE_14__* %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = call i32 @avio_rl16(%struct.TYPE_14__* %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @AVFMTCTX_NOHEADER, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %40, %36, %23
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @avio_rb32(%struct.TYPE_14__*) #1

declare dso_local i32 @avio_rl32(%struct.TYPE_14__*) #1

declare dso_local i32 @MKBETAG(float, i8 signext, i8 signext, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_r8(%struct.TYPE_14__*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @avio_rl16(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
