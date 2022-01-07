; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_net.c_redisKeepAlive.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_net.c_redisKeepAlive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@REDIS_ERR_OTHER = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_KEEPIDLE = common dso_local global i32 0, align 4
@TCP_KEEPINTVL = common dso_local global i32 0, align 4
@TCP_KEEPCNT = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@TCP_KEEPALIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisKeepAlive(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SOL_SOCKET, align 4
  %13 = load i32, i32* @SO_KEEPALIVE, align 4
  %14 = call i32 @setsockopt(i32 %11, i32 %12, i32 %13, i32* %6, i32 4)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 @__redisSetError(%struct.TYPE_4__* %17, i32 %18, i32 %20)
  %22 = load i32, i32* @REDIS_ERR, align 4
  store i32 %22, i32* %3, align 4
  br label %72

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IPPROTO_TCP, align 4
  %28 = load i32, i32* @TCP_KEEPIDLE, align 4
  %29 = call i32 @setsockopt(i32 %26, i32 %27, i32 %28, i32* %6, i32 4)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @__redisSetError(%struct.TYPE_4__* %32, i32 %33, i32 %35)
  %37 = load i32, i32* @REDIS_ERR, align 4
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %23
  %39 = load i32, i32* %5, align 4
  %40 = sdiv i32 %39, 3
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @IPPROTO_TCP, align 4
  %47 = load i32, i32* @TCP_KEEPINTVL, align 4
  %48 = call i32 @setsockopt(i32 %45, i32 %46, i32 %47, i32* %6, i32 4)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @strerror(i32 %53)
  %55 = call i32 @__redisSetError(%struct.TYPE_4__* %51, i32 %52, i32 %54)
  %56 = load i32, i32* @REDIS_ERR, align 4
  store i32 %56, i32* %3, align 4
  br label %72

57:                                               ; preds = %44
  store i32 3, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @IPPROTO_TCP, align 4
  %60 = load i32, i32* @TCP_KEEPCNT, align 4
  %61 = call i32 @setsockopt(i32 %58, i32 %59, i32 %60, i32* %6, i32 4)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @strerror(i32 %66)
  %68 = call i32 @__redisSetError(%struct.TYPE_4__* %64, i32 %65, i32 %67)
  %69 = load i32, i32* @REDIS_ERR, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %57
  %71 = load i32, i32* @REDIS_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %63, %50, %31, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @__redisSetError(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
