; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_pbuf.c_pbuf_take.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_pbuf.c_pbuf_take.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i64, %struct.pbuf*, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"pbuf_take: p != NULL\0A\00", align 1
@PBUF_DEBUG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pbuf_take(%p)\0A\00", align 1
@PBUF_FLAG_REF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"pbuf_take: encountered PBUF_REF %p\0A\00", align 1
@PBUF_POOL_BUFSIZE = common dso_local global i64 0, align 8
@PBUF_RAW = common dso_local global i32 0, align 4
@PBUF_POOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"pbuf_take: Could not allocate PBUF_POOL\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"pbuf_take: PBUF_POOL too small to replace PBUF_REF\0A\00", align 1
@PBUF_RAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"pbuf_take: Could not allocate PBUF_RAM\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"prev->next == p\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"pbuf_take: replaced PBUF_REF %p with %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"pbuf_take: failed to allocate replacement pbuf for %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"pbuf_take: skipping pbuf not of type PBUF_REF\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"pbuf_take: end of chain reached.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pbuf* @pbuf_take(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  %7 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %8 = icmp ne %struct.pbuf* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @PBUF_DEBUG, align 4
  %12 = load i32, i32* @DBG_TRACE, align 4
  %13 = or i32 %11, %12
  %14 = or i32 %13, 3
  %15 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %16 = bitcast %struct.pbuf* %15 to i8*
  %17 = call i32 @LWIP_DEBUGF(i32 %14, i8* %16)
  store %struct.pbuf* null, %struct.pbuf** %5, align 8
  %18 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  store %struct.pbuf* %18, %struct.pbuf** %6, align 8
  br label %19

19:                                               ; preds = %154, %1
  %20 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PBUF_FLAG_REF, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %143

25:                                               ; preds = %19
  %26 = load i32, i32* @PBUF_DEBUG, align 4
  %27 = load i32, i32* @DBG_TRACE, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %30 = bitcast %struct.pbuf* %29 to i8*
  %31 = call i32 @LWIP_DEBUGF(i32 %28, i8* %30)
  %32 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PBUF_POOL_BUFSIZE, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %25
  %38 = load i32, i32* @PBUF_RAW, align 4
  %39 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %40 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @PBUF_POOL, align 4
  %43 = call %struct.pbuf* @pbuf_alloc(i32 %38, i64 %41, i32 %42)
  store %struct.pbuf* %43, %struct.pbuf** %4, align 8
  %44 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %45 = icmp eq %struct.pbuf* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* @PBUF_DEBUG, align 4
  %48 = load i32, i32* @DBG_TRACE, align 4
  %49 = or i32 %47, %48
  %50 = or i32 %49, 2
  %51 = call i32 @LWIP_DEBUGF(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %46, %37
  br label %59

53:                                               ; preds = %25
  store %struct.pbuf* null, %struct.pbuf** %4, align 8
  %54 = load i32, i32* @PBUF_DEBUG, align 4
  %55 = load i32, i32* @DBG_TRACE, align 4
  %56 = or i32 %54, %55
  %57 = or i32 %56, 2
  %58 = call i32 @LWIP_DEBUGF(i32 %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %52
  %60 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %61 = icmp eq %struct.pbuf* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i32, i32* @PBUF_RAW, align 4
  %64 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %65 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @PBUF_RAM, align 4
  %68 = call %struct.pbuf* @pbuf_alloc(i32 %63, i64 %66, i32 %67)
  store %struct.pbuf* %68, %struct.pbuf** %4, align 8
  %69 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %70 = icmp eq %struct.pbuf* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load i32, i32* @PBUF_DEBUG, align 4
  %73 = load i32, i32* @DBG_TRACE, align 4
  %74 = or i32 %72, %73
  %75 = or i32 %74, 2
  %76 = call i32 @LWIP_DEBUGF(i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %71, %62
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %80 = icmp ne %struct.pbuf* %79, null
  br i1 %80, label %81, label %134

81:                                               ; preds = %78
  %82 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %83 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %82, i32 0, i32 2
  %84 = load %struct.pbuf*, %struct.pbuf** %83, align 8
  %85 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %86 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %85, i32 0, i32 2
  store %struct.pbuf* %84, %struct.pbuf** %86, align 8
  %87 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %88 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %87, i32 0, i32 2
  store %struct.pbuf* null, %struct.pbuf** %88, align 8
  %89 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %90 = icmp ne %struct.pbuf* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %81
  %92 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %93 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %92, i32 0, i32 2
  %94 = load %struct.pbuf*, %struct.pbuf** %93, align 8
  %95 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %96 = icmp eq %struct.pbuf* %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %100 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %101 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %100, i32 0, i32 2
  store %struct.pbuf* %99, %struct.pbuf** %101, align 8
  br label %104

102:                                              ; preds = %81
  %103 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  store %struct.pbuf* %103, %struct.pbuf** %6, align 8
  br label %104

104:                                              ; preds = %102, %91
  %105 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %106 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %109 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %112 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @memcpy(i32 %107, i32 %110, i64 %113)
  %115 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %116 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %119 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  %120 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %121 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %124 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %126 = call i32 @pbuf_free(%struct.pbuf* %125)
  %127 = load i32, i32* @PBUF_DEBUG, align 4
  %128 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %129 = bitcast %struct.pbuf* %128 to i8*
  %130 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %131 = bitcast %struct.pbuf* %130 to i8*
  %132 = call i32 @LWIP_DEBUGF(i32 %127, i8* %131)
  %133 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  store %struct.pbuf* %133, %struct.pbuf** %3, align 8
  br label %142

134:                                              ; preds = %78
  %135 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %136 = call i32 @pbuf_free(%struct.pbuf* %135)
  %137 = load i32, i32* @PBUF_DEBUG, align 4
  %138 = or i32 %137, 2
  %139 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %140 = bitcast %struct.pbuf* %139 to i8*
  %141 = call i32 @LWIP_DEBUGF(i32 %138, i8* %140)
  store %struct.pbuf* null, %struct.pbuf** %2, align 8
  br label %164

142:                                              ; preds = %104
  br label %149

143:                                              ; preds = %19
  %144 = load i32, i32* @PBUF_DEBUG, align 4
  %145 = load i32, i32* @DBG_TRACE, align 4
  %146 = or i32 %144, %145
  %147 = or i32 %146, 1
  %148 = call i32 @LWIP_DEBUGF(i32 %147, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  br label %149

149:                                              ; preds = %143, %142
  %150 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  store %struct.pbuf* %150, %struct.pbuf** %5, align 8
  %151 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %152 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %151, i32 0, i32 2
  %153 = load %struct.pbuf*, %struct.pbuf** %152, align 8
  store %struct.pbuf* %153, %struct.pbuf** %3, align 8
  br label %154

154:                                              ; preds = %149
  %155 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %156 = icmp ne %struct.pbuf* %155, null
  br i1 %156, label %19, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* @PBUF_DEBUG, align 4
  %159 = load i32, i32* @DBG_TRACE, align 4
  %160 = or i32 %158, %159
  %161 = or i32 %160, 1
  %162 = call i32 @LWIP_DEBUGF(i32 %161, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %163 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  store %struct.pbuf* %163, %struct.pbuf** %2, align 8
  br label %164

164:                                              ; preds = %157, %134
  %165 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  ret %struct.pbuf* %165
}

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
