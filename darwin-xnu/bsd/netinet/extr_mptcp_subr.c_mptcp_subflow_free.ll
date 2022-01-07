; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_subflow_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_subflow_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptsub = type { i64, i32, i32*, i32*, i32* }

@MPTSF_ATTACHED = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@mptsub_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mptsub*)* @mptcp_subflow_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_subflow_free(%struct.mptsub* %0) #0 {
  %2 = alloca %struct.mptsub*, align 8
  store %struct.mptsub* %0, %struct.mptsub** %2, align 8
  %3 = load %struct.mptsub*, %struct.mptsub** %2, align 8
  %4 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @VERIFY(i32 %7)
  %9 = load %struct.mptsub*, %struct.mptsub** %2, align 8
  %10 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MPTSF_ATTACHED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load %struct.mptsub*, %struct.mptsub** %2, align 8
  %19 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @VERIFY(i32 %22)
  %24 = load %struct.mptsub*, %struct.mptsub** %2, align 8
  %25 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @VERIFY(i32 %28)
  %30 = load %struct.mptsub*, %struct.mptsub** %2, align 8
  %31 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load %struct.mptsub*, %struct.mptsub** %2, align 8
  %36 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @M_SONAME, align 4
  %39 = call i32 @FREE(i32* %37, i32 %38)
  %40 = load %struct.mptsub*, %struct.mptsub** %2, align 8
  %41 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %34, %1
  %43 = load i32, i32* @mptsub_zone, align 4
  %44 = load %struct.mptsub*, %struct.mptsub** %2, align 8
  %45 = call i32 @zfree(i32 %43, %struct.mptsub* %44)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @FREE(i32*, i32) #1

declare dso_local i32 @zfree(i32, %struct.mptsub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
