; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_lr2iflri.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_lr2iflri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_llreach = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifnet_llreach_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@IF_LLREACH_MAXLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ifnet_lr2iflri(%struct.if_llreach* %0, %struct.ifnet_llreach_info* %1) #0 {
  %3 = alloca %struct.if_llreach*, align 8
  %4 = alloca %struct.ifnet_llreach_info*, align 8
  store %struct.if_llreach* %0, %struct.if_llreach** %3, align 8
  store %struct.ifnet_llreach_info* %1, %struct.ifnet_llreach_info** %4, align 8
  %5 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %6 = call i32 @IFLR_LOCK_ASSERT_HELD(%struct.if_llreach* %5)
  %7 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %4, align 8
  %8 = call i32 @bzero(%struct.ifnet_llreach_info* %7, i32 36)
  %9 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %10 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet_llreach_info, %struct.ifnet_llreach_info* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 4
  %14 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %15 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %4, align 8
  %18 = getelementptr inbounds %struct.ifnet_llreach_info, %struct.ifnet_llreach_info* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %20 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %21 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ifnet_llreach_up2upexp(%struct.if_llreach* %19, i32 %22)
  %24 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %4, align 8
  %25 = getelementptr inbounds %struct.ifnet_llreach_info, %struct.ifnet_llreach_info* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = call i32 (...) @net_uptime()
  %27 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet_llreach_info, %struct.ifnet_llreach_info* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %30 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %41 [
    i32 129, label %33
    i32 128, label %37
  ]

33:                                               ; preds = %2
  %34 = load i32, i32* @PF_INET, align 4
  %35 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet_llreach_info, %struct.ifnet_llreach_info* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  br label %45

37:                                               ; preds = %2
  %38 = load i32, i32* @PF_INET6, align 4
  %39 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %4, align 8
  %40 = getelementptr inbounds %struct.ifnet_llreach_info, %struct.ifnet_llreach_info* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  br label %45

41:                                               ; preds = %2
  %42 = load i32, i32* @PF_UNSPEC, align 4
  %43 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %4, align 8
  %44 = getelementptr inbounds %struct.ifnet_llreach_info, %struct.ifnet_llreach_info* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37, %33
  %46 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %47 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet_llreach_info, %struct.ifnet_llreach_info* %49, i32 0, i32 3
  %51 = load i32, i32* @IF_LLREACH_MAXLEN, align 4
  %52 = call i32 @bcopy(i32* %48, i32* %50, i32 %51)
  %53 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %54 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet_llreach_info, %struct.ifnet_llreach_info* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %59 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %4, align 8
  %62 = getelementptr inbounds %struct.ifnet_llreach_info, %struct.ifnet_llreach_info* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %64 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %4, align 8
  %67 = getelementptr inbounds %struct.ifnet_llreach_info, %struct.ifnet_llreach_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  ret void
}

declare dso_local i32 @IFLR_LOCK_ASSERT_HELD(%struct.if_llreach*) #1

declare dso_local i32 @bzero(%struct.ifnet_llreach_info*, i32) #1

declare dso_local i32 @ifnet_llreach_up2upexp(%struct.if_llreach*, i32) #1

declare dso_local i32 @net_uptime(...) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
