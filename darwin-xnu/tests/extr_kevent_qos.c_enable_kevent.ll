; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_enable_kevent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_enable_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_qos_s = type { i32 }

@KEVENT_FLAG_WORKLOOP = common dso_local global i32 0, align 4
@KEVENT_FLAG_ERROR_EVENTS = common dso_local global i32 0, align 4
@KEVENT_FLAG_DYNAMIC_KQ_MUST_EXIST = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"kevent_id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @enable_kevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_kevent(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kevent_qos_s, align 4
  %7 = alloca [1 x %struct.kevent_qos_s], align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @populate_kevent(%struct.kevent_qos_s* %6, i64 %8)
  %10 = bitcast [1 x %struct.kevent_qos_s]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [1 x %struct.kevent_qos_s], [1 x %struct.kevent_qos_s]* %7, i64 0, i64 0
  %14 = load i32, i32* @KEVENT_FLAG_WORKLOOP, align 4
  %15 = load i32, i32* @KEVENT_FLAG_ERROR_EVENTS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @KEVENT_FLAG_DYNAMIC_KQ_MUST_EXIST, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @kevent_id(i32 %12, %struct.kevent_qos_s* %6, i32 1, %struct.kevent_qos_s* %13, i32 1, i32* null, i32* null, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @T_QUIET, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @populate_kevent(%struct.kevent_qos_s*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @kevent_id(i32, %struct.kevent_qos_s*, i32, %struct.kevent_qos_s*, i32, i32*, i32*, i32) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
