; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_utils.c_smp_build_pairing_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_utils.c_smp_build_pairing_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"smp_build_pairing_cmd\00", align 1
@SMP_PAIRING_REQ_SIZE = common dso_local global i32 0, align 4
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @smp_build_pairing_cmd(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  %7 = call i32 @SMP_TRACE_EVENT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @SMP_PAIRING_REQ_SIZE, align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 8, %9
  %11 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %10, %12
  %14 = trunc i64 %13 to i32
  %15 = call i64 @osi_malloc(i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %5, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %64

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 1
  %21 = bitcast %struct.TYPE_6__* %20 to i32*
  %22 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @UINT8_TO_STREAM(i32* %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @UINT8_TO_STREAM(i32* %28, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @UINT8_TO_STREAM(i32* %33, i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @UINT8_TO_STREAM(i32* %38, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @UINT8_TO_STREAM(i32* %43, i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @UINT8_TO_STREAM(i32* %48, i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @UINT8_TO_STREAM(i32* %53, i32 %56)
  %58 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @SMP_PAIRING_REQ_SIZE, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %18, %2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %65
}

declare dso_local i32 @SMP_TRACE_EVENT(i8*) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
