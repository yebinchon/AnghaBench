; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_raw_usrreq.c_raw_ushutdown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_raw_usrreq.c_raw_ushutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32* (%struct.socket*, i32)* }
%struct.TYPE_3__ = type { i32* }
%struct.rawcb = type { i32 }

@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @raw_ushutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_ushutdown(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.rawcb*, align 8
  %5 = alloca i32*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = call %struct.rawcb* @sotorawcb(%struct.socket* %6)
  store %struct.rawcb* %7, %struct.rawcb** %4, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %11, align 8
  %13 = icmp ne i32* (%struct.socket*, i32)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %18, align 8
  %20 = load %struct.socket*, %struct.socket** %3, align 8
  %21 = call i32* %19(%struct.socket* %20, i32 0)
  store i32* %21, i32** %5, align 8
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.socket*, %struct.socket** %3, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %5, align 8
  br label %30

30:                                               ; preds = %22, %14
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %33 = call i32 @LCK_MTX_ASSERT(i32* %31, i32 %32)
  %34 = load %struct.rawcb*, %struct.rawcb** %4, align 8
  %35 = icmp eq %struct.rawcb* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %2, align 4
  br label %41

38:                                               ; preds = %30
  %39 = load %struct.socket*, %struct.socket** %3, align 8
  %40 = call i32 @socantsendmore(%struct.socket* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %36
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.rawcb* @sotorawcb(%struct.socket*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @socantsendmore(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
