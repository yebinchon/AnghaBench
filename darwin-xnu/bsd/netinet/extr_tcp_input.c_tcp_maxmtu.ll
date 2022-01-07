; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_maxmtu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_maxmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@CLAT46_HDR_EXPANSION_OVERHD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtentry*)* @tcp_maxmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_maxmtu(%struct.rtentry* %0) #0 {
  %2 = alloca %struct.rtentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtentry* %0, %struct.rtentry** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %6 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %5)
  %7 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %8 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %13 = call %struct.TYPE_6__* @rt_key(%struct.rtentry* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %20 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = call i64 @INTF_ADJUST_MTU_FOR_CLAT46(%struct.TYPE_7__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %26 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = call i32 @IN6_LINKMTU(%struct.TYPE_7__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i64, i64* @CLAT46_HDR_EXPANSION_OVERHD, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %24, %18, %1
  %35 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %36 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %34
  %43 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %44 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @MIN(i64 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %40
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local %struct.TYPE_6__* @rt_key(%struct.rtentry*) #1

declare dso_local i64 @INTF_ADJUST_MTU_FOR_CLAT46(%struct.TYPE_7__*) #1

declare dso_local i32 @IN6_LINKMTU(%struct.TYPE_7__*) #1

declare dso_local i32 @MIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
