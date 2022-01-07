; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_gen_p1_4_confirm.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_gen_p1_4_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"smp_gen_p1_4_confirm\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"can not generate confirm for unknown device\0A\00", align 1
@HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@SMP_OPCODE_PAIRING_REQ = common dso_local global i32 0, align 4
@SMP_OPCODE_PAIRING_RSP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"p1 = pres || preq || rat' || iat'\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"P1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_gen_p1_4_confirm(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = call i32 @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @BTM_ReadRemoteConnectionAddr(i32 %13, i32 %14, i32* %6)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @SMP_TRACE_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i32 @BTM_ReadConnectionAddr(i32 %22, i32 %25, i32* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %19
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @UINT8_TO_STREAM(i32* %35, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @UINT8_TO_STREAM(i32* %40, i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = load i32, i32* @SMP_OPCODE_PAIRING_REQ, align 4
  %45 = call i32 @smp_concatenate_local(%struct.TYPE_5__* %43, i32** %5, i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = load i32, i32* @SMP_OPCODE_PAIRING_RSP, align 4
  %48 = call i32 @smp_concatenate_peer(%struct.TYPE_5__* %46, i32** %5, i32 %47)
  br label %64

49:                                               ; preds = %19
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @UINT8_TO_STREAM(i32* %50, i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @UINT8_TO_STREAM(i32* %53, i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = load i32, i32* @SMP_OPCODE_PAIRING_REQ, align 4
  %60 = call i32 @smp_concatenate_peer(%struct.TYPE_5__* %58, i32** %5, i32 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = load i32, i32* @SMP_OPCODE_PAIRING_RSP, align 4
  %63 = call i32 @smp_concatenate_local(%struct.TYPE_5__* %61, i32** %5, i32 %62)
  br label %64

64:                                               ; preds = %49, %34
  %65 = call i32 @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i64, i64* %4, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @smp_debug_print_nbyte_little_endian(i32* %67, i32* bitcast ([3 x i8]* @.str.3 to i32*), i32 16)
  br label %69

69:                                               ; preds = %64, %17
  ret void
}

declare dso_local i32 @SMP_TRACE_DEBUG(i8*) #1

declare dso_local i32 @BTM_ReadRemoteConnectionAddr(i32, i32, i32*) #1

declare dso_local i32 @SMP_TRACE_ERROR(i8*) #1

declare dso_local i32 @BTM_ReadConnectionAddr(i32, i32, i32*) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

declare dso_local i32 @smp_concatenate_local(%struct.TYPE_5__*, i32**, i32) #1

declare dso_local i32 @smp_concatenate_peer(%struct.TYPE_5__*, i32**, i32) #1

declare dso_local i32 @smp_debug_print_nbyte_little_endian(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
