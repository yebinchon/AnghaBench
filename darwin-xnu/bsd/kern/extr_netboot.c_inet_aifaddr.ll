; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_inet_aifaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_inet_aifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.socket = type { i32 }
%struct.ifaliasreq = type { i32, i32, i32, i32 }

@blank_sin = common dso_local global %struct.sockaddr_in zeroinitializer, align 4
@SIOCAIFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i8*, %struct.in_addr*, %struct.in_addr*, %struct.in_addr*)* @inet_aifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_aifaddr(%struct.socket* %0, i8* %1, %struct.in_addr* %2, %struct.in_addr* %3, %struct.in_addr* %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in_addr*, align 8
  %9 = alloca %struct.in_addr*, align 8
  %10 = alloca %struct.in_addr*, align 8
  %11 = alloca %struct.ifaliasreq, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.in_addr* %2, %struct.in_addr** %8, align 8
  store %struct.in_addr* %3, %struct.in_addr** %9, align 8
  store %struct.in_addr* %4, %struct.in_addr** %10, align 8
  %12 = call i32 @bzero(%struct.ifaliasreq* %11, i32 16)
  %13 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %11, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strlcpy(i32 %14, i8* %15, i32 4)
  %17 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %18 = icmp ne %struct.in_addr* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %11, i32 0, i32 2
  %21 = bitcast i32* %20 to i8*
  %22 = bitcast i8* %21 to %struct.sockaddr_in*
  %23 = bitcast %struct.sockaddr_in* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.sockaddr_in* @blank_sin to i8*), i64 4, i1 false)
  %24 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %11, i32 0, i32 2
  %25 = bitcast i32* %24 to i8*
  %26 = bitcast i8* %25 to %struct.sockaddr_in*
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %29 = bitcast %struct.in_addr* %27 to i8*
  %30 = bitcast %struct.in_addr* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  br label %31

31:                                               ; preds = %19, %5
  %32 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %33 = icmp ne %struct.in_addr* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %11, i32 0, i32 1
  %36 = bitcast i32* %35 to i8*
  %37 = bitcast i8* %36 to %struct.sockaddr_in*
  %38 = bitcast %struct.sockaddr_in* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 bitcast (%struct.sockaddr_in* @blank_sin to i8*), i64 4, i1 false)
  %39 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %11, i32 0, i32 1
  %40 = bitcast i32* %39 to i8*
  %41 = bitcast i8* %40 to %struct.sockaddr_in*
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 0
  %43 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %44 = bitcast %struct.in_addr* %42 to i8*
  %45 = bitcast %struct.in_addr* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  br label %46

46:                                               ; preds = %34, %31
  %47 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %48 = icmp ne %struct.in_addr* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %11, i32 0, i32 0
  %51 = bitcast i32* %50 to i8*
  %52 = bitcast i8* %51 to %struct.sockaddr_in*
  %53 = bitcast %struct.sockaddr_in* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 bitcast (%struct.sockaddr_in* @blank_sin to i8*), i64 4, i1 false)
  %54 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %11, i32 0, i32 0
  %55 = bitcast i32* %54 to i8*
  %56 = bitcast i8* %55 to %struct.sockaddr_in*
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 0
  %58 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %59 = bitcast %struct.in_addr* %57 to i8*
  %60 = bitcast %struct.in_addr* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  br label %61

61:                                               ; preds = %49, %46
  %62 = load %struct.socket*, %struct.socket** %6, align 8
  %63 = load i32, i32* @SIOCAIFADDR, align 4
  %64 = ptrtoint %struct.ifaliasreq* %11 to i32
  %65 = call i32 (...) @current_proc()
  %66 = call i32 @ifioctl(%struct.socket* %62, i32 %63, i32 %64, i32 %65)
  ret i32 %66
}

declare dso_local i32 @bzero(%struct.ifaliasreq*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ifioctl(%struct.socket*, i32, i32, i32) #1

declare dso_local i32 @current_proc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
