; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tmsghdr.c_taosInitMsgHdr.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tmsghdr.c_taosInitMsgHdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, %struct.msghdr*, %struct.sockaddr_in* }
%struct.sockaddr_in = type { i32 }
%struct.iovec = type { i32, %struct.iovec*, %struct.sockaddr_in* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosInitMsgHdr(i8** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i64 @malloc(i64 24)
  %11 = inttoptr i64 %10 to %struct.msghdr*
  store %struct.msghdr* %11, %struct.msghdr** %7, align 8
  %12 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %13 = call i32 @memset(%struct.msghdr* %12, i32 0, i64 24)
  %14 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %15 = bitcast %struct.msghdr* %14 to i8*
  %16 = load i8**, i8*** %4, align 8
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %18, %struct.sockaddr_in** %8, align 8
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %20 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 2
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %21, align 8
  %22 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %22, i32 0, i32 0
  store i32 4, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 24, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = call i64 @malloc(i64 %27)
  %29 = inttoptr i64 %28 to %struct.iovec*
  %30 = bitcast %struct.iovec* %29 to %struct.msghdr*
  %31 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %31, i32 0, i32 1
  store %struct.msghdr* %30, %struct.msghdr** %32, align 8
  %33 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %33, i32 0, i32 1
  %35 = load %struct.msghdr*, %struct.msghdr** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 @memset(%struct.msghdr* %35, i32 0, i64 %37)
  ret void
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
