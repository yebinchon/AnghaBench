; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_gencmd.c_vc_gencmd_read_response.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_gencmd.c_vc_gencmd_read_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32*, i32 }

@gencmd_client = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VCHI_FLAGS_NONE = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_gencmd_read_response(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %9 = call i64 (...) @lock_obtain()
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %70

11:                                               ; preds = %2
  %12 = call i32 (...) @use_gencmd_service()
  br label %13

13:                                               ; preds = %48, %11
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 3), align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 2), align 8
  %25 = load i32, i32* @VCHI_FLAGS_NONE, align 4
  %26 = call i64 @vchi_msg_dequeue(i32 %23, i64 %24, i32 8, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 1), i32 %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 2), align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @VC_VTOH32(i32 %33)
  store i32 %34, i32* %7, align 4
  br label %40

35:                                               ; preds = %18
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 1), align 8
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %14

40:                                               ; preds = %30, %14
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 1), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = call i64 @vcos_event_wait(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 4))
  %46 = load i64, i64* @VCOS_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %13, label %50

50:                                               ; preds = %48
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 1), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 1), align 8
  %58 = sub i64 %57, 4
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 1), align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 2), align 8
  %61 = add i64 %60, 4
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gencmd_client, i32 0, i32 1), align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @vcos_min(i32 %63, i32 %64)
  %66 = call i32 @memcpy(i8* %59, i64 %61, i64 %65)
  br label %67

67:                                               ; preds = %56, %53, %50
  %68 = call i32 (...) @release_gencmd_service()
  %69 = call i32 (...) @lock_release()
  br label %70

70:                                               ; preds = %67, %2
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i64 @lock_obtain(...) #1

declare dso_local i32 @use_gencmd_service(...) #1

declare dso_local i64 @vchi_msg_dequeue(i32, i64, i32, i64*, i32) #1

declare dso_local i32 @VC_VTOH32(i32) #1

declare dso_local i64 @vcos_event_wait(i32*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i64 @vcos_min(i32, i32) #1

declare dso_local i32 @release_gencmd_service(...) #1

declare dso_local i32 @lock_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
