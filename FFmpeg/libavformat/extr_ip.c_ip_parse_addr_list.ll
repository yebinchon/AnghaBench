; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ip.c_ip_parse_addr_list.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ip.c_ip_parse_addr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.addrinfo = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.sockaddr_storage**, i32*)* @ip_parse_addr_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_parse_addr_list(i8* %0, i8* %1, %struct.sockaddr_storage** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_storage**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sockaddr_storage, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.sockaddr_storage** %2, %struct.sockaddr_storage*** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  br label %13

13:                                               ; preds = %73, %4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i1 [ false, %13 ], [ %21, %16 ]
  br i1 %23, label %24, label %74

24:                                               ; preds = %22
  %25 = call i8* @av_get_token(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %5, align 4
  br label %75

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* @SOCK_DGRAM, align 4
  %35 = load i32, i32* @AF_UNSPEC, align 4
  %36 = call %struct.addrinfo* @ff_ip_resolve_host(i8* %32, i8* %33, i32 0, i32 %34, i32 %35, i32 0)
  store %struct.addrinfo* %36, %struct.addrinfo** %10, align 8
  %37 = call i32 @av_freep(i8** %11)
  %38 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %39 = icmp ne %struct.addrinfo* %38, null
  br i1 %39, label %40, label %63

40:                                               ; preds = %31
  %41 = bitcast %struct.sockaddr_storage* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 4, i1 false)
  %42 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(%struct.sockaddr_storage* %12, i32 %44, i32 %47)
  %49 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %50 = call i32 @freeaddrinfo(%struct.addrinfo* %49)
  %51 = load %struct.sockaddr_storage**, %struct.sockaddr_storage*** %8, align 8
  %52 = bitcast %struct.sockaddr_storage** %51 to i8**
  %53 = load i32*, i32** %9, align 8
  %54 = bitcast %struct.sockaddr_storage* %12 to i32*
  %55 = call i32 @av_dynarray2_add(i8** %52, i32* %53, i32 4, i32* %54)
  %56 = load %struct.sockaddr_storage**, %struct.sockaddr_storage*** %8, align 8
  %57 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %56, align 8
  %58 = icmp ne %struct.sockaddr_storage* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %40
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %5, align 4
  br label %75

62:                                               ; preds = %40
  br label %66

63:                                               ; preds = %31
  %64 = load i32, i32* @EINVAL, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %5, align 4
  br label %75

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %7, align 8
  br label %73

73:                                               ; preds = %70, %66
  br label %13

74:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %63, %59, %28
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i8* @av_get_token(i8**, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.addrinfo* @ff_ip_resolve_host(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @av_freep(i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @av_dynarray2_add(i8**, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
