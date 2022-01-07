; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_pbuf.c_pbuf_realloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_pbuf.c_pbuf_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i64, i64, %struct.pbuf*, i64 }

@.str = private unnamed_addr constant [28 x i8] c"pbuf_realloc: sane p->flags\00", align 1
@PBUF_FLAG_POOL = common dso_local global i64 0, align 8
@PBUF_FLAG_ROM = common dso_local global i64 0, align 8
@PBUF_FLAG_RAM = common dso_local global i64 0, align 8
@PBUF_FLAG_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pbuf_realloc(%struct.pbuf* %0, i64 %1) #0 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PBUF_FLAG_POOL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PBUF_FLAG_ROM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PBUF_FLAG_RAM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PBUF_FLAG_REF, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %25, %19, %13, %2
  %32 = phi i1 [ true, %19 ], [ true, %13 ], [ true, %2 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %117

41:                                               ; preds = %31
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %44 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %6, align 8
  %48 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  store %struct.pbuf* %48, %struct.pbuf** %5, align 8
  br label %49

49:                                               ; preds = %55, %41
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %52 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %57 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub nsw i64 %59, %58
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %63 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %67 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %66, i32 0, i32 3
  %68 = load %struct.pbuf*, %struct.pbuf** %67, align 8
  store %struct.pbuf* %68, %struct.pbuf** %5, align 8
  br label %49

69:                                               ; preds = %49
  %70 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %71 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PBUF_FLAG_RAM, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %69
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %78 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %83 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %84 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %88 = bitcast %struct.pbuf* %87 to i32*
  %89 = ptrtoint i32* %86 to i64
  %90 = ptrtoint i32* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = load i64, i64* %6, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @mem_realloc(%struct.pbuf* %82, i64 %94)
  br label %96

96:                                               ; preds = %81, %75, %69
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %99 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %101 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %104 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %106 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %105, i32 0, i32 3
  %107 = load %struct.pbuf*, %struct.pbuf** %106, align 8
  %108 = icmp ne %struct.pbuf* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %96
  %110 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %111 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %110, i32 0, i32 3
  %112 = load %struct.pbuf*, %struct.pbuf** %111, align 8
  %113 = call i32 @pbuf_free(%struct.pbuf* %112)
  br label %114

114:                                              ; preds = %109, %96
  %115 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %116 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %115, i32 0, i32 3
  store %struct.pbuf* null, %struct.pbuf** %116, align 8
  br label %117

117:                                              ; preds = %114, %40
  ret void
}

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @mem_realloc(%struct.pbuf*, i64) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
