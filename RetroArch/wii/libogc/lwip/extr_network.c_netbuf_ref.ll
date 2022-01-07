; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netbuf_ref.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netbuf_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i8* }

@PBUF_TRANSPORT = common dso_local global i32 0, align 4
@PBUF_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netbuf*, i8*, i32)* @netbuf_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netbuf_ref(%struct.netbuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.netbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.netbuf* %0, %struct.netbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %8 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %13 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i32 @pbuf_free(%struct.TYPE_3__* %14)
  br label %16

16:                                               ; preds = %11, %3
  %17 = load i32, i32* @PBUF_TRANSPORT, align 4
  %18 = load i32, i32* @PBUF_REF, align 4
  %19 = call %struct.TYPE_3__* @pbuf_alloc(i32 %17, i32 0, i32 %18)
  %20 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %21 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %20, i32 0, i32 0
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %24 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i8* %22, i8** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %29 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %33 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %27, i32* %35, align 4
  %36 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %37 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %40 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %39, i32 0, i32 1
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %40, align 8
  ret void
}

declare dso_local i32 @pbuf_free(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @pbuf_alloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
