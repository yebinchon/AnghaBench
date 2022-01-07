; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_kif_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_kif_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfi_kif = type { i32, i32, i32 }
%struct.pfi_kif_cmp = type { i32 }

@pfi_ifhead = common dso_local global i32 0, align 4
@pfi_ifs = common dso_local global i32 0, align 4
@PFI_MTYPE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pfi_kif* @pfi_kif_get(i8* %0) #0 {
  %2 = alloca %struct.pfi_kif*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pfi_kif*, align 8
  %5 = alloca %struct.pfi_kif_cmp, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i32 @bzero(%struct.pfi_kif_cmp* %5, i32 4)
  %7 = getelementptr inbounds %struct.pfi_kif_cmp, %struct.pfi_kif_cmp* %5, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strlcpy(i32 %8, i8* %9, i32 4)
  %11 = load i32, i32* @pfi_ifhead, align 4
  %12 = bitcast %struct.pfi_kif_cmp* %5 to i8*
  %13 = bitcast i8* %12 to %struct.pfi_kif*
  %14 = call %struct.pfi_kif* @RB_FIND(i32 %11, i32* @pfi_ifs, %struct.pfi_kif* %13)
  store %struct.pfi_kif* %14, %struct.pfi_kif** %4, align 8
  %15 = icmp ne %struct.pfi_kif* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load %struct.pfi_kif*, %struct.pfi_kif** %4, align 8
  store %struct.pfi_kif* %17, %struct.pfi_kif** %2, align 8
  br label %42

18:                                               ; preds = %1
  %19 = load i32, i32* @PFI_MTYPE, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.pfi_kif* @_MALLOC(i32 12, i32 %19, i32 %22)
  store %struct.pfi_kif* %23, %struct.pfi_kif** %4, align 8
  %24 = icmp eq %struct.pfi_kif* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store %struct.pfi_kif* null, %struct.pfi_kif** %2, align 8
  br label %42

26:                                               ; preds = %18
  %27 = load %struct.pfi_kif*, %struct.pfi_kif** %4, align 8
  %28 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strlcpy(i32 %29, i8* %30, i32 4)
  %32 = call i32 (...) @pf_calendar_time_second()
  %33 = load %struct.pfi_kif*, %struct.pfi_kif** %4, align 8
  %34 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pfi_kif*, %struct.pfi_kif** %4, align 8
  %36 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %35, i32 0, i32 0
  %37 = call i32 @TAILQ_INIT(i32* %36)
  %38 = load i32, i32* @pfi_ifhead, align 4
  %39 = load %struct.pfi_kif*, %struct.pfi_kif** %4, align 8
  %40 = call i32 @RB_INSERT(i32 %38, i32* @pfi_ifs, %struct.pfi_kif* %39)
  %41 = load %struct.pfi_kif*, %struct.pfi_kif** %4, align 8
  store %struct.pfi_kif* %41, %struct.pfi_kif** %2, align 8
  br label %42

42:                                               ; preds = %26, %25, %16
  %43 = load %struct.pfi_kif*, %struct.pfi_kif** %2, align 8
  ret %struct.pfi_kif* %43
}

declare dso_local i32 @bzero(%struct.pfi_kif_cmp*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.pfi_kif* @RB_FIND(i32, i32*, %struct.pfi_kif*) #1

declare dso_local %struct.pfi_kif* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @pf_calendar_time_second(...) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.pfi_kif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
