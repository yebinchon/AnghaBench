; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_llinfo_purge.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_llinfo_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i64, %struct.llinfo_nd6* }
%struct.llinfo_nd6 = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtentry*)* @nd6_llinfo_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_llinfo_purge(%struct.rtentry* %0) #0 {
  %2 = alloca %struct.rtentry*, align 8
  %3 = alloca %struct.llinfo_nd6*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %2, align 8
  %4 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %5 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %4, i32 0, i32 1
  %6 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %5, align 8
  store %struct.llinfo_nd6* %6, %struct.llinfo_nd6** %3, align 8
  %7 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %8 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %7)
  %9 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %10 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to void (%struct.rtentry*)*
  %13 = icmp eq void (%struct.rtentry*)* %12, @nd6_llinfo_purge
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %3, align 8
  %16 = icmp ne %struct.llinfo_nd6* %15, null
  br label %17

17:                                               ; preds = %14, %1
  %18 = phi i1 [ false, %1 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %3, align 8
  %22 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %27 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %26)
  %28 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %3, align 8
  %29 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @ifnet_llreach_free(i32* %30)
  %32 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %3, align 8
  %33 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %25, %17
  %35 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %3, align 8
  %36 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  ret void
}

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @RT_CONVERT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @ifnet_llreach_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
