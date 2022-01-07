; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sctp.c_ff_sctp_send.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sctp.c_ff_sctp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sndrcvinfo = type { i32 }
%struct.msghdr = type { i32, i32, i8*, i64, %struct.iovec*, i64, i32*, i32 }
%struct.iovec = type { i64, i8* }
%struct.cmsghdr = type { i32, i32, i32 }

@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SCTP_SNDRCV = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, %struct.sctp_sndrcvinfo*, i32)* @ff_sctp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_sctp_send(i32 %0, i8* %1, i64 %2, %struct.sctp_sndrcvinfo* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sctp_sndrcvinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.msghdr, align 8
  %12 = alloca %struct.iovec, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.cmsghdr*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sctp_sndrcvinfo* %3, %struct.sctp_sndrcvinfo** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = bitcast %struct.msghdr* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 56, i1 false)
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 6
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 4
  store %struct.iovec* %12, %struct.iovec** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %9, align 8
  %27 = icmp ne %struct.sctp_sndrcvinfo* %26, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %5
  %29 = call i32 @CMSG_SPACE(i32 4)
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %13, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = trunc i64 %30 to i32
  %35 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %11)
  store %struct.cmsghdr* %37, %struct.cmsghdr** %15, align 8
  %38 = load i32, i32* @IPPROTO_SCTP, align 4
  %39 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %40 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @SCTP_SNDRCV, align 4
  %42 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %43 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = call i32 @CMSG_LEN(i32 4)
  %45 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %46 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %48 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %52 = call i32 @CMSG_DATA(%struct.cmsghdr* %51)
  %53 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %9, align 8
  %54 = call i32 @memcpy(i32 %52, %struct.sctp_sndrcvinfo* %53, i32 4)
  %55 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %55)
  br label %56

56:                                               ; preds = %28, %5
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MSG_NOSIGNAL, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @sendmsg(i32 %57, %struct.msghdr* %11, i32 %60)
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CMSG_SPACE(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #2

declare dso_local i32 @CMSG_LEN(i32) #2

declare dso_local i32 @memcpy(i32, %struct.sctp_sndrcvinfo*, i32) #2

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
