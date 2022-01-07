; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_Sys_StringToSockaddr.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_Sys_StringToSockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.hostent = type { i64* }
%struct.sockaddr_in = type { i32, i64, i32 }

@AF_INET = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sys_StringToSockaddr(i8* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %7 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %8 = call i32 @memset(%struct.sockaddr* %7, i32 0, i32 4)
  %9 = load i32, i32* @AF_INET, align 4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_in*
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_in*
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sge i32 %19, 48
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sle i32 %25, 57
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @inet_addr(i8* %28)
  %30 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %31 = bitcast %struct.sockaddr* %30 to %struct.sockaddr_in*
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  br label %50

33:                                               ; preds = %21, %2
  %34 = load i8*, i8** %4, align 8
  %35 = call %struct.hostent* @gethostbyname(i8* %34)
  store %struct.hostent* %35, %struct.hostent** %6, align 8
  %36 = icmp ne %struct.hostent* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @qfalse, align 4
  store i32 %38, i32* %3, align 4
  br label %52

39:                                               ; preds = %33
  %40 = load %struct.hostent*, %struct.hostent** %6, align 8
  %41 = getelementptr inbounds %struct.hostent, %struct.hostent* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %48 = bitcast %struct.sockaddr* %47 to %struct.sockaddr_in*
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  br label %50

50:                                               ; preds = %39, %27
  %51 = load i32, i32* @qtrue, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %37
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
