; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_compat.c_udp_send_packet.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_compat.c_udp_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo*, i32, i32, i32, i32, i32, i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%hu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_send_packet(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = bitcast [16 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 16, i1 false)
  %17 = bitcast %struct.addrinfo* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %11, align 8
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %18 = load i32, i32* @SOCK_DGRAM, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i16
  %23 = call i32 @snprintf(i8* %20, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i16 zeroext %22)
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %26 = call i64 @getaddrinfo_retro(i8* %24, i8* %25, %struct.addrinfo* %9, %struct.addrinfo** %10)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

29:                                               ; preds = %3
  %30 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* %30, %struct.addrinfo** %11, align 8
  br label %31

31:                                               ; preds = %65, %29
  %32 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %33 = icmp ne %struct.addrinfo* %32, null
  br i1 %33, label %34, label %71

34:                                               ; preds = %31
  %35 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @socket(i32 %37, i32 %40, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 0, i32* %13, align 4
  br label %72

48:                                               ; preds = %34
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @strlen(i8* %49)
  store i64 %50, i64* %14, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @sendto(i32 %51, i8* %52, i64 %53, i32 0, i32 %56, i32 %59)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %72

65:                                               ; preds = %48
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @socket_close(i32 %66)
  store i32 -1, i32* %12, align 4
  %68 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %69 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %68, i32 0, i32 0
  %70 = load %struct.addrinfo*, %struct.addrinfo** %69, align 8
  store %struct.addrinfo* %70, %struct.addrinfo** %11, align 8
  br label %31

71:                                               ; preds = %31
  br label %72

72:                                               ; preds = %71, %64, %47
  %73 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %74 = call i32 @freeaddrinfo_retro(%struct.addrinfo* %73)
  %75 = load i32, i32* %12, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @socket_close(i32 %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %28
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i16 zeroext) #2

declare dso_local i64 @getaddrinfo_retro(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @sendto(i32, i8*, i64, i32, i32, i32) #2

declare dso_local i32 @socket_close(i32) #2

declare dso_local i32 @freeaddrinfo_retro(%struct.addrinfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
