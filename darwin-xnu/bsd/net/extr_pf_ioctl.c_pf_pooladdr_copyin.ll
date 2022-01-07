; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_pooladdr_copyin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_pooladdr_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_pooladdr = type { i8*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_pooladdr*, %struct.pf_pooladdr*)* @pf_pooladdr_copyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_pooladdr_copyin(%struct.pf_pooladdr* %0, %struct.pf_pooladdr* %1) #0 {
  %3 = alloca %struct.pf_pooladdr*, align 8
  %4 = alloca %struct.pf_pooladdr*, align 8
  store %struct.pf_pooladdr* %0, %struct.pf_pooladdr** %3, align 8
  store %struct.pf_pooladdr* %1, %struct.pf_pooladdr** %4, align 8
  %5 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %6 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %4, align 8
  %7 = call i32 @bcopy(%struct.pf_pooladdr* %5, %struct.pf_pooladdr* %6, i32 32)
  %8 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %4, align 8
  %9 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %4, align 8
  %12 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %4, align 8
  %15 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 7
  store i8 0, i8* %17, align 1
  %18 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %4, align 8
  %19 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  ret void
}

declare dso_local i32 @bcopy(%struct.pf_pooladdr*, %struct.pf_pooladdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
