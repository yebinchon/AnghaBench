; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_hiredis.c_redisConnect.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_hiredis.c_redisConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@REDIS_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @redisConnect(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.TYPE_5__* (...) @redisContextInit()
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %22

11:                                               ; preds = %2
  %12 = load i32, i32* @REDIS_BLOCK, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @redisContextConnectTcp(%struct.TYPE_5__* %17, i8* %18, i32 %19, i32* null)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %3, align 8
  br label %22

22:                                               ; preds = %11, %10
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %23
}

declare dso_local %struct.TYPE_5__* @redisContextInit(...) #1

declare dso_local i32 @redisContextConnectTcp(%struct.TYPE_5__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
