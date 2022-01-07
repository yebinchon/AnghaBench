; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_udp.c_ff_udp_set_remote_url.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_udp.c_ff_udp_set_remote_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_udp_set_remote_url(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca [10 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @av_url_split(i32* null, i32 0, i32* null, i32 0, i8* %15, i32 256, i32* %9, i32* null, i32 0, i8* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @udp_set_url(%struct.TYPE_6__* %18, i32* %20, i8* %21, i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EIO, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %88

33:                                               ; preds = %2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = bitcast i32* %35 to %struct.sockaddr*
  %37 = call i32 @ff_is_multicast_address(%struct.sockaddr* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 63)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %87

44:                                               ; preds = %33
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @av_find_info_tag(i8* %45, i32 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %86

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %11, align 4
  %53 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %54 = call i32 @strtol(i8* %53, i32* null, i32 10)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %49
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = bitcast i32* %69 to %struct.sockaddr*
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @connect(i32 %67, %struct.sockaddr* %70, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %64
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = call i32 @ff_log_net_error(%struct.TYPE_6__* %79, i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @EIO, align 4
  %83 = call i32 @AVERROR(i32 %82)
  store i32 %83, i32* %3, align 4
  br label %88

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84, %61, %49
  br label %86

86:                                               ; preds = %85, %44
  br label %87

87:                                               ; preds = %86, %33
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %76, %30
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @av_url_split(i32*, i32, i32*, i32, i8*, i32, i32*, i32*, i32, i8*) #1

declare dso_local i64 @udp_set_url(%struct.TYPE_6__*, i32*, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_is_multicast_address(%struct.sockaddr*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @av_find_info_tag(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i64) #1

declare dso_local i32 @ff_log_net_error(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
