; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_gen_p2_4_confirm.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_gen_p2_4_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"smp_gen_p2_4_confirm\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"can not generate confirm p2 for unknown device\0A\00", align 1
@HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"p2 = padding || ia || ra\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"p2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_gen_p2_4_confirm(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @BTM_ReadRemoteConnectionAddr(i32 %13, i32 %14, i32* %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @SMP_TRACE_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %50

19:                                               ; preds = %2
  %20 = call i32 @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @memset(i32* %21, i32 0, i32 8)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @BDADDR_TO_STREAM(i32* %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @BDADDR_TO_STREAM(i32* %32, i32 %35)
  br label %46

37:                                               ; preds = %19
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @BDADDR_TO_STREAM(i32* %38, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @BDADDR_TO_STREAM(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %28
  %47 = call i32 @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @smp_debug_print_nbyte_little_endian(i64 %48, i32* bitcast ([3 x i8]* @.str.3 to i32*), i32 16)
  br label %50

50:                                               ; preds = %46, %17
  ret void
}

declare dso_local i32 @SMP_TRACE_DEBUG(i8*) #1

declare dso_local i32 @BTM_ReadRemoteConnectionAddr(i32, i32, i32*) #1

declare dso_local i32 @SMP_TRACE_ERROR(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @BDADDR_TO_STREAM(i32*, i32) #1

declare dso_local i32 @smp_debug_print_nbyte_little_endian(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
