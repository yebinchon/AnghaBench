; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_I_ShutdownGraphics.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_I_ShutdownGraphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }

@X_display = common dso_local global i32 0, align 4
@X_shminfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [44 x i8] c"XShmDetach() failed in I_ShutdownGraphics()\00", align 1
@IPC_RMID = common dso_local global i32 0, align 4
@image = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I_ShutdownGraphics() #0 {
  %1 = load i32, i32* @X_display, align 4
  %2 = call i32 @XShmDetach(i32 %1, %struct.TYPE_5__* @X_shminfo)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @I_Error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @X_shminfo, i32 0, i32 1), align 4
  %8 = call i32 @shmdt(i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @X_shminfo, i32 0, i32 0), align 4
  %10 = load i32, i32* @IPC_RMID, align 4
  %11 = call i32 @shmctl(i32 %9, i32 %10, i32 0)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @image, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  ret void
}

declare dso_local i32 @XShmDetach(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @shmdt(i32) #1

declare dso_local i32 @shmctl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
