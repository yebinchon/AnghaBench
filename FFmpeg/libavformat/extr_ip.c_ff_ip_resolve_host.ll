; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ip.c_ff_ip_resolve_host.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ip.c_ff_ip_resolve_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"getaddrinfo(%s, %s): %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.addrinfo* @ff_ip_resolve_host(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.addrinfo, align 4
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = bitcast %struct.addrinfo* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 16, i1 false)
  store %struct.addrinfo* null, %struct.addrinfo** %14, align 8
  store i8* null, i8** %17, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @snprintf(i8* %23, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  store i8* %26, i8** %18, align 8
  br label %27

27:                                               ; preds = %22, %6
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 63
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %17, align 8
  br label %44

44:                                               ; preds = %42, %36, %30, %27
  %45 = load i32, i32* %10, align 4
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load i8*, i8** %17, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = call i32 @getaddrinfo(i8* %51, i8* %52, %struct.addrinfo* %13, %struct.addrinfo** %14)
  store i32 %53, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %44
  store %struct.addrinfo* null, %struct.addrinfo** %14, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = load i8*, i8** %17, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i8*, i8** %17, align 8
  br label %63

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i8* [ %61, %60 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %62 ]
  %65 = load i8*, i8** %18, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @gai_strerror(i32 %66)
  %68 = call i32 @av_log(i8* %56, i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %64, i8* %65, i32 %67)
  br label %69

69:                                               ; preds = %63, %44
  %70 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  ret %struct.addrinfo* %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @av_log(i8*, i32, i8*, i8*, i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
