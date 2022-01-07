; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_utils.c_smp_build_identity_info_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_utils.c_smp_build_identity_info_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"smp_build_identity_info_cmd\0A\00", align 1
@SMP_ID_INFO_SIZE = common dso_local global i32 0, align 4
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@SMP_OPCODE_IDENTITY_INFO = common dso_local global i32 0, align 4
@BT_OCTET16_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i32*, i32*)* @smp_build_identity_info_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @smp_build_identity_info_cmd(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @UNUSED(i32* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @UNUSED(i32* %10)
  %12 = call i32 @SMP_TRACE_EVENT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @SMP_ID_INFO_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 8, %14
  %16 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = call i64 @osi_malloc(i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %5, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 1
  %26 = bitcast %struct.TYPE_3__* %25 to i32**
  %27 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  store i32** %29, i32*** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @BTM_GetDeviceIDRoot(i32 %30)
  %32 = load i32**, i32*** %6, align 8
  %33 = load i32, i32* @SMP_OPCODE_IDENTITY_INFO, align 4
  %34 = call i32 @UINT8_TO_STREAM(i32** %32, i32 %33)
  %35 = load i32**, i32*** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @BT_OCTET16_LEN, align 4
  %38 = call i32 @ARRAY_TO_STREAM(i32** %35, i32 %36, i32 %37)
  %39 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @SMP_ID_INFO_SIZE, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %23, %2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  ret %struct.TYPE_3__* %46
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @SMP_TRACE_EVENT(i8*) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @BTM_GetDeviceIDRoot(i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32**, i32) #1

declare dso_local i32 @ARRAY_TO_STREAM(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
