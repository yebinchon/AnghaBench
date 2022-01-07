; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d9_common.c_d3d9_texture_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d9_common.c_d3d9_texture_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IDirect3DTexture9 = type { i32 }

@D3DUSAGE_AUTOGENMIPMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @d3d9_texture_new(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i64 %7, i32 %8, i32 %9, i64 %10, i8* %11, i32* %12, i32 %13) #0 {
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  store i8* %0, i8** %16, align 8
  store i8* %1, i8** %17, align 8
  store i32 %2, i32* %18, align 4
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i64 %6, i64* %22, align 8
  store i64 %7, i64* %23, align 8
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i64 %10, i64* %26, align 8
  store i8* %11, i8** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32 %13, i32* %29, align 4
  %32 = load i8*, i8** %16, align 8
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %30, align 4
  store i8* null, i8** %31, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %14
  store i8* null, i8** %15, align 8
  br label %61

37:                                               ; preds = %14
  %38 = load i32, i32* %29, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @D3DUSAGE_AUTOGENMIPMAP, align 4
  %42 = load i32, i32* %21, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %21, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %30, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %21, align 4
  %50 = load i64, i64* %22, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %23, align 8
  %53 = trunc i64 %52 to i32
  %54 = bitcast i8** %31 to %struct.IDirect3DTexture9**
  %55 = call i32 @IDirect3DDevice9_CreateTexture(i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %51, i32 %53, %struct.IDirect3DTexture9** %54, i32* null)
  %56 = call i64 @FAILED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store i8* null, i8** %15, align 8
  br label %61

59:                                               ; preds = %44
  %60 = load i8*, i8** %31, align 8
  store i8* %60, i8** %15, align 8
  br label %61

61:                                               ; preds = %59, %58, %36
  %62 = load i8*, i8** %15, align 8
  ret i8* %62
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DDevice9_CreateTexture(i32, i32, i32, i32, i32, i32, i32, %struct.IDirect3DTexture9**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
