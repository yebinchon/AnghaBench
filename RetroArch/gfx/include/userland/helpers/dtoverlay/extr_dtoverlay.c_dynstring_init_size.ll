; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dynstring_init_size.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dynstring_init_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dynstring = type { i32, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"  out of memory\00", align 1
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dynstring*, i32)* @dynstring_init_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dynstring_init_size(%struct.dynstring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dynstring*, align 8
  %5 = alloca i32, align 4
  store %struct.dynstring* %0, %struct.dynstring** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 32
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 32, i32* %5, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.dynstring*, %struct.dynstring** %4, align 8
  %12 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.dynstring*, %struct.dynstring** %4, align 8
  %14 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @malloc(i32 %15)
  %17 = load %struct.dynstring*, %struct.dynstring** %4, align 8
  %18 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dynstring*, %struct.dynstring** %4, align 8
  %20 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %9
  %24 = call i32 @dtoverlay_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @dtoverlay_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
