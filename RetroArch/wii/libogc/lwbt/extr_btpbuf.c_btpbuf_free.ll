; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btpbuf.c_btpbuf_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btpbuf.c_btpbuf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i64, %struct.pbuf* }

@PBUF_FLAG_POOL = common dso_local global i64 0, align 8
@pool_pbufs = common dso_local global i32 0, align 4
@PBUF_FLAG_ROM = common dso_local global i64 0, align 8
@PBUF_FLAG_REF = common dso_local global i64 0, align 8
@rom_pbufs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btpbuf_free(%struct.pbuf* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  %7 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %8 = icmp eq %struct.pbuf* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %66

10:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @_CPU_ISR_Disable(i32 %11)
  br label %13

13:                                               ; preds = %61, %10
  %14 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %15 = icmp ne %struct.pbuf* %14, null
  br i1 %15, label %16, label %62

16:                                               ; preds = %13
  %17 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %16
  %26 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %26, i32 0, i32 2
  %28 = load %struct.pbuf*, %struct.pbuf** %27, align 8
  store %struct.pbuf* %28, %struct.pbuf** %6, align 8
  %29 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PBUF_FLAG_POOL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %36 = call i32 @btmemb_free(i32* @pool_pbufs, %struct.pbuf* %35)
  br label %56

37:                                               ; preds = %25
  %38 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PBUF_FLAG_ROM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PBUF_FLAG_REF, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %37
  %50 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %51 = call i32 @btmemb_free(i32* @rom_pbufs, %struct.pbuf* %50)
  br label %55

52:                                               ; preds = %43
  %53 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %54 = call i32 @btmemr_free(%struct.pbuf* %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i64, i64* %4, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %4, align 8
  %59 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  store %struct.pbuf* %59, %struct.pbuf** %3, align 8
  br label %61

60:                                               ; preds = %16
  store %struct.pbuf* null, %struct.pbuf** %3, align 8
  br label %61

61:                                               ; preds = %60, %56
  br label %13

62:                                               ; preds = %13
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @_CPU_ISR_Restore(i32 %63)
  %65 = load i64, i64* %4, align 8
  store i64 %65, i64* %2, align 8
  br label %66

66:                                               ; preds = %62, %9
  %67 = load i64, i64* %2, align 8
  ret i64 %67
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @btmemb_free(i32*, %struct.pbuf*) #1

declare dso_local i32 @btmemr_free(%struct.pbuf*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
