; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sowflush.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sowflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sockbuf }
%struct.sockbuf = type { i32, i32, i32*, i32* }

@SBL_WAIT = common dso_local global i32 0, align 4
@SBL_NOINTR = common dso_local global i32 0, align 4
@SBL_IGNDEFUNCT = common dso_local global i32 0, align 4
@SB_LOCK = common dso_local global i32 0, align 4
@SB_SEL = common dso_local global i32 0, align 4
@SB_UPCALL = common dso_local global i32 0, align 4
@SB_DROP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sowflush(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sockbuf*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = getelementptr inbounds %struct.socket, %struct.socket* %4, i32 0, i32 0
  store %struct.sockbuf* %5, %struct.sockbuf** %3, align 8
  %6 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %7 = load i32, i32* @SBL_WAIT, align 4
  %8 = load i32, i32* @SBL_NOINTR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SBL_IGNDEFUNCT, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @sblock(%struct.sockbuf* %6, i32 %11)
  %13 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %14 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SB_LOCK, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @VERIFY(i32 %17)
  %19 = load i32, i32* @SB_SEL, align 4
  %20 = load i32, i32* @SB_UPCALL, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %24 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @SB_DROP, align 4
  %28 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %29 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %33 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %35 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @sbunlock(%struct.sockbuf* %36, i32 %37)
  %39 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %40 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %39, i32 0, i32 1
  %41 = call i32 @selthreadclear(i32* %40)
  %42 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %43 = call i32 @sbrelease(%struct.sockbuf* %42)
  ret void
}

declare dso_local i32 @sblock(%struct.sockbuf*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @sbunlock(%struct.sockbuf*, i32) #1

declare dso_local i32 @selthreadclear(i32*) #1

declare dso_local i32 @sbrelease(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
