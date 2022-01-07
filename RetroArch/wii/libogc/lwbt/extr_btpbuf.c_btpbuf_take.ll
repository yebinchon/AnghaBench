; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btpbuf.c_btpbuf_take.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btpbuf.c_btpbuf_take.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i64, %struct.pbuf*, i32, i32 }

@PBUF_FLAG_REF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"pbuf_take: encountered PBUF_REF %p\0A\00", align 1
@PBUF_POOL_BUFSIZE = common dso_local global i64 0, align 8
@PBUF_RAW = common dso_local global i32 0, align 4
@PBUF_POOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"pbuf_take: Could not allocate PBUF_POOL\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"pbuf_take: PBUF_POOL too small to replace PBUF_REF\0A\00", align 1
@PBUF_RAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"pbuf_take: Could not allocate PBUF_RAM\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"pbuf_take: replaced PBUF_REF %p with %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"pbuf_take: failed to allocate replacement pbuf for %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"pbuf_take: skipping pbuf not of type PBUF_REF\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"pbuf_take: end of chain reached.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pbuf* @btpbuf_take(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  store %struct.pbuf* null, %struct.pbuf** %5, align 8
  %7 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  store %struct.pbuf* %7, %struct.pbuf** %6, align 8
  br label %8

8:                                                ; preds = %114, %1
  %9 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PBUF_FLAG_REF, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %107

14:                                               ; preds = %8
  %15 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %16 = bitcast %struct.pbuf* %15 to i8*
  %17 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PBUF_POOL_BUFSIZE, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  %24 = load i32, i32* @PBUF_RAW, align 4
  %25 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %26 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @PBUF_POOL, align 4
  %29 = call %struct.pbuf* @btpbuf_alloc(i32 %24, i64 %27, i32 %28)
  store %struct.pbuf* %29, %struct.pbuf** %4, align 8
  %30 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %31 = icmp eq %struct.pbuf* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %23
  br label %37

35:                                               ; preds = %14
  store %struct.pbuf* null, %struct.pbuf** %4, align 8
  %36 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %34
  %38 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %39 = icmp eq %struct.pbuf* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32, i32* @PBUF_RAW, align 4
  %42 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %43 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @PBUF_RAM, align 4
  %46 = call %struct.pbuf* @btpbuf_alloc(i32 %41, i64 %44, i32 %45)
  store %struct.pbuf* %46, %struct.pbuf** %4, align 8
  %47 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %48 = icmp eq %struct.pbuf* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %40
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %54 = icmp ne %struct.pbuf* %53, null
  br i1 %54, label %55, label %100

55:                                               ; preds = %52
  %56 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %57 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i32 0, i32 2
  %58 = load %struct.pbuf*, %struct.pbuf** %57, align 8
  %59 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %60 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %59, i32 0, i32 2
  store %struct.pbuf* %58, %struct.pbuf** %60, align 8
  %61 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %62 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %61, i32 0, i32 2
  store %struct.pbuf* null, %struct.pbuf** %62, align 8
  %63 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %64 = icmp ne %struct.pbuf* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %67 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %68 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %67, i32 0, i32 2
  store %struct.pbuf* %66, %struct.pbuf** %68, align 8
  br label %71

69:                                               ; preds = %55
  %70 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  store %struct.pbuf* %70, %struct.pbuf** %6, align 8
  br label %71

71:                                               ; preds = %69, %65
  %72 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %73 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %76 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %79 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @memcpy(i32 %74, i32 %77, i64 %80)
  %82 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %83 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %86 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %88 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %91 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %93 = call i32 @btpbuf_free(%struct.pbuf* %92)
  %94 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %95 = bitcast %struct.pbuf* %94 to i8*
  %96 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %97 = bitcast %struct.pbuf* %96 to i8*
  %98 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %95, i8* %97)
  %99 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  store %struct.pbuf* %99, %struct.pbuf** %3, align 8
  br label %106

100:                                              ; preds = %52
  %101 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %102 = call i32 @btpbuf_free(%struct.pbuf* %101)
  %103 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %104 = bitcast %struct.pbuf* %103 to i8*
  %105 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  store %struct.pbuf* null, %struct.pbuf** %2, align 8
  br label %120

106:                                              ; preds = %71
  br label %109

107:                                              ; preds = %8
  %108 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %106
  %110 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  store %struct.pbuf* %110, %struct.pbuf** %5, align 8
  %111 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %112 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %111, i32 0, i32 2
  %113 = load %struct.pbuf*, %struct.pbuf** %112, align 8
  store %struct.pbuf* %113, %struct.pbuf** %3, align 8
  br label %114

114:                                              ; preds = %109
  %115 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %116 = icmp ne %struct.pbuf* %115, null
  br i1 %116, label %8, label %117

117:                                              ; preds = %114
  %118 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %119 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  store %struct.pbuf* %119, %struct.pbuf** %2, align 8
  br label %120

120:                                              ; preds = %117, %100
  %121 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  ret %struct.pbuf* %121
}

declare dso_local i32 @LOG(i8*, ...) #1

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
