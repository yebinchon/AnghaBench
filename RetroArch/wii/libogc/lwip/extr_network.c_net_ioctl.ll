; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_ioctl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsocket = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOTSOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOCKETS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"net_ioctl(%d, FIONREAD, %p) = %u\0A\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"net_ioctl(%d, FIONBIO, %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"net_ioctl(%d, UNIMPL: 0x%lx, %p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_ioctl(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.netsocket*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.netsocket* @get_socket(i32 %9)
  store %struct.netsocket* %10, %struct.netsocket** %8, align 8
  %11 = load %struct.netsocket*, %struct.netsocket** %8, align 8
  %12 = icmp ne %struct.netsocket* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOTSOCK, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %85

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %77 [
    i32 128, label %18
    i32 129, label %41
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %85

24:                                               ; preds = %18
  %25 = load %struct.netsocket*, %struct.netsocket** %8, align 8
  %26 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to i32*
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @SOCKETS_DEBUG, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @LWIP_DEBUGF(i32 %32, i8* %39)
  store i32 0, i32* %4, align 4
  br label %85

41:                                               ; preds = %16
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @O_NONBLOCK, align 4
  %51 = load %struct.netsocket*, %struct.netsocket** %8, align 8
  %52 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %62

55:                                               ; preds = %44, %41
  %56 = load i32, i32* @O_NONBLOCK, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.netsocket*, %struct.netsocket** %8, align 8
  %59 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %49
  %63 = load i32, i32* @SOCKETS_DEBUG, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.netsocket*, %struct.netsocket** %8, align 8
  %66 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @O_NONBLOCK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @LWIP_DEBUGF(i32 %63, i8* %75)
  store i32 0, i32* %4, align 4
  br label %85

77:                                               ; preds = %16
  %78 = load i32, i32* @SOCKETS_DEBUG, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @LWIP_DEBUGF(i32 %78, i8* %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %77, %62, %24, %21, %13
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.netsocket* @get_socket(i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
