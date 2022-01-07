; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_ports.c_hb_net_open.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_ports.c_hb_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_in = type { i32, i32, i32 }
%struct.hostent = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"gethostbyname failed (%s)\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"socket failed\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"connect failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @hb_net_open(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.TYPE_5__* @calloc(i32 4, i32 1)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.hostent* @gethostbyname(i8* %10)
  store %struct.hostent* %11, %struct.hostent** %8, align 8
  %12 = icmp ne %struct.hostent* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = call i32 @free(%struct.TYPE_5__* %16)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %60

18:                                               ; preds = %2
  %19 = call i32 @memset(%struct.sockaddr_in* %7, i32 0, i32 12)
  %20 = load %struct.hostent*, %struct.hostent** %8, align 8
  %21 = getelementptr inbounds %struct.hostent, %struct.hostent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @htons(i32 %24)
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %28 = load %struct.hostent*, %struct.hostent** %8, align 8
  %29 = getelementptr inbounds %struct.hostent, %struct.hostent* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hostent*, %struct.hostent** %8, align 8
  %32 = getelementptr inbounds %struct.hostent, %struct.hostent* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32* %27, i32 %30, i32 %33)
  %35 = load %struct.hostent*, %struct.hostent** %8, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SOCK_STREAM, align 4
  %39 = call i32 @socket(i32 %37, i32 %38, i32 0)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = icmp slt i32 %39, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %18
  %44 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = call i32 @free(%struct.TYPE_5__* %45)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %60

47:                                               ; preds = %18
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %52 = call i64 @connect(i32 %50, %struct.sockaddr* %51, i32 12)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = call i32 @free(%struct.TYPE_5__* %56)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %60

58:                                               ; preds = %47
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %3, align 8
  br label %60

60:                                               ; preds = %58, %54, %43, %13
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %61
}

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
