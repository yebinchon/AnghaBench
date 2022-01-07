; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_alloc_binds.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_alloc_binds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_default_bind = type { i32, i64, i32 }
%struct.TYPE_2__ = type { %struct.in_default_bind* }

@IN_BINDTYPE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @in_alloc_binds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @in_alloc_binds(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_default_bind*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @IN_BINDTYPE_COUNT, align 4
  %12 = mul nsw i32 %10, %11
  %13 = mul nsw i32 %12, 2
  %14 = call i32* @calloc(i32 %13, i32 4)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %98

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.in_default_bind* @DRV(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.in_default_bind* %20, %struct.in_default_bind** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %23 = load %struct.in_default_bind*, %struct.in_default_bind** %22, align 8
  store %struct.in_default_bind* %23, %struct.in_default_bind** %6, align 8
  %24 = load %struct.in_default_bind*, %struct.in_default_bind** %6, align 8
  %25 = icmp ne %struct.in_default_bind* %24, null
  br i1 %25, label %26, label %96

26:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %77, %26
  %28 = load %struct.in_default_bind*, %struct.in_default_bind** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.in_default_bind, %struct.in_default_bind* %28, i64 %30
  %32 = getelementptr inbounds %struct.in_default_bind, %struct.in_default_bind* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %27
  %36 = load %struct.in_default_bind*, %struct.in_default_bind** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.in_default_bind, %struct.in_default_bind* %36, i64 %38
  %40 = getelementptr inbounds %struct.in_default_bind, %struct.in_default_bind* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.in_default_bind*, %struct.in_default_bind** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.in_default_bind, %struct.in_default_bind* %44, i64 %46
  %48 = getelementptr inbounds %struct.in_default_bind, %struct.in_default_bind* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %80

52:                                               ; preds = %43, %35, %27
  %53 = load %struct.in_default_bind*, %struct.in_default_bind** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.in_default_bind, %struct.in_default_bind* %53, i64 %55
  %57 = getelementptr inbounds %struct.in_default_bind, %struct.in_default_bind* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 1, %58
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.in_default_bind*, %struct.in_default_bind** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.in_default_bind, %struct.in_default_bind* %61, i64 %63
  %65 = getelementptr inbounds %struct.in_default_bind, %struct.in_default_bind* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.in_default_bind*, %struct.in_default_bind** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.in_default_bind, %struct.in_default_bind* %67, i64 %69
  %71 = getelementptr inbounds %struct.in_default_bind, %struct.in_default_bind* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @IN_BIND_OFFS(i32 %66, i64 %72)
  %74 = getelementptr inbounds i32, i32* %60, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %59
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %52
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %27

80:                                               ; preds = %51
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @IN_BINDTYPE_COUNT, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = load i32, i32* @IN_BINDTYPE_COUNT, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %90, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i32* %86, i32* %87, i32 %94)
  br label %96

96:                                               ; preds = %80, %18
  %97 = load i32*, i32** %7, align 8
  store i32* %97, i32** %3, align 8
  br label %98

98:                                               ; preds = %96, %17
  %99 = load i32*, i32** %3, align 8
  ret i32* %99
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local %struct.in_default_bind* @DRV(i32) #1

declare dso_local i64 @IN_BIND_OFFS(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
