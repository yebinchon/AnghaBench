; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/net/extr_net_sockets_common.c_vc_container_net_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/net/extr_net_sockets_common.c_vc_container_net_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@VC_CONTAINER_NET_ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_SUCCESS = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_NOT_ALLOWED = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vc_container_net_write(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %72

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @VC_CONTAINER_NET_ERROR_INVALID_PARAMETER, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  store i64 0, i64* %4, align 8
  br label %72

19:                                               ; preds = %12
  %20 = load i32, i32* @VC_CONTAINER_NET_SUCCESS, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %57 [
    i32 129, label %26
    i32 128, label %26
    i32 130, label %34
  ]

26:                                               ; preds = %19, %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @send(i32 %29, i8* %30, i32 %32, i32 0)
  store i32 %33, i32* %8, align 4
  br label %61

34:                                               ; preds = %19
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sendto(i32 %47, i8* %48, i64 %49, i32 0, i32* %52, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %61

57:                                               ; preds = %19
  %58 = load i32, i32* @VC_CONTAINER_NET_ERROR_NOT_ALLOWED, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %44, %26
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @SOCKET_ERROR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = call i32 (...) @vc_container_net_private_last_error()
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %69, %15, %11
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @sendto(i32, i8*, i64, i32, i32*, i32) #1

declare dso_local i32 @vc_container_net_private_last_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
