; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_chr_find.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_chr_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer_chr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.peer_svc = type { i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.peer_chr* (%struct.peer_svc*, i64, %struct.peer_chr**)* @peer_chr_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.peer_chr* @peer_chr_find(%struct.peer_svc* %0, i64 %1, %struct.peer_chr** %2) #0 {
  %4 = alloca %struct.peer_svc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.peer_chr**, align 8
  %7 = alloca %struct.peer_chr*, align 8
  %8 = alloca %struct.peer_chr*, align 8
  store %struct.peer_svc* %0, %struct.peer_svc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.peer_chr** %2, %struct.peer_chr*** %6, align 8
  %9 = load %struct.peer_svc*, %struct.peer_svc** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call %struct.peer_chr* @peer_chr_find_prev(%struct.peer_svc* %9, i64 %10)
  store %struct.peer_chr* %11, %struct.peer_chr** %7, align 8
  %12 = load %struct.peer_chr*, %struct.peer_chr** %7, align 8
  %13 = icmp eq %struct.peer_chr* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.peer_svc*, %struct.peer_svc** %4, align 8
  %16 = getelementptr inbounds %struct.peer_svc, %struct.peer_svc* %15, i32 0, i32 0
  %17 = call %struct.peer_chr* @SLIST_FIRST(i32* %16)
  store %struct.peer_chr* %17, %struct.peer_chr** %8, align 8
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.peer_chr*, %struct.peer_chr** %7, align 8
  %20 = load i32, i32* @next, align 4
  %21 = call %struct.peer_chr* @SLIST_NEXT(%struct.peer_chr* %19, i32 %20)
  store %struct.peer_chr* %21, %struct.peer_chr** %8, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.peer_chr*, %struct.peer_chr** %8, align 8
  %24 = icmp ne %struct.peer_chr* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.peer_chr*, %struct.peer_chr** %8, align 8
  %27 = getelementptr inbounds %struct.peer_chr, %struct.peer_chr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store %struct.peer_chr* null, %struct.peer_chr** %8, align 8
  br label %33

33:                                               ; preds = %32, %25, %22
  %34 = load %struct.peer_chr**, %struct.peer_chr*** %6, align 8
  %35 = icmp ne %struct.peer_chr** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.peer_chr*, %struct.peer_chr** %7, align 8
  %38 = load %struct.peer_chr**, %struct.peer_chr*** %6, align 8
  store %struct.peer_chr* %37, %struct.peer_chr** %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.peer_chr*, %struct.peer_chr** %8, align 8
  ret %struct.peer_chr* %40
}

declare dso_local %struct.peer_chr* @peer_chr_find_prev(%struct.peer_svc*, i64) #1

declare dso_local %struct.peer_chr* @SLIST_FIRST(i32*) #1

declare dso_local %struct.peer_chr* @SLIST_NEXT(%struct.peer_chr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
