; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sctp.c_ff_sctp_recvmsg.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sctp.c_ff_sctp_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sctp_sndrcvinfo = type { i32 }
%struct.iovec = type { i64, i8* }
%struct.msghdr = type { i32, i8*, i32, i32, i32, %struct.iovec*, %struct.sockaddr*, i32 }
%struct.cmsghdr = type { i64, i64 }

@IPPROTO_SCTP = common dso_local global i64 0, align 8
@SCTP_SNDRCV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, %struct.sockaddr*, i32*, %struct.sctp_sndrcvinfo*, i32*)* @ff_sctp_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_sctp_recvmsg(i32 %0, i8* %1, i64 %2, %struct.sockaddr* %3, i32* %4, %struct.sctp_sndrcvinfo* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sctp_sndrcvinfo*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.iovec, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.msghdr, align 8
  %21 = alloca %struct.cmsghdr*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.sctp_sndrcvinfo* %5, %struct.sctp_sndrcvinfo** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = call i32 @CMSG_SPACE(i32 4)
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  %27 = bitcast %struct.msghdr* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 56, i1 false)
  store %struct.cmsghdr* null, %struct.cmsghdr** %21, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 6
  store %struct.sockaddr* %32, %struct.sockaddr** %33, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %7
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %37, align 4
  br label %40

39:                                               ; preds = %7
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 5
  store %struct.iovec* %17, %struct.iovec** %43, align 8
  %44 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 1
  store i8* %26, i8** %45, align 8
  %46 = trunc i64 %24 to i32
  %47 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %15, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32*, i32** %15, align 8
  %53 = load i32, i32* %52, align 4
  br label %55

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32 [ %53, %51 ], [ 0, %54 ]
  %57 = call i32 @recvmsg(i32 %48, %struct.msghdr* %20, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %107

61:                                               ; preds = %55
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32*, i32** %15, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %15, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %68
  %76 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %20)
  store %struct.cmsghdr* %76, %struct.cmsghdr** %21, align 8
  br label %77

77:                                               ; preds = %94, %75
  %78 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %79 = icmp ne %struct.cmsghdr* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load i64, i64* @IPPROTO_SCTP, align 8
  %82 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %83 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i64, i64* @SCTP_SNDRCV, align 8
  %88 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %89 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %97

93:                                               ; preds = %86, %80
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %96 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %20, %struct.cmsghdr* %95)
  store %struct.cmsghdr* %96, %struct.cmsghdr** %21, align 8
  br label %77

97:                                               ; preds = %92, %77
  %98 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %99 = icmp ne %struct.cmsghdr* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %14, align 8
  %102 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %103 = call i32 @CMSG_DATA(%struct.cmsghdr* %102)
  %104 = call i32 @memcpy(%struct.sctp_sndrcvinfo* %101, i32 %103, i32 4)
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i32, i32* %16, align 4
  store i32 %106, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %107

107:                                              ; preds = %105, %59
  %108 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32 @CMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @memcpy(%struct.sctp_sndrcvinfo*, i32, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
