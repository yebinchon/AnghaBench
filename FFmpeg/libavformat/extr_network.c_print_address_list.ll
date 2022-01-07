; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_print_address_list.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_print_address_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo*, i32, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Address %s port %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.addrinfo*, i8*)* @print_address_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_address_list(i8* %0, %struct.addrinfo* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca [20 x i8], align 16
  store i8* %0, i8** %4, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @AV_LOG_DEBUG, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 (i8*, i32, i8*, i8*, ...) @av_log(i8* %9, i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %16, %3
  %14 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %15 = icmp ne %struct.addrinfo* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %25 = load i32, i32* @NI_NUMERICHOST, align 4
  %26 = load i32, i32* @NI_NUMERICSERV, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @getnameinfo(i32 %19, i32 %22, i8* %23, i32 100, i8* %24, i32 20, i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @AV_LOG_DEBUG, align 4
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %33 = call i32 (i8*, i32, i8*, i8*, ...) @av_log(i8* %29, i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %32)
  %34 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 0
  %36 = load %struct.addrinfo*, %struct.addrinfo** %35, align 8
  store %struct.addrinfo* %36, %struct.addrinfo** %5, align 8
  br label %13

37:                                               ; preds = %13
  ret void
}

declare dso_local i32 @av_log(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @getnameinfo(i32, i32, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
