; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/linux/extr_khrn_client_platform_linux.c_set_egl_image_color_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/linux/extr_khrn_client_platform_linux.c_set_egl_image_color_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@KHDISPATCH_WORKSPACE_SIZE = common dso_local global i32 0, align 4
@eglIntImageSetColorData_impl = common dso_local global i32 0, align 4
@EGLINTIMAGESETCOLORDATA_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @set_egl_image_color_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_egl_image_color_data(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 0, %20
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i32 [ %21, %17 ], [ %25, %22 ]
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @KHDISPATCH_WORKSPACE_SIZE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @khrn_image_is_brcm1(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, -64
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %26
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %47

47:                                               ; preds = %69, %42
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %112

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @_min(i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %10, align 4
  %57 = call i32* (...) @CLIENT_GET_THREAD_STATE()
  store i32* %57, i32** %11, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %50
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 1
  %66 = add nsw i32 %63, %65
  br label %69

67:                                               ; preds = %50
  %68 = load i32, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi i32 [ %66, %62 ], [ %68, %67 ]
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* @eglIntImageSetColorData_impl, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @EGLINTIMAGESETCOLORDATA_ID, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @RPC_EGLID(i32 %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @RPC_UINT(i32 %78)
  %80 = call i32 @RPC_UINT(i32 0)
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @RPC_INT(i32 %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @RPC_UINT(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @RPC_INT(i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @RPC_UINT(i32 %91)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %96, i64 %102
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @RPC_CALL8_IN_BULK(i32 %71, i32* %72, i32 %73, i32 %75, i32 %79, i32 %80, i32 %82, i32 %86, i32 %88, i32 %92, i8* %103, i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %8, align 4
  br label %47

112:                                              ; preds = %47
  ret void
}

declare dso_local i64 @khrn_image_is_brcm1(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_min(i32, i32) #1

declare dso_local i32* @CLIENT_GET_THREAD_STATE(...) #1

declare dso_local i32 @RPC_CALL8_IN_BULK(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @RPC_EGLID(i32) #1

declare dso_local i32 @RPC_UINT(i32) #1

declare dso_local i32 @RPC_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
