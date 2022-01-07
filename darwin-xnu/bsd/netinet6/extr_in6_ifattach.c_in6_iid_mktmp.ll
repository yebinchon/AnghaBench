; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_ifattach.c_in6_iid_mktmp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_ifattach.c_in6_iid_mktmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.nd_ifinfo = type { i32, i32*, i32*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_iid_mktmp(%struct.ifnet* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca %struct.nd_ifinfo*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %12 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %11)
  store %struct.nd_ifinfo* %12, %struct.nd_ifinfo** %10, align 8
  %13 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %14 = icmp ne %struct.nd_ifinfo* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %17 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %4
  %21 = phi i1 [ false, %4 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @VERIFY(i32 %22)
  %24 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %25 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %24, i32 0, i32 0
  %26 = call i32 @lck_mtx_lock(i32* %25)
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %28 = call i32 @bzero(i32* %27, i32 32)
  %29 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %30 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %33 = call i64 @bcmp(i32* %31, i32* %32, i32 32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %42 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @bcopy(i32* %40, i32* %43, i32 8)
  %45 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %46 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %49 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %52 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @in6_generate_tmp_iid(i32 %47, i32* %50, i32* %53)
  br label %55

55:                                               ; preds = %39, %36
  %56 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %57 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @bcopy(i32* %58, i32* %59, i32 8)
  %61 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %62 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %61, i32 0, i32 0
  %63 = call i32 @lck_mtx_unlock(i32* %62)
  ret void
}

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @in6_generate_tmp_iid(i32, i32*, i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
