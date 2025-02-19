; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_ssp16.c_read_STACK.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_ssp16.c_read_STACK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@rSTACK = common dso_local global i64 0, align 8
@EL_ANOMALY = common dso_local global i32 0, align 4
@EL_SVP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ssp FIXME: stack underflow! (%i) @ %04x\00", align 1
@ssp = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_STACK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_STACK() #0 {
  %1 = load i64, i64* @rSTACK, align 8
  %2 = add i64 %1, -1
  store i64 %2, i64* @rSTACK, align 8
  %3 = load i64, i64* @rSTACK, align 8
  %4 = trunc i64 %3 to i16
  %5 = sext i16 %4 to i32
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  store i64 5, i64* @rSTACK, align 8
  %8 = load i32, i32* @EL_ANOMALY, align 4
  %9 = load i32, i32* @EL_SVP, align 4
  %10 = or i32 %8, %9
  %11 = load i64, i64* @rSTACK, align 8
  %12 = call i32 (...) @GET_PPC_OFFS()
  %13 = call i32 @elprintf(i32 %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %12)
  br label %14

14:                                               ; preds = %7, %0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @rSTACK, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  ret i32 %20
}

declare dso_local i32 @elprintf(i32, i8*, i64, i32) #1

declare dso_local i32 @GET_PPC_OFFS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
