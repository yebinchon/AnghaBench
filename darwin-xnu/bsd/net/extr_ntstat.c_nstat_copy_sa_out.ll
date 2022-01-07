; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_copy_sa_out.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_copy_sa_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i64 }
%struct.sockaddr_in6 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, %struct.sockaddr*, i32)* @nstat_copy_sa_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nstat_copy_sa_out(%struct.sockaddr* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %9 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %62

14:                                               ; preds = %3
  %15 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bcopy(%struct.sockaddr* %15, %struct.sockaddr* %16, i32 %19)
  %21 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %14
  %27 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp uge i64 %30, 16
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %34 = bitcast %struct.sockaddr* %33 to i8*
  %35 = bitcast i8* %34 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %35, %struct.sockaddr_in6** %7, align 8
  %36 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 1
  %38 = call i64 @IN6_IS_SCOPE_EMBED(%struct.TYPE_2__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %32
  %41 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @ntohs(i64 %51)
  %53 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %45, %40
  %56 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %32
  br label %62

62:                                               ; preds = %13, %61, %26, %14
  ret void
}

declare dso_local i32 @bcopy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i64 @IN6_IS_SCOPE_EMBED(%struct.TYPE_2__*) #1

declare dso_local i64 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
