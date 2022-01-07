; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_lr2lri.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_lr2lri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_llreach = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.if_llreach_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IF_LLREACH_MAXLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ifnet_lr2lri(%struct.if_llreach* %0, %struct.if_llreach_info* %1) #0 {
  %3 = alloca %struct.if_llreach*, align 8
  %4 = alloca %struct.if_llreach_info*, align 8
  store %struct.if_llreach* %0, %struct.if_llreach** %3, align 8
  store %struct.if_llreach_info* %1, %struct.if_llreach_info** %4, align 8
  %5 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %6 = call i32 @IFLR_LOCK_ASSERT_HELD(%struct.if_llreach* %5)
  %7 = load %struct.if_llreach_info*, %struct.if_llreach_info** %4, align 8
  %8 = call i32 @bzero(%struct.if_llreach_info* %7, i32 36)
  %9 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %10 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.if_llreach_info*, %struct.if_llreach_info** %4, align 8
  %13 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 4
  %14 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %15 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %14, i32 0, i32 6
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.if_llreach_info*, %struct.if_llreach_info** %4, align 8
  %20 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %22 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.if_llreach_info*, %struct.if_llreach_info** %4, align 8
  %25 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %27 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %28 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ifnet_llreach_up2calexp(%struct.if_llreach* %26, i32 %29)
  %31 = load %struct.if_llreach_info*, %struct.if_llreach_info** %4, align 8
  %32 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %34 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.if_llreach_info*, %struct.if_llreach_info** %4, align 8
  %38 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %40 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.if_llreach_info*, %struct.if_llreach_info** %4, align 8
  %43 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %42, i32 0, i32 3
  %44 = load i32, i32* @IF_LLREACH_MAXLEN, align 4
  %45 = call i32 @bcopy(i32* %41, i32* %43, i32 %44)
  %46 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %47 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.if_llreach_info*, %struct.if_llreach_info** %4, align 8
  %50 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %52 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.if_llreach_info*, %struct.if_llreach_info** %4, align 8
  %55 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %57 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.if_llreach_info*, %struct.if_llreach_info** %4, align 8
  %60 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i32 @IFLR_LOCK_ASSERT_HELD(%struct.if_llreach*) #1

declare dso_local i32 @bzero(%struct.if_llreach_info*, i32) #1

declare dso_local i32 @ifnet_llreach_up2calexp(%struct.if_llreach*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
