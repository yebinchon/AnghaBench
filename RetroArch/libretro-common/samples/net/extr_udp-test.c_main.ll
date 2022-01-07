; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/samples/net/extr_udp-test.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/samples/net/extr_udp-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@PORT = common dso_local global i32 0, align 4
@SERVER = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"inet_aton() failed\0A\00", align 1
@__const.main.message = private unnamed_addr constant [10 x i8] c"128\00\00\00\00\00\00\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sendto()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  store i32 12, i32* %5, align 4
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load i32, i32* @SOCK_DGRAM, align 4
  %9 = load i32, i32* @IPPROTO_UDP, align 4
  %10 = call i32 @socket(i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @die(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = bitcast %struct.sockaddr_in* %2 to i8*
  %16 = call i32 @memset(i8* %15, i32 0, i32 12)
  %17 = load i32, i32* @AF_INET, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @PORT, align 4
  %20 = call i32 @htons(i32 %19)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @SERVER, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  %24 = call i64 @inet_aton(i32 %22, i32* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #4
  unreachable

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30, %43
  %32 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.main.message, i32 0, i32 0), i64 10, i1 false)
  %33 = load i32, i32* %3, align 4
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %36 = call i32 @strlen(i8* %35)
  %37 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @sendto(i32 %33, i8* %34, i32 %36, i32 0, %struct.sockaddr* %37, i32 %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 @die(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %31
  %44 = call i32 @usleep(i32 16000)
  br label %31
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @inet_aton(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
