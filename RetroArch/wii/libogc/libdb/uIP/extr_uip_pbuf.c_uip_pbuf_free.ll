; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_pbuf.c_uip_pbuf_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_pbuf.c_uip_pbuf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { i64, i64, %struct.uip_pbuf* }

@UIP_PBUF_FLAG_POOL = common dso_local global i64 0, align 8
@uip_pool_pbufs = common dso_local global i32 0, align 4
@UIP_PBUF_FLAG_ROM = common dso_local global i64 0, align 8
@UIP_PBUF_FLAG_REF = common dso_local global i64 0, align 8
@uip_rom_pbufs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uip_pbuf_free(%struct.uip_pbuf* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.uip_pbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uip_pbuf*, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %3, align 8
  %6 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %7 = icmp eq %struct.uip_pbuf* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %61

9:                                                ; preds = %1
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %58, %9
  %11 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %12 = icmp ne %struct.uip_pbuf* %11, null
  br i1 %12, label %13, label %59

13:                                               ; preds = %10
  %14 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %15 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %19 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %13
  %23 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %24 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %23, i32 0, i32 2
  %25 = load %struct.uip_pbuf*, %struct.uip_pbuf** %24, align 8
  store %struct.uip_pbuf* %25, %struct.uip_pbuf** %5, align 8
  %26 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %27 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UIP_PBUF_FLAG_POOL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %33 = call i32 @memb_free(i32* @uip_pool_pbufs, %struct.uip_pbuf* %32)
  br label %53

34:                                               ; preds = %22
  %35 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %36 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UIP_PBUF_FLAG_ROM, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %42 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @UIP_PBUF_FLAG_REF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %34
  %47 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %48 = call i32 @memb_free(i32* @uip_rom_pbufs, %struct.uip_pbuf* %47)
  br label %52

49:                                               ; preds = %40
  %50 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %51 = call i32 @memr_free(%struct.uip_pbuf* %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i64, i64* %4, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %4, align 8
  %56 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  store %struct.uip_pbuf* %56, %struct.uip_pbuf** %3, align 8
  br label %58

57:                                               ; preds = %13
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %3, align 8
  br label %58

58:                                               ; preds = %57, %53
  br label %10

59:                                               ; preds = %10
  %60 = load i64, i64* %4, align 8
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %59, %8
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

declare dso_local i32 @memb_free(i32*, %struct.uip_pbuf*) #1

declare dso_local i32 @memr_free(%struct.uip_pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
