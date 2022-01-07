; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_out.c_vcil_out_component_name_enum.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_out.c_vcil_out_component_name_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }

@IL_COMPONENT_NAME_ENUM = common dso_local global i32 0, align 4
@OMX_ErrorHardware = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcil_out_component_name_enum(%struct.TYPE_9__* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 16, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IL_COMPONENT_NAME_ENUM, align 4
  %19 = call i64 @ilcs_execute_function(i32 %17, i32 %18, %struct.TYPE_8__* %10, i32 4, %struct.TYPE_7__* %11, i32* %12)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 16
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %4
  %26 = load i32, i32* @OMX_ErrorHardware, align 4
  store i32 %26, i32* %5, align 4
  br label %44

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 8, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 8, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i64*, i64** %7, align 8
  %34 = bitcast i64* %33 to i8*
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @strncpy(i8* %34, i8* %37, i32 %38)
  %40 = load i64*, i64** %7, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 127
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %32, %25
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @ilcs_execute_function(i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
