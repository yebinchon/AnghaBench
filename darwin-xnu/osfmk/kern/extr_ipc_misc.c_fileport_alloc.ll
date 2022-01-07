; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_misc.c_fileport_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_misc.c_fileport_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i32 }

@IP_NULL = common dso_local global i64 0, align 8
@IKOT_FILEPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Couldn't allocate send right for fileport!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fileport_alloc(%struct.fileglob* %0) #0 {
  %2 = alloca %struct.fileglob*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.fileglob* %0, %struct.fileglob** %2, align 8
  %6 = call i64 (...) @ipc_port_alloc_kernel()
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @IP_NULL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %32

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %14 = ptrtoint %struct.fileglob* %13 to i32
  %15 = load i32, i32* @IKOT_FILEPORT, align 4
  %16 = call i32 @ipc_kobject_set(i64 %12, i32 %14, i32 %15)
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @ip_lock(i64 %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @ipc_port_make_sonce_locked(i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @ipc_port_nsrequest(i64 %21, i32 1, i64 %22, i64* %5)
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @ipc_port_make_send(i64 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @IP_VALID(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %11
  %30 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %11
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i64 @ipc_port_alloc_kernel(...) #1

declare dso_local i32 @ipc_kobject_set(i64, i32, i32) #1

declare dso_local i32 @ip_lock(i64) #1

declare dso_local i64 @ipc_port_make_sonce_locked(i64) #1

declare dso_local i32 @ipc_port_nsrequest(i64, i32, i64, i64*) #1

declare dso_local i64 @ipc_port_make_send(i64) #1

declare dso_local i32 @IP_VALID(i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
