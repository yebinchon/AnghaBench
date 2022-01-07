; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_iokit_rpc.c_iokit_no_senders.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/device/extr_iokit_rpc.c_iokit_no_senders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }

@IKOT_NONE = common dso_local global i32 0, align 4
@IKOT_IOKIT_OBJECT = common dso_local global i32 0, align 4
@IKOT_IOKIT_CONNECT = common dso_local global i32 0, align 4
@IKOT_IOKIT_IDENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@IP_NULL = common dso_local global %struct.TYPE_22__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @iokit_no_senders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iokit_no_senders(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  store i32* null, i32** %4, align 8
  %8 = load i32, i32* @IKOT_NONE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %3, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = call i64 @IP_VALID(%struct.TYPE_22__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %1
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = call i32 @iokit_lock_port(%struct.TYPE_22__* %18)
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %21 = call i64 @ip_active(%struct.TYPE_22__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %4, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = call i32 @ip_kotype(%struct.TYPE_22__* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @IKOT_IOKIT_OBJECT, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @IKOT_IOKIT_CONNECT, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @IKOT_IOKIT_IDENT, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %33, %23
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @IKOT_IOKIT_OBJECT, align 4
  %44 = call i32 @iokit_add_reference(i32* %42, i32 %43)
  br label %46

45:                                               ; preds = %37
  store i32* null, i32** %4, align 8
  br label %46

46:                                               ; preds = %45, %41
  br label %47

47:                                               ; preds = %46, %17
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %49 = call i32 @iokit_unlock_port(%struct.TYPE_22__* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %90

52:                                               ; preds = %47
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* @KERN_SUCCESS, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @iokit_client_died(i32* %57, %struct.TYPE_22__* %58, i32 %59, i64* %7)
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %52
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %64 = call i32 @ip_lock(%struct.TYPE_22__* %63)
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %66 = call i64 @ip_active(%struct.TYPE_22__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %70 = call %struct.TYPE_22__* @ipc_port_make_sonce_locked(%struct.TYPE_22__* %69)
  store %struct.TYPE_22__* %70, %struct.TYPE_22__** %6, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, 1
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %75 = call i32 @ipc_port_nsrequest(%struct.TYPE_22__* %71, i64 %73, %struct.TYPE_22__* %74, %struct.TYPE_22__** %6)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** @IP_NULL, align 8
  %78 = icmp ne %struct.TYPE_22__* %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %81 = call i32 @ipc_port_release_sonce(%struct.TYPE_22__* %80)
  br label %82

82:                                               ; preds = %79, %68
  br label %86

83:                                               ; preds = %62
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %85 = call i32 @ip_unlock(%struct.TYPE_22__* %84)
  br label %86

86:                                               ; preds = %83, %82
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @iokit_remove_reference(i32* %88)
  br label %90

90:                                               ; preds = %87, %47
  br label %91

91:                                               ; preds = %90, %1
  ret void
}

declare dso_local i64 @IP_VALID(%struct.TYPE_22__*) #1

declare dso_local i32 @iokit_lock_port(%struct.TYPE_22__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_22__*) #1

declare dso_local i32 @ip_kotype(%struct.TYPE_22__*) #1

declare dso_local i32 @iokit_add_reference(i32*, i32) #1

declare dso_local i32 @iokit_unlock_port(%struct.TYPE_22__*) #1

declare dso_local i64 @iokit_client_died(i32*, %struct.TYPE_22__*, i32, i64*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @ipc_port_make_sonce_locked(%struct.TYPE_22__*) #1

declare dso_local i32 @ipc_port_nsrequest(%struct.TYPE_22__*, i64, %struct.TYPE_22__*, %struct.TYPE_22__**) #1

declare dso_local i32 @ipc_port_release_sonce(%struct.TYPE_22__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_22__*) #1

declare dso_local i32 @iokit_remove_reference(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
