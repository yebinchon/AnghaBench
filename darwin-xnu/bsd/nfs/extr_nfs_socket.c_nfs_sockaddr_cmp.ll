; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_socket.c_nfs_sockaddr_cmp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_socket.c_nfs_sockaddr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64, i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_sockaddr_cmp(%struct.sockaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %6 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %7 = icmp ne %struct.sockaddr* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %78

9:                                                ; preds = %2
  %10 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %11 = icmp ne %struct.sockaddr* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %78

13:                                               ; preds = %9
  %14 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 -1, i32 1
  store i32 %30, i32* %3, align 4
  br label %78

31:                                               ; preds = %13
  %32 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %41 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 -1, i32 1
  store i32 %48, i32* %3, align 4
  br label %78

49:                                               ; preds = %31
  %50 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %51 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AF_INET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %57 = bitcast %struct.sockaddr* %56 to %struct.sockaddr_in*
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %57, i32 0, i32 0
  %59 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %60 = bitcast %struct.sockaddr* %59 to %struct.sockaddr_in*
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %60, i32 0, i32 0
  %62 = call i32 @bcmp(i32* %58, i32* %61, i32 4)
  store i32 %62, i32* %3, align 4
  br label %78

63:                                               ; preds = %49
  %64 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %65 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AF_INET6, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %71 = bitcast %struct.sockaddr* %70 to %struct.sockaddr_in6*
  %72 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %71, i32 0, i32 0
  %73 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %74 = bitcast %struct.sockaddr* %73 to %struct.sockaddr_in6*
  %75 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %74, i32 0, i32 0
  %76 = call i32 @bcmp(i32* %72, i32* %75, i32 4)
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %69, %55, %39, %21, %12, %8
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @bcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
