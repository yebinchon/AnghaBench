; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_registry.c_mmalomx_registry_component_name.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_registry.c_mmalomx_registry_component_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@mmalomx_components = common dso_local global %struct.TYPE_3__* null, align 8
@MMALOMX_COMPONENT_PREFIX = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mmalomx_registry_component_name(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmalomx_components, align 8
  %7 = call i32 @MMAL_COUNTOF(%struct.TYPE_3__* %6)
  %8 = icmp sge i32 %5, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9, %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmalomx_components, align 8
  %14 = call i32 @MMAL_COUNTOF(%struct.TYPE_3__* %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i8**, i8*** %4, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmalomx_components, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %4, align 8
  store i8* %25, i8** %26, align 8
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i8*, i8** @MMALOMX_COMPONENT_PREFIX, align 8
  %32 = load i8**, i8*** %4, align 8
  store i8* %31, i8** %32, align 8
  br label %33

33:                                               ; preds = %30, %19
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmalomx_components, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  ret i8* %40
}

declare dso_local i32 @MMAL_COUNTOF(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
