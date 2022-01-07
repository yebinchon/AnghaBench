; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_iokit_rpc.c_iokit_make_send_right.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_iokit_rpc.c_iokit_make_send_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MACH_PORT_NULL = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_PORT_SEND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@IP_DEAD = common dso_local global i64 0, align 8
@MACH_PORT_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iokit_make_send_right(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %15, i32* %4, align 4
  br label %66

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @iokit_port_for_object(i32* %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @ipc_port_make_send(i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @iokit_release_port(i64 %25)
  br label %29

27:                                               ; preds = %16
  %28 = load i64, i64* @IP_NULL, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @IP_VALID(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @MACH_MSG_TYPE_PORT_SEND, align 4
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i64 @ipc_object_copyout(i32 %36, i32 %38, i32 %39, i32 %40, i32* %10)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @KERN_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @ipc_port_release_send(i64 %46)
  %48 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %45, %33
  br label %64

50:                                               ; preds = %29
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @IP_NULL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %55, i32* %10, align 4
  br label %63

56:                                               ; preds = %50
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @IP_DEAD, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @MACH_PORT_DEAD, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62, %54
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %14
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @iokit_port_for_object(i32*, i32) #1

declare dso_local i64 @ipc_port_make_send(i64) #1

declare dso_local i32 @iokit_release_port(i64) #1

declare dso_local i64 @IP_VALID(i64) #1

declare dso_local i64 @ipc_object_copyout(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ipc_port_release_send(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
