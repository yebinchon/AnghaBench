; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dynstring_set_size.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dynstring_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dynstring = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"  out of memory\00", align 1
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dynstring*, i32)* @dynstring_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dynstring_set_size(%struct.dynstring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dynstring*, align 8
  %5 = alloca i32, align 4
  store %struct.dynstring* %0, %struct.dynstring** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.dynstring*, %struct.dynstring** %4, align 8
  %8 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %6, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 5
  %14 = sdiv i32 %13, 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.dynstring*, %struct.dynstring** %4, align 8
  %16 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @realloc(i32 %17, i32 %18)
  %20 = load %struct.dynstring*, %struct.dynstring** %4, align 8
  %21 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.dynstring*, %struct.dynstring** %4, align 8
  %23 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %11
  %27 = call i32 @dtoverlay_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %11
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.dynstring*, %struct.dynstring** %4, align 8
  %33 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @realloc(i32, i32) #1

declare dso_local i32 @dtoverlay_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
