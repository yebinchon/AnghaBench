; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_check_dup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_check_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf_simple = type { i32 }

@dup_cache = common dso_local global i32* null, align 8
@dup_cache_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_buf_simple*)* @check_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dup(%struct.net_buf_simple* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_buf_simple*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_buf_simple* %0, %struct.net_buf_simple** %3, align 8
  %7 = load %struct.net_buf_simple*, %struct.net_buf_simple** %3, align 8
  %8 = call i32* @net_buf_simple_tail(%struct.net_buf_simple* %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 -4
  %11 = call i32 @sys_get_be32(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 -8
  %14 = call i32 @sys_get_be32(i32* %13)
  %15 = xor i32 %11, %14
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %31, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** @dup_cache, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i32*, i32** @dup_cache, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %45

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %16

34:                                               ; preds = %16
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** @dup_cache, align 8
  %37 = load i32, i32* @dup_cache_next, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @dup_cache_next, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load i32*, i32** @dup_cache, align 8
  %42 = call i32 @ARRAY_SIZE(i32* %41)
  %43 = load i32, i32* @dup_cache_next, align 4
  %44 = srem i32 %43, %42
  store i32 %44, i32* @dup_cache_next, align 4
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %34, %29
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32* @net_buf_simple_tail(%struct.net_buf_simple*) #1

declare dso_local i32 @sys_get_be32(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
