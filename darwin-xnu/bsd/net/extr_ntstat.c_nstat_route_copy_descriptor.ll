; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_route_copy_descriptor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_route_copy_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rtentry = type { i32, %struct.TYPE_8__*, %struct.sockaddr*, %struct.rtentry*, %struct.rtentry* }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @nstat_route_copy_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_route_copy_descriptor(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.rtentry*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 48
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %99

18:                                               ; preds = %3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = call i32 @bzero(%struct.TYPE_9__* %19, i32 48)
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to %struct.rtentry*
  store %struct.rtentry* %22, %struct.rtentry** %9, align 8
  %23 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %24 = call i64 @VM_KERNEL_ADDRPERM(%struct.rtentry* %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %29 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %28, i32 0, i32 4
  %30 = load %struct.rtentry*, %struct.rtentry** %29, align 8
  %31 = call i64 @VM_KERNEL_ADDRPERM(%struct.rtentry* %30)
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %36 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %35, i32 0, i32 3
  %37 = load %struct.rtentry*, %struct.rtentry** %36, align 8
  %38 = call i64 @VM_KERNEL_ADDRPERM(%struct.rtentry* %37)
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %43 = call %struct.sockaddr* @rt_key(%struct.rtentry* %42)
  store %struct.sockaddr* %43, %struct.sockaddr** %10, align 8
  %44 = icmp ne %struct.sockaddr* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %18
  %46 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @nstat_copy_sa_out(%struct.sockaddr* %46, i32* %49, i32 4)
  br label %51

51:                                               ; preds = %45, %18
  %52 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %53 = call %struct.sockaddr* @rt_mask(%struct.rtentry* %52)
  store %struct.sockaddr* %53, %struct.sockaddr** %10, align 8
  %54 = icmp ne %struct.sockaddr* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %57 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ule i64 %59, 4
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %65 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %66 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i32* %63, %struct.sockaddr* %64, i32 %67)
  br label %69

69:                                               ; preds = %61, %55, %51
  %70 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %71 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %70, i32 0, i32 2
  %72 = load %struct.sockaddr*, %struct.sockaddr** %71, align 8
  store %struct.sockaddr* %72, %struct.sockaddr** %10, align 8
  %73 = icmp ne %struct.sockaddr* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = call i32 @nstat_copy_sa_out(%struct.sockaddr* %75, i32* %78, i32 4)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %82 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %87 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %85, %80
  %94 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %95 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %93, %16
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @bzero(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.rtentry*) #1

declare dso_local %struct.sockaddr* @rt_key(%struct.rtentry*) #1

declare dso_local i32 @nstat_copy_sa_out(%struct.sockaddr*, i32*, i32) #1

declare dso_local %struct.sockaddr* @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
