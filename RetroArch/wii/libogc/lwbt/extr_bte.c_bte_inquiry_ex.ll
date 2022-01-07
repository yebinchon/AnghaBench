; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_inquiry_ex.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_inquiry_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, %struct.inquiry_info_ex*, i64 }
%struct.inquiry_info_ex = type { i32, i32, i32, i32, i32 }

@ERR_OK = common dso_local global i64 0, align 8
@btstate = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@bte_inquiry_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bte_inquiry_ex(%struct.inquiry_info_ex* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inquiry_info_ex*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.inquiry_info_ex*, align 8
  store %struct.inquiry_info_ex* %0, %struct.inquiry_info_ex** %4, align 8
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
  br i1 %34, label %35, label %108

35:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %104, %35
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
  br i1 %45, label %46, label %107

46:                                               ; preds = %44
  %47 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %47, i64 %49
  %51 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** %11, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %53, i64 %55
  %57 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32 %52, i32 %58, i32 3)
  %60 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %60, i64 %62
  %64 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %63, i32 0, i32 3
  %65 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** %11, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %65, i64 %67
  %69 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %68, i32 0, i32 3
  %70 = call i32 @bd_addr_set(i32* %64, i32* %69)
  %71 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** %11, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %71, i64 %73
  %75 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %77, i64 %79
  %81 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %80, i32 0, i32 2
  store i32 %76, i32* %81, align 4
  %82 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** %11, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %82, i64 %84
  %86 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %88, i64 %90
  %92 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %91, i32 0, i32 1
  store i32 %87, i32* %92, align 4
  %93 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** %11, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %93, i64 %95
  %97 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %99, i64 %101
  %103 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %102, i32 0, i32 0
  store i32 %98, i32* %103, align 4
  br label %104

104:                                              ; preds = %46
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %36

107:                                              ; preds = %44
  br label %108

108:                                              ; preds = %107, %26
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* @ERR_OK, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  br label %117

115:                                              ; preds = %108
  %116 = load i64, i64* %10, align 8
  br label %117

117:                                              ; preds = %115, %112
  %118 = phi i64 [ %114, %112 ], [ %116, %115 ]
  %119 = trunc i64 %118 to i32
  ret i32 %119
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @hci_inquiry(i32, i32, i32, i32) #1

declare dso_local i64 @__bte_waitcmdfinish(%struct.TYPE_3__*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bd_addr_set(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
