; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler.c_scaler_ctx_gen_reset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler.c_scaler_ctx_gen_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_ctx = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64, i64, i64, i32* }
%struct.TYPE_7__ = type { i32*, i64, i64, i32* }
%struct.TYPE_6__ = type { i32*, i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scaler_ctx_gen_reset(%struct.scaler_ctx* %0) #0 {
  %2 = alloca %struct.scaler_ctx*, align 8
  store %struct.scaler_ctx* %0, %struct.scaler_ctx** %2, align 8
  %3 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @free(i32* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @free(i32* %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @free(i32* %48)
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @free(i32* %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %70 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @free(i32* %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %76 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %82 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @free(i32* %84)
  br label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %88 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  store i32* null, i32** %89, align 8
  %90 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %91 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %94 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %97 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  %99 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %100 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  store i32* null, i32** %101, align 8
  %102 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %103 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %106 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %109 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32* null, i32** %110, align 8
  %111 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %112 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  store i32* null, i32** %113, align 8
  %114 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %115 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %118 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %121 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %124 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i32* null, i32** %125, align 8
  %126 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %127 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  %129 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %130 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  store i32* null, i32** %131, align 8
  %132 = load %struct.scaler_ctx*, %struct.scaler_ctx** %2, align 8
  %133 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
