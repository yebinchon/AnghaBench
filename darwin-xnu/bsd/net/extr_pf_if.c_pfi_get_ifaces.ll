; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_get_ifaces.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_get_ifaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfi_kif = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.pfi_uif = type { i32, i32, i32, i64, i32, i32, i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@pfi_ifhead = common dso_local global i32 0, align 4
@pfi_ifs = common dso_local global i32 0, align 4
@PFI_KIF_REF_RULE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfi_get_ifaces(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pfi_kif*, align 8
  %9 = alloca %struct.pfi_kif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pfi_uif, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @pf_lock, align 4
  %13 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %14 = call i32 @LCK_MTX_ASSERT(i32 %12, i32 %13)
  %15 = load i32, i32* @pfi_ifhead, align 4
  %16 = call %struct.pfi_kif* @RB_MIN(i32 %15, i32* @pfi_ifs)
  store %struct.pfi_kif* %16, %struct.pfi_kif** %8, align 8
  br label %17

17:                                               ; preds = %100, %3
  %18 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %19 = icmp ne %struct.pfi_kif* %18, null
  br i1 %19, label %20, label %102

20:                                               ; preds = %17
  %21 = load i32, i32* @pfi_ifhead, align 4
  %22 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %23 = call %struct.pfi_kif* @RB_NEXT(i32 %21, i32* @pfi_ifs, %struct.pfi_kif* %22)
  store %struct.pfi_kif* %23, %struct.pfi_kif** %9, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %26 = call i64 @pfi_skip_if(i8* %24, %struct.pfi_kif* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %100

29:                                               ; preds = %20
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = icmp sgt i32 %31, %32
  br i1 %34, label %35, label %99

35:                                               ; preds = %29
  %36 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %37 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = call i64 (...) @pf_calendar_time_second()
  %42 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %43 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %46 = load i32, i32* @PFI_KIF_REF_RULE, align 4
  %47 = call i32 @pfi_kif_ref(%struct.pfi_kif* %45, i32 %46)
  %48 = call i32 @bzero(%struct.pfi_uif* %11, i32 40)
  %49 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %50 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.pfi_uif, %struct.pfi_uif* %11, i32 0, i32 6
  %53 = call i32 @bcopy(i32 %51, i32* %52, i32 4)
  %54 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %55 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.pfi_uif, %struct.pfi_uif* %11, i32 0, i32 5
  %58 = call i32 @bcopy(i32 %56, i32* %57, i32 4)
  %59 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %60 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.pfi_uif, %struct.pfi_uif* %11, i32 0, i32 4
  %63 = call i32 @bcopy(i32 %61, i32* %62, i32 4)
  %64 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %65 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.pfi_uif, %struct.pfi_uif* %11, i32 0, i32 3
  store i64 %66, i64* %67, align 8
  %68 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %69 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.pfi_uif, %struct.pfi_uif* %11, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %73 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.pfi_uif, %struct.pfi_uif* %11, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %77 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.pfi_uif, %struct.pfi_uif* %11, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @copyout(%struct.pfi_uif* %11, i32 %80, i32 40)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %44
  %84 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %85 = load i32, i32* @PFI_KIF_REF_RULE, align 4
  %86 = call i32 @pfi_kif_unref(%struct.pfi_kif* %84, i32 %85)
  %87 = load i32, i32* @EFAULT, align 4
  store i32 %87, i32* %4, align 4
  br label %105

88:                                               ; preds = %44
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, 40
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @pfi_ifhead, align 4
  %94 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %95 = call %struct.pfi_kif* @RB_NEXT(i32 %93, i32* @pfi_ifs, %struct.pfi_kif* %94)
  store %struct.pfi_kif* %95, %struct.pfi_kif** %9, align 8
  %96 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %97 = load i32, i32* @PFI_KIF_REF_RULE, align 4
  %98 = call i32 @pfi_kif_unref(%struct.pfi_kif* %96, i32 %97)
  br label %99

99:                                               ; preds = %88, %29
  br label %100

100:                                              ; preds = %99, %28
  %101 = load %struct.pfi_kif*, %struct.pfi_kif** %9, align 8
  store %struct.pfi_kif* %101, %struct.pfi_kif** %8, align 8
  br label %17

102:                                              ; preds = %17
  %103 = load i32, i32* %10, align 4
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %83
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.pfi_kif* @RB_MIN(i32, i32*) #1

declare dso_local %struct.pfi_kif* @RB_NEXT(i32, i32*, %struct.pfi_kif*) #1

declare dso_local i64 @pfi_skip_if(i8*, %struct.pfi_kif*) #1

declare dso_local i64 @pf_calendar_time_second(...) #1

declare dso_local i32 @pfi_kif_ref(%struct.pfi_kif*, i32) #1

declare dso_local i32 @bzero(%struct.pfi_uif*, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i64 @copyout(%struct.pfi_uif*, i32, i32) #1

declare dso_local i32 @pfi_kif_unref(%struct.pfi_kif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
