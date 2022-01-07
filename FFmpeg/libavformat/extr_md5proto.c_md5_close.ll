; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_md5proto.c_md5_close.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_md5proto.c_md5_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, i32, %struct.MD5Context* }
%struct.MD5Context = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"md5:\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @md5_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md5_close(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.MD5Context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca [64 x i32], align 16
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = load %struct.MD5Context*, %struct.MD5Context** %12, align 8
  store %struct.MD5Context* %13, %struct.MD5Context** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %18 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %21 = call i32 @av_md5_final(i32 %19, i32* %20)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %37, %1
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 64
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snprintf(i32* %31, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 %43
  store i32 10, i32* %44, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @av_strstart(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %40
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = call i32 @ffurl_open_whitelist(%struct.TYPE_7__** %8, i8* %51, i32 %52, i32* %54, i32* null, i32 %57, i32 %60, %struct.TYPE_7__* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %2, align 4
  br label %96

67:                                               ; preds = %50
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 %70, 2
  %72 = add nsw i32 %71, 1
  %73 = call i32 @ffurl_write(%struct.TYPE_7__* %68, i32* %69, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = call i32 @ffurl_close(%struct.TYPE_7__* %74)
  br label %91

76:                                               ; preds = %40
  %77 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 %78, 2
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* @stdout, align 4
  %82 = call i32 @fwrite(i32* %77, i32 1, i32 %80, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = mul nsw i32 %83, 2
  %85 = add nsw i32 %84, 1
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = load i32, i32* @errno, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %87, %76
  br label %91

91:                                               ; preds = %90, %67
  %92 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %93 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %92, i32 0, i32 0
  %94 = call i32 @av_freep(i32* %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %65
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @av_md5_final(i32, i32*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @av_strstart(i8*, i8*, i8**) #1

declare dso_local i32 @ffurl_open_whitelist(%struct.TYPE_7__**, i8*, i32, i32*, i32*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ffurl_write(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @ffurl_close(%struct.TYPE_7__*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_freep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
