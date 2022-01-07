; ModuleID = '/home/carl/AnghaBench/disque/src/extr_anet.c_anetUnixServer.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_anet.c_anetUnixServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_LOCAL = common dso_local global i32 0, align 4
@ANET_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anetUnixServer(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_un, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @AF_LOCAL, align 4
  %14 = call i32 @anetCreateSocket(i8* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @ANET_ERR, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ANET_ERR, align 4
  store i32 %18, i32* %5, align 4
  br label %46

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.sockaddr_un* %11, i32 0, i32 8)
  %21 = load i32, i32* @AF_LOCAL, align 4
  %22 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strncpy(i32 %24, i8* %25, i32 3)
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = bitcast %struct.sockaddr_un* %11 to %struct.sockaddr*
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @anetListen(i8* %27, i32 %28, %struct.sockaddr* %29, i32 8, i32 %30)
  %32 = load i32, i32* @ANET_ERR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* @ANET_ERR, align 4
  store i32 %35, i32* %5, align 4
  br label %46

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @chmod(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %34, %17
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @anetCreateSocket(i8*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @anetListen(i8*, i32, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @chmod(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
