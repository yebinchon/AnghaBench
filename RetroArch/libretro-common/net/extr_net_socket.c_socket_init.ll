; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket.c_socket_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket.c_socket_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%hu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_init(i8** %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  %11 = alloca %struct.addrinfo, align 4
  %12 = alloca %struct.addrinfo**, align 8
  %13 = alloca %struct.addrinfo*, align 8
  store i8** %0, i8*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = bitcast %struct.addrinfo* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 20, i1 false)
  %15 = load i8**, i8*** %6, align 8
  %16 = bitcast i8** %15 to %struct.addrinfo**
  store %struct.addrinfo** %16, %struct.addrinfo*** %12, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %13, align 8
  %17 = call i32 (...) @network_init()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %64

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %29 [
    i32 130, label %22
    i32 128, label %25
    i32 129, label %28
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @SOCK_DGRAM, align 4
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  br label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @SOCK_STREAM, align 4
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  br label %29

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %20, %28, %25, %22
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @AI_PASSIVE, align 4
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %36, align 16
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i16
  %40 = call i32 @snprintf(i8* %37, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i16 zeroext %39)
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %43 = load %struct.addrinfo**, %struct.addrinfo*** %12, align 8
  %44 = call i64 @getaddrinfo_retro(i8* %41, i8* %42, %struct.addrinfo* %11, %struct.addrinfo** %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %64

47:                                               ; preds = %35
  %48 = load %struct.addrinfo**, %struct.addrinfo*** %12, align 8
  %49 = load %struct.addrinfo*, %struct.addrinfo** %48, align 8
  store %struct.addrinfo* %49, %struct.addrinfo** %13, align 8
  %50 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %51 = icmp ne %struct.addrinfo* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %64

53:                                               ; preds = %47
  %54 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @socket(i32 %56, i32 %59, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %65

64:                                               ; preds = %52, %46, %19
  store i32 -1, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %53
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @network_init(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i16 zeroext) #2

declare dso_local i64 @getaddrinfo_retro(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @socket(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
