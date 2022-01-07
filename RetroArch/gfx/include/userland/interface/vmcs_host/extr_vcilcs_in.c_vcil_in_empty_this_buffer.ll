; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_in.c_vcil_in_empty_this_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_in.c_vcil_in_empty_this_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32*)* }

@IL_EMPTY_THIS_BUFFER = common dso_local global i32 0, align 4
@OMX_ErrorHardware = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcil_in_empty_this_buffer(%struct.TYPE_9__* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %11, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32* @ilcs_receive_buffer(i32 %18, i8* %19, i32 %20, %struct.TYPE_7__** %12)
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %10, align 8
  store i32 8, i32* %22, align 4
  %23 = load i32, i32* @IL_EMPTY_THIS_BUFFER, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %5
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @is_valid_hostside_buffer(i32* %29)
  %31 = call i32 @vc_assert(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_7__*, i32*)*, i32 (%struct.TYPE_7__*, i32*)** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 %34(%struct.TYPE_7__* %35, i32* %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %44

40:                                               ; preds = %5
  %41 = load i32, i32* @OMX_ErrorHardware, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %28
  ret void
}

declare dso_local i32* @ilcs_receive_buffer(i32, i8*, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @vc_assert(i32) #1

declare dso_local i32 @is_valid_hostside_buffer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
