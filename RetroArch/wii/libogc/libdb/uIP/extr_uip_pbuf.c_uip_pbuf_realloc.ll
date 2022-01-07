; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_pbuf.c_uip_pbuf_realloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_pbuf.c_uip_pbuf_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { i64, i64, i64, %struct.uip_pbuf*, i64 }

@UIP_PBUF_FLAG_RAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_pbuf_realloc(%struct.uip_pbuf* %0, i64 %1) #0 {
  %3 = alloca %struct.uip_pbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.uip_pbuf*, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %10 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %90

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %17 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %5, align 8
  %21 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  store %struct.uip_pbuf* %21, %struct.uip_pbuf** %7, align 8
  br label %22

22:                                               ; preds = %28, %14
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %25 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %30 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = sub nsw i64 %32, %31
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %36 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %40 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %39, i32 0, i32 3
  %41 = load %struct.uip_pbuf*, %struct.uip_pbuf** %40, align 8
  store %struct.uip_pbuf* %41, %struct.uip_pbuf** %7, align 8
  br label %22

42:                                               ; preds = %22
  %43 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %44 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UIP_PBUF_FLAG_RAM, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %51 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %56 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %57 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %61 = bitcast %struct.uip_pbuf* %60 to i32*
  %62 = ptrtoint i32* %59 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = load i64, i64* %5, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @memr_realloc(%struct.uip_pbuf* %55, i64 %67)
  br label %69

69:                                               ; preds = %54, %48, %42
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %72 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %74 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %77 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %79 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %78, i32 0, i32 3
  %80 = load %struct.uip_pbuf*, %struct.uip_pbuf** %79, align 8
  %81 = icmp ne %struct.uip_pbuf* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %69
  %83 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %84 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %83, i32 0, i32 3
  %85 = load %struct.uip_pbuf*, %struct.uip_pbuf** %84, align 8
  %86 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %85)
  br label %87

87:                                               ; preds = %82, %69
  %88 = load %struct.uip_pbuf*, %struct.uip_pbuf** %7, align 8
  %89 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %88, i32 0, i32 3
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %89, align 8
  br label %90

90:                                               ; preds = %87, %13
  ret void
}

declare dso_local i32 @memr_realloc(%struct.uip_pbuf*, i64) #1

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
