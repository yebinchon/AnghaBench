; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_cmac.c_cmac_subkey_cont.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_cmac.c_cmac_subkey_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@BT_OCTET16_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cmac_subkey_cont \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"K1 before shift\00", align 1
@const_Rb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"K1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"K2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @cmac_subkey_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmac_subkey_cont(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load i32, i32* @BT_OCTET16_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @BT_OCTET16_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = call i32 @SMP_TRACE_EVENT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @print128(i32* %18, i32* bitcast ([16 x i8]* @.str.1 to i32*))
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @BT_OCTET16_LEN, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @leftshift_onebit(i32* %29, i32* %10)
  %31 = load i32, i32* @const_Rb, align 4
  %32 = call i32 @smp_xor_128(i32* %10, i32 %31)
  br label %36

33:                                               ; preds = %1
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @leftshift_onebit(i32* %34, i32* %10)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* @BT_OCTET16_LEN, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %10, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 128
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = call i32 @leftshift_onebit(i32* %10, i32* %13)
  %46 = load i32, i32* @const_Rb, align 4
  %47 = call i32 @smp_xor_128(i32* %13, i32 %46)
  br label %50

48:                                               ; preds = %36
  %49 = call i32 @leftshift_onebit(i32* %10, i32* %13)
  br label %50

50:                                               ; preds = %48, %44
  %51 = call i32 @print128(i32* %10, i32* bitcast ([3 x i8]* @.str.2 to i32*))
  %52 = call i32 @print128(i32* %13, i32* bitcast ([3 x i8]* @.str.3 to i32*))
  %53 = call i32 @cmac_prepare_last_block(i32* %10, i32* %13)
  %54 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SMP_TRACE_EVENT(i8*) #2

declare dso_local i32 @print128(i32*, i32*) #2

declare dso_local i32 @leftshift_onebit(i32*, i32*) #2

declare dso_local i32 @smp_xor_128(i32*, i32) #2

declare dso_local i32 @cmac_prepare_last_block(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
