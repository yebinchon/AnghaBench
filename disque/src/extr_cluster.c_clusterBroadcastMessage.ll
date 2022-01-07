; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterBroadcastMessage.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterBroadcastMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@CLUSTER_NODE_MYSELF = common dso_local global i32 0, align 4
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterBroadcastMessage(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @dictGetSafeIterator(i32* %10)
  store i32* %11, i32** %7, align 8
  br label %12

12:                                               ; preds = %34, %33, %23, %3
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @dictNext(i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load i32*, i32** %8, align 8
  %18 = call %struct.TYPE_3__* @dictGetKey(i32* %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %12

24:                                               ; preds = %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %29 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %12

34:                                               ; preds = %24
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @clusterSendMessage(i32 %37, i8* %38, i64 %39)
  br label %12

41:                                               ; preds = %12
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @dictReleaseIterator(i32* %42)
  ret void
}

declare dso_local i32* @dictGetSafeIterator(i32*) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_3__* @dictGetKey(i32*) #1

declare dso_local i32 @clusterSendMessage(i32, i8*, i64) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
