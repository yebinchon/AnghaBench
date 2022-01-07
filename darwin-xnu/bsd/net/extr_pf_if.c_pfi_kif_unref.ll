; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_kif_unref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_kif_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfi_kif = type { i64, i64, i32* }

@.str = private unnamed_addr constant [36 x i8] c"pfi_kif_unref: rules refcount <= 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"pfi_kif_unref: state refcount <= 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"pfi_kif_unref with unknown type\00", align 1
@pfi_all = common dso_local global %struct.pfi_kif* null, align 8
@pfi_ifhead = common dso_local global i32 0, align 4
@pfi_ifs = common dso_local global i32 0, align 4
@PFI_MTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfi_kif_unref(%struct.pfi_kif* %0, i32 %1) #0 {
  %3 = alloca %struct.pfi_kif*, align 8
  %4 = alloca i32, align 4
  store %struct.pfi_kif* %0, %struct.pfi_kif** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %6 = icmp eq %struct.pfi_kif* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %65

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %35 [
    i32 130, label %10
    i32 129, label %11
    i32 128, label %23
  ]

10:                                               ; preds = %8
  br label %37

11:                                               ; preds = %8
  %12 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %13 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %65

18:                                               ; preds = %11
  %19 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %20 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  br label %37

23:                                               ; preds = %8
  %24 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %25 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %65

30:                                               ; preds = %23
  %31 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %32 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  br label %37

35:                                               ; preds = %8
  %36 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30, %18, %10
  %38 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %39 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %44 = load %struct.pfi_kif*, %struct.pfi_kif** @pfi_all, align 8
  %45 = icmp eq %struct.pfi_kif* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %37
  br label %65

47:                                               ; preds = %42
  %48 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %49 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %54 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %47
  br label %65

58:                                               ; preds = %52
  %59 = load i32, i32* @pfi_ifhead, align 4
  %60 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %61 = call i32 @RB_REMOVE(i32 %59, i32* @pfi_ifs, %struct.pfi_kif* %60)
  %62 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %63 = load i32, i32* @PFI_MTYPE, align 4
  %64 = call i32 @_FREE(%struct.pfi_kif* %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %57, %46, %28, %16, %7
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.pfi_kif*) #1

declare dso_local i32 @_FREE(%struct.pfi_kif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
