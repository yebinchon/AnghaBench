; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_prproxy.c_nd6_soltgt_prune.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_prproxy.c_nd6_soltgt_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd6_prproxy_soltgt = type { i64, i32 }
%struct.nd6_prproxy_solsrc = type { i32 }

@solsrc_tqe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nd6_prproxy_soltgt*, i64)* @nd6_soltgt_prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_soltgt_prune(%struct.nd6_prproxy_soltgt* %0, i64 %1) #0 {
  %3 = alloca %struct.nd6_prproxy_soltgt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nd6_prproxy_solsrc*, align 8
  store %struct.nd6_prproxy_soltgt* %0, %struct.nd6_prproxy_soltgt** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %6

6:                                                ; preds = %12, %2
  %7 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %3, align 8
  %8 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %3, align 8
  %14 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @VERIFY(i32 %17)
  %19 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %3, align 8
  %20 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %3, align 8
  %24 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %23, i32 0, i32 1
  %25 = call %struct.nd6_prproxy_solsrc* @TAILQ_FIRST(i32* %24)
  store %struct.nd6_prproxy_solsrc* %25, %struct.nd6_prproxy_solsrc** %5, align 8
  %26 = load %struct.nd6_prproxy_solsrc*, %struct.nd6_prproxy_solsrc** %5, align 8
  %27 = icmp ne %struct.nd6_prproxy_solsrc* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @VERIFY(i32 %28)
  %30 = load %struct.nd6_prproxy_soltgt*, %struct.nd6_prproxy_soltgt** %3, align 8
  %31 = getelementptr inbounds %struct.nd6_prproxy_soltgt, %struct.nd6_prproxy_soltgt* %30, i32 0, i32 1
  %32 = load %struct.nd6_prproxy_solsrc*, %struct.nd6_prproxy_solsrc** %5, align 8
  %33 = load i32, i32* @solsrc_tqe, align 4
  %34 = call i32 @TAILQ_REMOVE(i32* %31, %struct.nd6_prproxy_solsrc* %32, i32 %33)
  %35 = load %struct.nd6_prproxy_solsrc*, %struct.nd6_prproxy_solsrc** %5, align 8
  %36 = call i32 @nd6_solsrc_free(%struct.nd6_prproxy_solsrc* %35)
  br label %6

37:                                               ; preds = %6
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.nd6_prproxy_solsrc* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nd6_prproxy_solsrc*, i32) #1

declare dso_local i32 @nd6_solsrc_free(%struct.nd6_prproxy_solsrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
