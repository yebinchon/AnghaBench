; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_gencmd.c_vc_vchi_gencmd_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_gencmd.c_vc_vchi_gencmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32*, i32, i32, i32*, i32, i32 }

@gencmd_client = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"HGencmd\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@VC_GENCMD_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"GCMD\00", align 1
@gencmd_callback = common dso_local global i32 0, align 4
@VC_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc_vchi_gencmd_init(i32 %0, i32** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gencmd_client, i32 0, i32 0), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %74

14:                                               ; preds = %3
  %15 = call i32 @memset(%struct.TYPE_6__* @gencmd_client, i32 0, i32 4)
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gencmd_client, i32 0, i32 1), align 4
  %18 = call i64 @vcos_mutex_create(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gencmd_client, i32 0, i32 4), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @VCOS_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @vcos_assert(i32 %22)
  %24 = call i64 @vcos_event_create(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gencmd_client, i32 0, i32 3), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @VCOS_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @vcos_assert(i32 %28)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %69, %14
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gencmd_client, i32 0, i32 1), align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %36 = load i32, i32* @VC_GENCMD_VER, align 4
  %37 = call i32 @VCHI_VERSION(i32 %36)
  store i32 %37, i32* %35, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %39 = call i32 @MAKE_FOURCC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %41 = load i32**, i32*** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = ptrtoint i32* %45 to i32
  store i32 %46, i32* %40, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i32* null, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  store i32 ptrtoint (i32* @gencmd_callback to i32), i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  store i32 ptrtoint (i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gencmd_client, i32 0, i32 3) to i32), i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 7
  %52 = load i32, i32* @VC_FALSE, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %51, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 8
  %56 = load i32, i32* @VC_FALSE, align 4
  store i32 %56, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 9
  %58 = load i32, i32* @VC_FALSE, align 4
  store i32 %58, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gencmd_client, i32 0, i32 2), align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i64 @vchi_service_open(i32 %59, %struct.TYPE_5__* %10, i32* %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  br label %69

69:                                               ; preds = %34
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %30

72:                                               ; preds = %30
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gencmd_client, i32 0, i32 0), align 8
  %73 = call i32 (...) @release_gencmd_service()
  br label %74

74:                                               ; preds = %72, %13
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @vcos_event_create(i32*, i8*) #1

declare dso_local i32 @VCHI_VERSION(i32) #1

declare dso_local i32 @MAKE_FOURCC(i8*) #1

declare dso_local i64 @vchi_service_open(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @release_gencmd_service(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
