; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_main.c_bleprph_on_sync.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_main.c_bleprph_on_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@own_addr_type = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"error determining address type; rc=%d\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Device Address: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bleprph_on_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bleprph_on_sync() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = call i32 @ble_hs_util_ensure_addr(i32 0)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = call i32 @ble_hs_id_infer_auto(i32 0, i32* @own_addr_type)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i32, i32* @ERROR, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %27

15:                                               ; preds = %0
  %16 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 24, i1 false)
  %17 = load i32, i32* @own_addr_type, align 4
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %19 = call i32 @ble_hs_id_copy_addr(i32 %17, i32* %18, i32* null)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* @INFO, align 4
  %21 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %23 = call i32 @print_addr(i32* %22)
  %24 = load i32, i32* @INFO, align 4
  %25 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (...) @bleprph_advertise()
  br label %27

27:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @ble_hs_util_ensure_addr(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ble_hs_id_infer_auto(i32, i32*) #1

declare dso_local i32 @MODLOG_DFLT(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ble_hs_id_copy_addr(i32, i32*, i32*) #1

declare dso_local i32 @print_addr(i32*) #1

declare dso_local i32 @bleprph_advertise(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
