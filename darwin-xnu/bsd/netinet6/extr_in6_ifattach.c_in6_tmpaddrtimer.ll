; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_ifattach.c_in6_tmpaddrtimer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_ifattach.c_in6_tmpaddrtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ifnet* }
%struct.ifnet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ifnet* }
%struct.nd_ifinfo = type { i64, i32, i32, i32, i32 }

@ip6_temp_preferred_lifetime = common dso_local global i32 0, align 4
@ip6_desync_factor = common dso_local global i32 0, align 4
@ip6_temp_regen_advance = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ifnet_head = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_tmpaddrtimer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.nd_ifinfo*, align 8
  %5 = alloca [8 x i32], align 16
  store i8* %0, i8** %2, align 8
  store %struct.ifnet* null, %struct.ifnet** %3, align 8
  store %struct.nd_ifinfo* null, %struct.nd_ifinfo** %4, align 8
  %6 = load i32, i32* @ip6_temp_preferred_lifetime, align 4
  %7 = load i32, i32* @ip6_desync_factor, align 4
  %8 = sub nsw i32 %6, %7
  %9 = load i32, i32* @ip6_temp_regen_advance, align 4
  %10 = sub nsw i32 %8, %9
  %11 = load i32, i32* @hz, align 4
  %12 = mul nsw i32 %10, %11
  %13 = call i32 @timeout(void (i8*)* @in6_tmpaddrtimer, i32 0, i32 %12)
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %15 = call i32 @bzero(i32* %14, i32 32)
  %16 = call i32 (...) @ifnet_head_lock_shared()
  %17 = load %struct.ifnet*, %struct.ifnet** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ifnet_head, i32 0, i32 0), align 8
  store %struct.ifnet* %17, %struct.ifnet** %3, align 8
  br label %18

18:                                               ; preds = %58, %1
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = icmp ne %struct.ifnet* %19, null
  br i1 %20, label %21, label %63

21:                                               ; preds = %18
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %22)
  store %struct.nd_ifinfo* %23, %struct.nd_ifinfo** %4, align 8
  %24 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %25 = icmp eq %struct.nd_ifinfo* null, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* @FALSE, align 8
  %28 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %29 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %21
  br label %58

33:                                               ; preds = %26
  %34 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %35 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %34, i32 0, i32 1
  %36 = call i32 @lck_mtx_lock(i32* %35)
  %37 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %38 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %41 = call i64 @bcmp(i32 %39, i32* %40, i32 32)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %45 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %48 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %51 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @in6_generate_tmp_iid(i32 %46, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %43, %33
  %55 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %56 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %55, i32 0, i32 1
  %57 = call i32 @lck_mtx_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %32
  %59 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.ifnet*, %struct.ifnet** %61, align 8
  store %struct.ifnet* %62, %struct.ifnet** %3, align 8
  br label %18

63:                                               ; preds = %18
  %64 = call i32 (...) @ifnet_head_done()
  ret void
}

declare dso_local i32 @timeout(void (i8*)*, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i64 @bcmp(i32, i32*, i32) #1

declare dso_local i32 @in6_generate_tmp_iid(i32, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @ifnet_head_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
