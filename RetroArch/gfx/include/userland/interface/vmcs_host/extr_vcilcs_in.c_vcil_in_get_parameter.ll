; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_in.c_vcil_in_get_parameter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_in.c_vcil_in_get_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32)* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@IL_GET_PARAMETER = common dso_local global i32 0, align 4
@VC_ILCS_MAX_PARAM_SIZE = common dso_local global i32 0, align 4
@IL_GET_RESPONSE_HEADER_SIZE = common dso_local global i32 0, align 4
@OMX_ErrorHardware = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcil_in_get_parameter(i32* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %12, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %13, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @IL_GET_PARAMETER, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @VC_ILCS_MAX_PARAM_SIZE, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %5
  %32 = load i32, i32* @IL_GET_RESPONSE_HEADER_SIZE, align 4
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @OMX_ErrorHardware, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %63

37:                                               ; preds = %5
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @IL_GET_RESPONSE_HEADER_SIZE, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %44(%struct.TYPE_5__* %45, i32 %48, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @memcpy(i32 %57, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
