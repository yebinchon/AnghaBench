; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { i32, i64, i64, %struct.ifnet*, %struct.sfb*, %struct.sfb* }
%struct.ifnet = type { i32 }
%struct.TYPE_2__ = type { i32 }

@sfb_zone = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: SFB unable to allocate\0A\00", align 1
@sfb_size = common dso_local global i32 0, align 4
@sfb_bins_zone = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: SFB unable to allocate bins\0A\00", align 1
@sfb_bins_size = common dso_local global i32 0, align 4
@sfb_fcl_zone = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%s: SFB unable to allocate flow control lists\0A\00", align 1
@sfb_fcl_size = common dso_local global i32 0, align 4
@SFB_BINS = common dso_local global i32 0, align 4
@SFBF_USERFLAGS = common dso_local global i64 0, align 8
@SFBF_ECN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"%s: SFB qid=%d, ECN not available; ignoring SFBF_ECN flag!\0A\00", align 1
@CLASSQ_EV_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sfb* @sfb_alloc(%struct.ifnet* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sfb*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sfb*, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %13 = icmp ne %struct.ifnet* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = icmp sgt i64 %15, 0
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i1 [ false, %4 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load i32, i32* @sfb_zone, align 4
  %22 = call i8* @zalloc(i32 %21)
  %23 = bitcast i8* %22 to %struct.sfb*
  store %struct.sfb* %23, %struct.sfb** %10, align 8
  %24 = load %struct.sfb*, %struct.sfb** %10, align 8
  %25 = icmp eq %struct.sfb* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %29 = call i32 @if_name(%struct.ifnet* %28)
  %30 = call i32 (i32, i8*, i32, ...) @log(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  store %struct.sfb* null, %struct.sfb** %5, align 8
  br label %127

31:                                               ; preds = %17
  %32 = load %struct.sfb*, %struct.sfb** %10, align 8
  %33 = load i32, i32* @sfb_size, align 4
  %34 = call i32 @bzero(%struct.sfb* %32, i32 %33)
  %35 = load i32, i32* @sfb_bins_zone, align 4
  %36 = call i8* @zalloc(i32 %35)
  %37 = bitcast i8* %36 to %struct.sfb*
  %38 = load %struct.sfb*, %struct.sfb** %10, align 8
  %39 = getelementptr inbounds %struct.sfb, %struct.sfb* %38, i32 0, i32 5
  store %struct.sfb* %37, %struct.sfb** %39, align 8
  %40 = icmp eq %struct.sfb* %37, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load i32, i32* @LOG_ERR, align 4
  %43 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %44 = call i32 @if_name(%struct.ifnet* %43)
  %45 = call i32 (i32, i8*, i32, ...) @log(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.sfb*, %struct.sfb** %10, align 8
  %47 = call i32 @sfb_destroy(%struct.sfb* %46)
  store %struct.sfb* null, %struct.sfb** %5, align 8
  br label %127

48:                                               ; preds = %31
  %49 = load %struct.sfb*, %struct.sfb** %10, align 8
  %50 = getelementptr inbounds %struct.sfb, %struct.sfb* %49, i32 0, i32 5
  %51 = load %struct.sfb*, %struct.sfb** %50, align 8
  %52 = load i32, i32* @sfb_bins_size, align 4
  %53 = call i32 @bzero(%struct.sfb* %51, i32 %52)
  %54 = load i32, i32* @sfb_fcl_zone, align 4
  %55 = call i8* @zalloc(i32 %54)
  %56 = bitcast i8* %55 to %struct.sfb*
  %57 = load %struct.sfb*, %struct.sfb** %10, align 8
  %58 = getelementptr inbounds %struct.sfb, %struct.sfb* %57, i32 0, i32 4
  store %struct.sfb* %56, %struct.sfb** %58, align 8
  %59 = icmp eq %struct.sfb* %56, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load i32, i32* @LOG_ERR, align 4
  %62 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %63 = call i32 @if_name(%struct.ifnet* %62)
  %64 = call i32 (i32, i8*, i32, ...) @log(i32 %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.sfb*, %struct.sfb** %10, align 8
  %66 = call i32 @sfb_destroy(%struct.sfb* %65)
  store %struct.sfb* null, %struct.sfb** %5, align 8
  br label %127

67:                                               ; preds = %48
  %68 = load %struct.sfb*, %struct.sfb** %10, align 8
  %69 = getelementptr inbounds %struct.sfb, %struct.sfb* %68, i32 0, i32 4
  %70 = load %struct.sfb*, %struct.sfb** %69, align 8
  %71 = load i32, i32* @sfb_fcl_size, align 4
  %72 = call i32 @bzero(%struct.sfb* %70, i32 %71)
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %83, %67
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @SFB_BINS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load %struct.sfb*, %struct.sfb** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call %struct.TYPE_2__* @SFB_FC_LIST(%struct.sfb* %78, i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @STAILQ_INIT(i32* %81)
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %73

86:                                               ; preds = %73
  %87 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %88 = load %struct.sfb*, %struct.sfb** %10, align 8
  %89 = getelementptr inbounds %struct.sfb, %struct.sfb* %88, i32 0, i32 3
  store %struct.ifnet* %87, %struct.ifnet** %89, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.sfb*, %struct.sfb** %10, align 8
  %92 = getelementptr inbounds %struct.sfb, %struct.sfb* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.sfb*, %struct.sfb** %10, align 8
  %95 = getelementptr inbounds %struct.sfb, %struct.sfb* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @SFBF_USERFLAGS, align 8
  %98 = and i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = load %struct.sfb*, %struct.sfb** %10, align 8
  %101 = getelementptr inbounds %struct.sfb, %struct.sfb* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.sfb*, %struct.sfb** %10, align 8
  %103 = getelementptr inbounds %struct.sfb, %struct.sfb* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SFBF_ECN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %86
  %109 = load i32, i32* @SFBF_ECN, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.sfb*, %struct.sfb** %10, align 8
  %112 = getelementptr inbounds %struct.sfb, %struct.sfb* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* @LOG_ERR, align 4
  %116 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %117 = call i32 @if_name(%struct.ifnet* %116)
  %118 = load %struct.sfb*, %struct.sfb** %10, align 8
  %119 = getelementptr inbounds %struct.sfb, %struct.sfb* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i32, i8*, i32, ...) @log(i32 %115, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %117, i64 %120)
  br label %122

122:                                              ; preds = %108, %86
  %123 = load %struct.sfb*, %struct.sfb** %10, align 8
  %124 = load i32, i32* @CLASSQ_EV_INIT, align 4
  %125 = call i32 @sfb_resetq(%struct.sfb* %123, i32 %124)
  %126 = load %struct.sfb*, %struct.sfb** %10, align 8
  store %struct.sfb* %126, %struct.sfb** %5, align 8
  br label %127

127:                                              ; preds = %122, %60, %41, %26
  %128 = load %struct.sfb*, %struct.sfb** %5, align 8
  ret %struct.sfb* %128
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i32 @log(i32, i8*, i32, ...) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @bzero(%struct.sfb*, i32) #1

declare dso_local i32 @sfb_destroy(%struct.sfb*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local %struct.TYPE_2__* @SFB_FC_LIST(%struct.sfb*, i32) #1

declare dso_local i32 @sfb_resetq(%struct.sfb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
