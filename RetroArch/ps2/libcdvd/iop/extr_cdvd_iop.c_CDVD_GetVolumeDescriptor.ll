; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_GetVolumeDescriptor.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_GetVolumeDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdVolDesc = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CDVD_GetVolumeDescriptor.localVolDesc = internal global %struct.cdVolDesc zeroinitializer, align 4
@cdReadMode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"CD001\00", align 1
@CDVolDesc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CDVD_GetVolumeDescriptor() #0 {
  %1 = alloca i32, align 4
  store i32 16, i32* %1, align 4
  br label %2

2:                                                ; preds = %22, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 20
  br i1 %4, label %5, label %25

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @ReadSect(i32 %6, i32 1, %struct.cdVolDesc* @CDVD_GetVolumeDescriptor.localVolDesc, i32* @cdReadMode)
  %8 = load i32, i32* getelementptr inbounds (%struct.cdVolDesc, %struct.cdVolDesc* @CDVD_GetVolumeDescriptor.localVolDesc, i32 0, i32 1), align 4
  %9 = call i64 @strncmp(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = load i32, i32* getelementptr inbounds (%struct.cdVolDesc, %struct.cdVolDesc* @CDVD_GetVolumeDescriptor.localVolDesc, i32 0, i32 0), align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* getelementptr inbounds (%struct.cdVolDesc, %struct.cdVolDesc* @CDVD_GetVolumeDescriptor.localVolDesc, i32 0, i32 0), align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %11
  %18 = call i32 @memcpy(%struct.TYPE_3__* @CDVolDesc, %struct.cdVolDesc* @CDVD_GetVolumeDescriptor.localVolDesc, i32 8)
  br label %19

19:                                               ; preds = %17, %14
  br label %21

20:                                               ; preds = %5
  br label %25

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %2

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @TRUE, align 4
  ret i32 %26
}

declare dso_local i32 @ReadSect(i32, i32, %struct.cdVolDesc*, i32*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.cdVolDesc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
