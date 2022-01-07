; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtsp.c_get_sockaddr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtsp.c_get_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32 }

@AI_NUMERICHOST = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"getaddrinfo(%s): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.sockaddr_storage*)* @get_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sockaddr(i32* %0, i8* %1, %struct.sockaddr_storage* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca %struct.addrinfo, align 4
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %7, align 8
  %11 = bitcast %struct.addrinfo* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false)
  store %struct.addrinfo* null, %struct.addrinfo** %9, align 8
  %12 = load i32, i32* @AI_NUMERICHOST, align 4
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @getaddrinfo(i8* %14, i32* null, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %15, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @AV_LOG_ERROR, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @gai_strerror(i32 %21)
  %23 = call i32 @av_log(i32* %18, i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %22)
  store i32 -1, i32* %4, align 4
  br label %36

24:                                               ; preds = %3
  %25 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %26 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @FFMIN(i32 4, i32 %31)
  %33 = call i32 @memcpy(%struct.sockaddr_storage* %25, i32 %28, i32 %32)
  %34 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %35 = call i32 @freeaddrinfo(%struct.addrinfo* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, i32, i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
