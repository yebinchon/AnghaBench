; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_prproxy.c_nd6_soltgt_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_prproxy.c_nd6_soltgt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd6_prproxy_soltgt = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@soltgt_zone = common dso_local global i32 0, align 4
@soltgt_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd6_prproxy_soltgt* (i32)* @nd6_soltgt_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd6_prproxy_soltgt* @nd6_soltgt_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd6_prproxy_soltgt*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @soltgt_zone, align 4
  %9 = call %struct.nd6_prproxy_soltgt* @zalloc(i32 %8)
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @soltgt_zone, align 4
  %12 = call %struct.nd6_prproxy_soltgt* @zalloc_noblock(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi %struct.nd6_prproxy_soltgt* [ %9, %7 ], [ %12, %10 ]
  store %struct.nd6_prproxy_soltgt* %14, %struct.nd6_prproxy_soltgt** %3, align 8
  %15 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %3, align 8
  %16 = icmp ne %struct.nd6_prproxy_soltgt* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %3, align 8
  %19 = load i32, i32* @soltgt_size, align 4
  %20 = call i32 @bzero(%struct.nd6_prproxy_soltgt* %18, i32 %19)
  %21 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %3, align 8
  %22 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %21, i32 0, i32 0
  %23 = call i32 @TAILQ_INIT(i32* %22)
  br label %24

24:                                               ; preds = %17, %13
  %25 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %3, align 8
  ret %struct.nd6_prproxy_soltgt* %25
}

declare dso_local %struct.nd6_prproxy_soltgt* @zalloc(i32) #1

declare dso_local %struct.nd6_prproxy_soltgt* @zalloc_noblock(i32) #1

declare dso_local i32 @bzero(%struct.nd6_prproxy_soltgt*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
