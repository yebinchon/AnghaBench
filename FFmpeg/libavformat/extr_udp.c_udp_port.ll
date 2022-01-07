; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_udp.c_udp_port.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_udp.c_udp_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@NI_NUMERICSERV = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"getnameinfo: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_storage*, i32)* @udp_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_port(%struct.sockaddr_storage* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [13 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %9 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 0
  %12 = load i32, i32* @NI_NUMERICSERV, align 4
  %13 = call i32 @getnameinfo(%struct.sockaddr* %9, i32 %10, i32* null, i32 0, i8* %11, i32 13, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @AV_LOG_ERROR, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @gai_strerror(i32 %17)
  %19 = call i32 @av_log(i32* null, i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %3, align 4
  br label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 0
  %22 = call i32 @strtol(i8* %21, i32* null, i32 10)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
