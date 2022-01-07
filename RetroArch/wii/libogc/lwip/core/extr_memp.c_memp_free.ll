; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_memp.c_memp_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_memp.c_memp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memp = type { %struct.memp* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@mutex = common dso_local global i32 0, align 4
@memp_tab = common dso_local global %struct.memp** null, align 8
@lwip_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@old_level = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memp_free(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.memp*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %28

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = getelementptr inbounds i32, i32* %11, i64 -8
  %13 = bitcast i32* %12 to %struct.memp*
  store %struct.memp* %13, %struct.memp** %5, align 8
  %14 = load i32, i32* @mutex, align 4
  %15 = call i32 @LWP_SemWait(i32 %14)
  %16 = load %struct.memp**, %struct.memp*** @memp_tab, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.memp*, %struct.memp** %16, i64 %17
  %19 = load %struct.memp*, %struct.memp** %18, align 8
  %20 = load %struct.memp*, %struct.memp** %5, align 8
  %21 = getelementptr inbounds %struct.memp, %struct.memp* %20, i32 0, i32 0
  store %struct.memp* %19, %struct.memp** %21, align 8
  %22 = load %struct.memp*, %struct.memp** %5, align 8
  %23 = load %struct.memp**, %struct.memp*** @memp_tab, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.memp*, %struct.memp** %23, i64 %24
  store %struct.memp* %22, %struct.memp** %25, align 8
  %26 = load i32, i32* @mutex, align 4
  %27 = call i32 @LWP_SemPost(i32 %26)
  br label %28

28:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @LWP_SemWait(i32) #1

declare dso_local i32 @LWP_SemPost(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
