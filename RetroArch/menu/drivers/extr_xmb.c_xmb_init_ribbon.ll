; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_init_ribbon.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_init_ribbon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float*, float*, float*, i32 }

@XMB_RIBBON_VERTICES = common dso_local global i32 0, align 4
@XMB_RIBBON_ROWS = common dso_local global i32 0, align 4
@XMB_RIBBON_COLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @xmb_init_ribbon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_init_ribbon(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %7, align 4
  %12 = call i32* (...) @menu_display_get_coords_array()
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* @XMB_RIBBON_VERTICES, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = mul i32 4, %14
  %16 = call i64 @calloc(i32 %15, i32 4)
  %17 = inttoptr i64 %16 to float*
  store float* %17, float** %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = mul i32 2, %18
  %20 = call i64 @calloc(i32 %19, i32 4)
  %21 = inttoptr i64 %20 to float*
  store float* %21, float** %11, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %63, %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @XMB_RIBBON_ROWS, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @XMB_RIBBON_COLS, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = urem i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @XMB_RIBBON_COLS, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub i32 %37, %38
  %40 = sub i32 %39, 1
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi i32 [ %40, %36 ], [ %42, %41 ]
  store i32 %44, i32* %6, align 4
  %45 = load float*, float** %11, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @xmb_ribbon_set_vertex(float* %45, i32 %46, i32 %47, i32 %48)
  %50 = load float*, float** %11, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 2
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @xmb_ribbon_set_vertex(float* %50, i32 %52, i32 %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %28

62:                                               ; preds = %28
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %22

66:                                               ; preds = %22
  %67 = load float*, float** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store float* %67, float** %68, align 8
  %69 = load float*, float** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store float* %69, float** %70, align 8
  %71 = load float*, float** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store float* %71, float** %72, align 8
  %73 = load float*, float** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store float* %73, float** %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  store i32 %75, i32* %76, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @video_coord_array_append(i32* %77, %struct.TYPE_3__* %3, i32 %79)
  %81 = load float*, float** %10, align 8
  %82 = call i32 @free(float* %81)
  %83 = load float*, float** %11, align 8
  %84 = call i32 @free(float* %83)
  ret void
}

declare dso_local i32* @menu_display_get_coords_array(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @xmb_ribbon_set_vertex(float*, i32, i32, i32) #1

declare dso_local i32 @video_coord_array_append(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
