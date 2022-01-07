; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/linux/extr_khrn_client_rpc_linux.c_khan_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/linux/extr_khrn_client_rpc_linux.c_khan_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [66 x i8] c"khan_callback: message for wrong process; pid = %X, msg pid = %X\0A\00", align 1
@VCHIQ_SUCCESS = common dso_local global i32 0, align 4
@ASYNC_COMMAND_DESTROY = common dso_local global i32 0, align 4
@KHR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"khan_callback: unknown message type\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"khan_callback: VCHIQ_SERVICE_OPENED\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"khan_callback: VCHIQ_SERVICE_CLOSED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @khan_callback(i32 %0, %struct.TYPE_4__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %85 [
    i32 130, label %16
    i32 131, label %78
    i32 133, label %78
    i32 128, label %80
    i32 129, label %82
    i32 132, label %84
    i32 134, label %84
  ]

16:                                               ; preds = %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32* %25, i32** %12, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 16
  %30 = zext i1 %29 to i32
  %31 = call i32 @vcos_assert(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @vchiq_get_client_id(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %16
  %40 = load i32*, i32** %12, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %13, align 4
  %44 = ashr i32 %43, 32
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %39, %16
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load i32, i32* @VCHIQ_SUCCESS, align 4
  store i32 %52, i32* %5, align 4
  br label %89

53:                                               ; preds = %39
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @ASYNC_COMMAND_DESTROY, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %74

58:                                               ; preds = %53
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @khronos_platform_semaphore_create(i32* %14, i32* %59, i32 1)
  %61 = load i32, i32* @KHR_SUCCESS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load i32, i32* %11, align 4
  switch i32 %64, label %69 [
    i32 135, label %65
    i32 136, label %67
  ]

65:                                               ; preds = %63
  %66 = call i32 @khronos_platform_semaphore_acquire(i32* %14)
  br label %71

67:                                               ; preds = %63
  %68 = call i32 @khronos_platform_semaphore_release(i32* %14)
  br label %71

69:                                               ; preds = %63
  %70 = call i32 @vcos_assert_msg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %67, %65
  %72 = call i32 @khronos_platform_semaphore_destroy(i32* %14)
  br label %73

73:                                               ; preds = %71, %58
  br label %74

74:                                               ; preds = %73, %57
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = call i32 @vchiq_release_message(i32 %75, %struct.TYPE_4__* %76)
  br label %87

78:                                               ; preds = %4, %4
  %79 = call i32 (...) @UNREACHABLE()
  br label %87

80:                                               ; preds = %4
  %81 = call i32 @vcos_assert_msg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %87

82:                                               ; preds = %4
  %83 = call i32 @vcos_assert_msg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %87

84:                                               ; preds = %4, %4
  br label %85

85:                                               ; preds = %4, %84
  %86 = call i32 (...) @UNREACHABLE()
  br label %87

87:                                               ; preds = %85, %82, %80, %78, %74
  %88 = load i32, i32* @VCHIQ_SUCCESS, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %46
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vchiq_get_client_id(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @khronos_platform_semaphore_create(i32*, i32*, i32) #1

declare dso_local i32 @khronos_platform_semaphore_acquire(i32*) #1

declare dso_local i32 @khronos_platform_semaphore_release(i32*) #1

declare dso_local i32 @vcos_assert_msg(i32, i8*) #1

declare dso_local i32 @khronos_platform_semaphore_destroy(i32*) #1

declare dso_local i32 @vchiq_release_message(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @UNREACHABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
