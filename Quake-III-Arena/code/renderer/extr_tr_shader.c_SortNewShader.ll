; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_SortNewShader.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_SortNewShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__**, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { float, i32 }

@tr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SortNewShader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SortNewShader() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 2), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 0), align 8
  %6 = sub nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %4, i64 %7
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load float, float* %11, align 4
  store float %12, float* %2, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 0), align 8
  %14 = sub nsw i32 %13, 2
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %49, %0
  %16 = load i32, i32* %1, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 1), align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = load float, float* %2, align 4
  %27 = fcmp ole float %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %52

29:                                               ; preds = %18
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 1), align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 1), align 8
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %35, i64 %38
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %39, align 8
  %40 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 1), align 8
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %40, i64 %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %29
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %1, align 4
  br label %15

52:                                               ; preds = %28, %15
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @FixRenderCommandList(i32 %54)
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 1), align 8
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %61, i64 %64
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %65, align 8
  ret void
}

declare dso_local i32 @FixRenderCommandList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
