; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_set_fc_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_set_fc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@INP_FC_FEEDBACK = common dso_local global i32 0, align 4
@INP_FLOW_CONTROLLED = common dso_local global i32 0, align 4
@INP_FLOW_SUSPENDED = common dso_local global i32 0, align 4
@INPFC_SOLOCKED = common dso_local global i32 0, align 4
@WNT_RELEASE = common dso_local global i32 0, align 4
@WNT_STOPUSING = common dso_local global i64 0, align 8
@SO_FILT_HINT_LOCKED = common dso_local global i32 0, align 4
@SO_FILT_HINT_SUSPEND = common dso_local global i32 0, align 4
@SOF_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inp_set_fc_state(%struct.inpcb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.inpcb* null, %struct.inpcb** %6, align 8
  %7 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %8 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @INP_FC_FEEDBACK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load i32, i32* @INP_FLOW_CONTROLLED, align 4
  %16 = load i32, i32* @INP_FLOW_SUSPENDED, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %24 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @INPFC_SOLOCKED, align 4
  %27 = call %struct.inpcb* @inp_fc_getinp(i32 %25, i32 %26)
  store %struct.inpcb* %27, %struct.inpcb** %6, align 8
  %28 = icmp ne %struct.inpcb* %27, null
  br i1 %28, label %29, label %70

29:                                               ; preds = %14
  %30 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %31 = load i32, i32* @WNT_RELEASE, align 4
  %32 = call i64 @in_pcb_checkstate(%struct.inpcb* %30, i32 %31, i32 1)
  %33 = load i64, i64* @WNT_STOPUSING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %71

36:                                               ; preds = %29
  %37 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %38 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %39 = icmp eq %struct.inpcb* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @VERIFY(i32 %40)
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %69 [
    i32 129, label %43
    i32 128, label %49
  ]

43:                                               ; preds = %36
  %44 = load i32, i32* @INP_FLOW_CONTROLLED, align 4
  %45 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %69

49:                                               ; preds = %36
  %50 = load i32, i32* @INP_FLOW_SUSPENDED, align 4
  %51 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %52 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %56 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* @SO_FILT_HINT_LOCKED, align 4
  %59 = load i32, i32* @SO_FILT_HINT_SUSPEND, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @soevent(%struct.TYPE_2__* %57, i32 %60)
  %62 = load i32, i32* @SOF_SUSPENDED, align 4
  %63 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %64 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %36, %49, %43
  store i32 1, i32* %3, align 4
  br label %71

70:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %69, %35, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.inpcb* @inp_fc_getinp(i32, i32) #1

declare dso_local i64 @in_pcb_checkstate(%struct.inpcb*, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @soevent(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
