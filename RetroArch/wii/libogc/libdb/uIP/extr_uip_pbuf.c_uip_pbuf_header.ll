; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_pbuf.c_uip_pbuf_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_pbuf.c_uip_pbuf_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { i32*, i64, i64, i32 }

@UIP_PBUF_FLAG_POOL = common dso_local global i64 0, align 8
@UIP_PBUF_FLAG_RAM = common dso_local global i64 0, align 8
@UIP_PBUF_FLAG_ROM = common dso_local global i64 0, align 8
@UIP_PBUF_FLAG_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uip_pbuf_header(%struct.uip_pbuf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uip_pbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %11 = icmp eq %struct.uip_pbuf* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %98

13:                                               ; preds = %9
  %14 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %15 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %6, align 8
  %18 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %19 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UIP_PBUF_FLAG_POOL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %13
  %24 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %25 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UIP_PBUF_FLAG_RAM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23, %13
  %30 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %31 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %37 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %39 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %42 = bitcast %struct.uip_pbuf* %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 32
  %44 = icmp ult i32* %40, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load i8*, i8** %6, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %49 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  store i32 1, i32* %3, align 4
  br label %98

50:                                               ; preds = %29
  br label %85

51:                                               ; preds = %23
  %52 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %53 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UIP_PBUF_FLAG_ROM, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %59 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UIP_PBUF_FLAG_REF, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %57, %51
  %64 = load i64, i64* %5, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %69 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %75 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %81 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  br label %83

82:                                               ; preds = %66, %63
  store i32 1, i32* %3, align 4
  br label %98

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %57
  br label %85

85:                                               ; preds = %84, %50
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %88 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 8
  %93 = load i64, i64* %5, align 8
  %94 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %95 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %85, %82, %45, %12
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
