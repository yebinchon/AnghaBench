; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_net.c_redisCreateSocket.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_net.c_redisCreateSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@REDIS_ERR_IO = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @redisCreateSocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redisCreateSocket(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = load i32, i32* @REDIS_ERR_IO, align 4
  %14 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_5__* %12, i32 %13, i32* null)
  %15 = load i32, i32* @REDIS_ERR, align 4
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AF_INET, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = call i32 @redisSetReuseAddr(%struct.TYPE_5__* %24)
  %26 = load i32, i32* @REDIS_ERR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @REDIS_ERR, align 4
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* @REDIS_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %28, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @__redisSetErrorFromErrno(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @redisSetReuseAddr(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
