; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_ctl.c_ctl_grow.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_ctl.c_ctl_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@ctl_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ctl_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_grow() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 0), align 8
  %5 = call i32* @arena_init(i32 %4)
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %71

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 0), align 8
  %10 = add nsw i32 %9, 2
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i64 @a0malloc(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %71

19:                                               ; preds = %8
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 1), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 0), align 8
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memcpy(i32* %20, i32* %21, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 0), align 8
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = call i32 @memset(i32* %32, i32 0, i32 4)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 0), align 8
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = call i64 @ctl_arena_init(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %19
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @a0dalloc(i32* %42)
  store i32 1, i32* %1, align 4
  br label %71

44:                                               ; preds = %19
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 0), align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @memcpy(i32* %3, i32* %48, i32 4)
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 0), align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 0), align 8
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = call i32 @memcpy(i32* %53, i32* %58, i32 4)
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 0), align 8
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = call i32 @memcpy(i32* %64, i32* %3, i32 4)
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 1), align 8
  %67 = call i32 @a0dalloc(i32* %66)
  %68 = load i32*, i32** %2, align 8
  store i32* %68, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 1), align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 0), align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctl_stats, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %71

71:                                               ; preds = %44, %41, %18, %7
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i32* @arena_init(i32) #1

declare dso_local i64 @a0malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @ctl_arena_init(i32*) #1

declare dso_local i32 @a0dalloc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
