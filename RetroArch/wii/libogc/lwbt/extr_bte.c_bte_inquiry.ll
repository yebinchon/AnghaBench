; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_inquiry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, %struct.inquiry_info_ex*, i64 }
%struct.inquiry_info_ex = type { i32, i32 }
%struct.inquiry_info = type { i32, i32 }

@ERR_OK = common dso_local global i64 0, align 8
@btstate = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@bte_inquiry_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bte_inquiry(%struct.inquiry_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inquiry_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.inquiry_info_ex*, align 8
  store %struct.inquiry_info* %0, %struct.inquiry_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i64, i64* @ERR_OK, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @_CPU_ISR_Disable(i32 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 0), align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %17, %3
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 3), align 8
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 1), align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @bte_inquiry_complete, align 4
  %24 = call i32 @hci_inquiry(i32 10390323, i32 3, i32 %22, i32 %23)
  %25 = call i64 @__bte_waitcmdfinish(%struct.TYPE_3__* @btstate)
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 0), align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 2), align 8
  store %struct.inquiry_info_ex* %29, %struct.inquiry_info_ex** %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @_CPU_ISR_Restore(i32 %30)
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @ERR_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %71, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  br i1 %45, label %46, label %74

46:                                               ; preds = %44
  %47 = load %struct.inquiry_info*, %struct.inquiry_info** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %47, i64 %49
  %51 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %50, i32 0, i32 1
  %52 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** %11, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %52, i64 %54
  %56 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %55, i32 0, i32 1
  %57 = call i32 @bd_addr_set(i32* %51, i32* %56)
  %58 = load %struct.inquiry_info*, %struct.inquiry_info** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %58, i64 %60
  %62 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** %11, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %64, i64 %66
  %68 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32 %63, i32 %69, i32 3)
  br label %71

71:                                               ; preds = %46
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %36

74:                                               ; preds = %44
  br label %75

75:                                               ; preds = %74, %26
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @ERR_OK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  br label %84

82:                                               ; preds = %75
  %83 = load i64, i64* %10, align 8
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i64 [ %81, %79 ], [ %83, %82 ]
  %86 = trunc i64 %85 to i32
  ret i32 %86
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @hci_inquiry(i32, i32, i32, i32) #1

declare dso_local i64 @__bte_waitcmdfinish(%struct.TYPE_3__*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @bd_addr_set(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
