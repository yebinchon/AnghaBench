; ModuleID = '/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/core/extr_pbuf.c_pbuf_realloc.c'
source_filename = "/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/core/extr_pbuf.c_pbuf_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i64, i64, %struct.pbuf*, i64 }

@.str = private unnamed_addr constant [24 x i8] c"pbuf_realloc: p != NULL\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"pbuf_realloc: sane p->type\00", align 1
@PBUF_POOL = common dso_local global i64 0, align 8
@PBUF_ROM = common dso_local global i64 0, align 8
@PBUF_RAM = common dso_local global i64 0, align 8
@PBUF_REF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"grow < max_u16_t\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"pbuf_realloc: q != NULL\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"mem_trim returned q == NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pbuf_realloc(%struct.pbuf* %0, i64 %1) #0 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %9 = icmp ne %struct.pbuf* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %13 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PBUF_POOL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %2
  %18 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PBUF_ROM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PBUF_RAM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PBUF_REF, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %29, %23, %17, %2
  %36 = phi i1 [ true, %23 ], [ true, %17 ], [ true, %2 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %136

45:                                               ; preds = %35
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %48 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i64, i64* %4, align 8
  store i64 %52, i64* %6, align 8
  %53 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  store %struct.pbuf* %53, %struct.pbuf** %5, align 8
  br label %54

54:                                               ; preds = %60, %45
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %57 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %54
  %61 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %62 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 65535
  %68 = zext i1 %67 to i32
  %69 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %73 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %77 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %76, i32 0, i32 3
  %78 = load %struct.pbuf*, %struct.pbuf** %77, align 8
  store %struct.pbuf* %78, %struct.pbuf** %5, align 8
  %79 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %80 = icmp ne %struct.pbuf* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %54

83:                                               ; preds = %54
  %84 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %85 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PBUF_RAM, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %83
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %92 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  %96 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %97 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %98 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i32*
  %101 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %102 = bitcast %struct.pbuf* %101 to i32*
  %103 = ptrtoint i32* %100 to i64
  %104 = ptrtoint i32* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sdiv exact i64 %105, 4
  %107 = load i64, i64* %6, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i64 @mem_trim(%struct.pbuf* %96, i64 %108)
  %110 = inttoptr i64 %109 to %struct.pbuf*
  store %struct.pbuf* %110, %struct.pbuf** %5, align 8
  %111 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %112 = icmp ne %struct.pbuf* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %95, %89, %83
  %116 = load i64, i64* %6, align 8
  %117 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %118 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %120 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %123 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %125 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %124, i32 0, i32 3
  %126 = load %struct.pbuf*, %struct.pbuf** %125, align 8
  %127 = icmp ne %struct.pbuf* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %115
  %129 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %130 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %129, i32 0, i32 3
  %131 = load %struct.pbuf*, %struct.pbuf** %130, align 8
  %132 = call i32 @pbuf_free(%struct.pbuf* %131)
  br label %133

133:                                              ; preds = %128, %115
  %134 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %135 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %134, i32 0, i32 3
  store %struct.pbuf* null, %struct.pbuf** %135, align 8
  br label %136

136:                                              ; preds = %133, %44
  ret void
}

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i64 @mem_trim(%struct.pbuf*, i64) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
