; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_send.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsocket = type { i32 }
%struct.netbuf = type { i32 }

@SOCKETS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"net_send(%d, data=%p, size=%d, flags=0x%x)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ENOTSOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"net_send(%d) ENOBUFS\0A\00", align 1
@ENOBUFS = common dso_local global i64 0, align 8
@NETCONN_COPY = common dso_local global i32 0, align 4
@ERR_ARG = common dso_local global i64 0, align 8
@ERR_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"net_send(%d) err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"net_send(%d) ok size=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @net_send(i64 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netsocket*, align 8
  %11 = alloca %struct.netbuf*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @SOCKETS_DEBUG, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @LWIP_DEBUGF(i32 %13, i8* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %4
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %92

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.netsocket* @get_socket(i64 %30)
  store %struct.netsocket* %31, %struct.netsocket** %10, align 8
  %32 = load %struct.netsocket*, %struct.netsocket** %10, align 8
  %33 = icmp ne %struct.netsocket* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @ENOTSOCK, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %92

37:                                               ; preds = %29
  %38 = load %struct.netsocket*, %struct.netsocket** %10, align 8
  %39 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netconn_type(i32 %40)
  switch i32 %41, label %73 [
    i32 132, label %42
    i32 130, label %42
    i32 129, label %42
    i32 128, label %42
    i32 131, label %65
  ]

42:                                               ; preds = %37, %37, %37, %37
  %43 = call %struct.netbuf* (...) @netbuf_new()
  store %struct.netbuf* %43, %struct.netbuf** %11, align 8
  %44 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %45 = icmp ne %struct.netbuf* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @SOCKETS_DEBUG, align 4
  %48 = load i64, i64* %6, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @LWIP_DEBUGF(i32 %47, i8* %49)
  %51 = load i64, i64* @ENOBUFS, align 8
  %52 = sub nsw i64 0, %51
  store i64 %52, i64* %5, align 8
  br label %92

53:                                               ; preds = %42
  %54 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @netbuf_ref(%struct.netbuf* %54, i8* %55, i64 %56)
  %58 = load %struct.netsocket*, %struct.netsocket** %10, align 8
  %59 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %62 = call i64 @netconn_send(i32 %60, %struct.netbuf* %61)
  store i64 %62, i64* %12, align 8
  %63 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %64 = call i32 @netbuf_delete(%struct.netbuf* %63)
  br label %75

65:                                               ; preds = %37
  %66 = load %struct.netsocket*, %struct.netsocket** %10, align 8
  %67 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* @NETCONN_COPY, align 4
  %72 = call i64 @netconn_write(i32 %68, i8* %69, i64 %70, i32 %71)
  store i64 %72, i64* %12, align 8
  br label %75

73:                                               ; preds = %37
  %74 = load i64, i64* @ERR_ARG, align 8
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %73, %65, %53
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @ERR_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* @SOCKETS_DEBUG, align 4
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %12, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 @LWIP_DEBUGF(i32 %80, i8* %83)
  store i64 -1, i64* %5, align 8
  br label %92

85:                                               ; preds = %75
  %86 = load i32, i32* @SOCKETS_DEBUG, align 4
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %8, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @LWIP_DEBUGF(i32 %86, i8* %89)
  %91 = load i64, i64* %8, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %85, %79, %46, %34, %26
  %93 = load i64, i64* %5, align 8
  ret i64 %93
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local %struct.netsocket* @get_socket(i64) #1

declare dso_local i32 @netconn_type(i32) #1

declare dso_local %struct.netbuf* @netbuf_new(...) #1

declare dso_local i32 @netbuf_ref(%struct.netbuf*, i8*, i64) #1

declare dso_local i64 @netconn_send(i32, %struct.netbuf*) #1

declare dso_local i32 @netbuf_delete(%struct.netbuf*) #1

declare dso_local i64 @netconn_write(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
