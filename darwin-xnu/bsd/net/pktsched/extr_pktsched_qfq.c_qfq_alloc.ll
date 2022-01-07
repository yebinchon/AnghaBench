; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i32, i32*, i32*, i32, i32* }
%struct.ifnet = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@qfq_zone = common dso_local global i32 0, align 4
@qfq_size = common dso_local global i32 0, align 4
@IFCQ_SC_MAX = common dso_local global i32 0, align 4
@QFQ_MAX_SLOTS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: %s unable to allocate class table array\0A\00", align 1
@QFQ_MAX_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: %s unable to allocate group array\0A\00", align 1
@pktsched_verbose = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: %s scheduler allocated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qfq_if* @qfq_alloc(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.qfq_if*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qfq_if*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @qfq_zone, align 4
  %12 = call %struct.qfq_if* @zalloc(i32 %11)
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @qfq_zone, align 4
  %15 = call %struct.qfq_if* @zalloc_noblock(i32 %14)
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi %struct.qfq_if* [ %12, %10 ], [ %15, %13 ]
  store %struct.qfq_if* %17, %struct.qfq_if** %6, align 8
  %18 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %19 = icmp eq %struct.qfq_if* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store %struct.qfq_if* null, %struct.qfq_if** %3, align 8
  br label %121

21:                                               ; preds = %16
  %22 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %23 = load i32, i32* @qfq_size, align 4
  %24 = call i32 @bzero(%struct.qfq_if* %22, i32 %23)
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %28 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %27, i32 0, i32 4
  store i32* %26, i32** %28, align 8
  %29 = load i32, i32* @IFCQ_SC_MAX, align 4
  %30 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %31 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @QFQ_MAX_SLOTS, align 4
  %33 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %34 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %36 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @M_DEVBUF, align 4
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = load i32, i32* @M_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @_MALLOC(i32 %40, i32 %41, i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %48 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = icmp eq i32* %46, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %21
  %51 = load i32, i32* @LOG_ERR, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = call i32 @if_name(%struct.ifnet* %52)
  %54 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %55 = call i32 @qfq_style(%struct.qfq_if* %54)
  %56 = call i32 @log(i32 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55)
  br label %91

57:                                               ; preds = %21
  %58 = load i32, i32* @QFQ_MAX_INDEX, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul i64 8, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = load i32, i32* @M_WAITOK, align 4
  %65 = load i32, i32* @M_ZERO, align 4
  %66 = or i32 %64, %65
  %67 = call i8* @_MALLOC(i32 %62, i32 %63, i32 %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %70 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  %71 = icmp eq i32* %68, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %57
  %73 = load i32, i32* @LOG_ERR, align 4
  %74 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %75 = call i32 @if_name(%struct.ifnet* %74)
  %76 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %77 = call i32 @qfq_style(%struct.qfq_if* %76)
  %78 = call i32 @log(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %77)
  br label %91

79:                                               ; preds = %57
  %80 = load i64, i64* @pktsched_verbose, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* @LOG_DEBUG, align 4
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = call i32 @if_name(%struct.ifnet* %84)
  %86 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %87 = call i32 @qfq_style(%struct.qfq_if* %86)
  %88 = call i32 @log(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  store %struct.qfq_if* %90, %struct.qfq_if** %3, align 8
  br label %121

91:                                               ; preds = %72, %50
  %92 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %93 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %98 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @M_DEVBUF, align 4
  %101 = call i32 @_FREE(i32* %99, i32 %100)
  %102 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %103 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %102, i32 0, i32 2
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %96, %91
  %105 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %106 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %111 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @M_DEVBUF, align 4
  %114 = call i32 @_FREE(i32* %112, i32 %113)
  %115 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %116 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %115, i32 0, i32 1
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %109, %104
  %118 = load i32, i32* @qfq_zone, align 4
  %119 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  %120 = call i32 @zfree(i32 %118, %struct.qfq_if* %119)
  store %struct.qfq_if* null, %struct.qfq_if** %3, align 8
  br label %121

121:                                              ; preds = %117, %89, %20
  %122 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  ret %struct.qfq_if* %122
}

declare dso_local %struct.qfq_if* @zalloc(i32) #1

declare dso_local %struct.qfq_if* @zalloc_noblock(i32) #1

declare dso_local i32 @bzero(%struct.qfq_if*, i32) #1

declare dso_local i8* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @qfq_style(%struct.qfq_if*) #1

declare dso_local i32 @_FREE(i32*, i32) #1

declare dso_local i32 @zfree(i32, %struct.qfq_if*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
