; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_swap_bins.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_swap_bins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { i32, i32, %struct.TYPE_4__**, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sfb_fcl = type { i32 }
%struct.sfbbinstats = type { i64, i64, i64 }

@SFBF_SUSPENDED = common dso_local global i32 0, align 4
@classq_verbose = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: SFB qid=%d, set %d is now current, qlen=%d\0A\00", align 1
@SFB_BINS = common dso_local global i32 0, align 4
@SFB_LEVELS = common dso_local global i32 0, align 4
@SFB_MAX_PMARK = common dso_local global i64 0, align 8
@SFB_PMARK_WARM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfb*, i32)* @sfb_swap_bins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfb_swap_bins(%struct.sfb* %0, i32 %1) #0 {
  %3 = alloca %struct.sfb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sfb_fcl*, align 8
  %9 = alloca %struct.sfbbinstats*, align 8
  %10 = alloca %struct.sfbbinstats*, align 8
  store %struct.sfb* %0, %struct.sfb** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.sfb*, %struct.sfb** %3, align 8
  %12 = getelementptr inbounds %struct.sfb, %struct.sfb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SFBF_SUSPENDED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %147

18:                                               ; preds = %2
  %19 = load %struct.sfb*, %struct.sfb** %3, align 8
  %20 = getelementptr inbounds %struct.sfb, %struct.sfb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = xor i32 %23, 1
  %25 = add nsw i32 %22, %24
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 @VERIFY(i32 %27)
  %29 = load %struct.sfb*, %struct.sfb** %3, align 8
  %30 = call i32 @sfb_random(%struct.sfb* %29)
  %31 = load %struct.sfb*, %struct.sfb** %3, align 8
  %32 = getelementptr inbounds %struct.sfb, %struct.sfb* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %30, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.sfb*, %struct.sfb** %3, align 8
  %41 = getelementptr inbounds %struct.sfb, %struct.sfb* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sfb*, %struct.sfb** %3, align 8
  %43 = getelementptr inbounds %struct.sfb, %struct.sfb* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.sfb*, %struct.sfb** %3, align 8
  %48 = getelementptr inbounds %struct.sfb, %struct.sfb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, 1
  store i32 %50, i32* %48, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i64, i64* @classq_verbose, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %18
  %54 = load i32, i32* @LOG_DEBUG, align 4
  %55 = load %struct.sfb*, %struct.sfb** %3, align 8
  %56 = getelementptr inbounds %struct.sfb, %struct.sfb* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @if_name(i32 %57)
  %59 = load %struct.sfb*, %struct.sfb** %3, align 8
  %60 = getelementptr inbounds %struct.sfb, %struct.sfb* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @log(i32 %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %53, %18
  %66 = load %struct.sfb*, %struct.sfb** %3, align 8
  %67 = getelementptr inbounds %struct.sfb, %struct.sfb* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @bzero(i32* %73, i32 4)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %144, %65
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @SFB_BINS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %147

79:                                               ; preds = %75
  %80 = load %struct.sfb*, %struct.sfb** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call %struct.sfb_fcl* @SFB_FC_LIST(%struct.sfb* %80, i32 %81)
  store %struct.sfb_fcl* %82, %struct.sfb_fcl** %8, align 8
  %83 = load %struct.sfb_fcl*, %struct.sfb_fcl** %8, align 8
  %84 = getelementptr inbounds %struct.sfb_fcl, %struct.sfb_fcl* %83, i32 0, i32 0
  %85 = call i32 @STAILQ_EMPTY(i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %79
  %88 = load %struct.sfb*, %struct.sfb** %3, align 8
  %89 = load %struct.sfb_fcl*, %struct.sfb_fcl** %8, align 8
  %90 = call i32 @sfb_fclist_append(%struct.sfb* %88, %struct.sfb_fcl* %89)
  br label %91

91:                                               ; preds = %87, %79
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %140, %91
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @SFB_LEVELS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %143

96:                                               ; preds = %92
  %97 = load %struct.sfb*, %struct.sfb** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call %struct.sfbbinstats* @SFB_BINST(%struct.sfb* %97, i32 %98, i32 %99, i32 %100)
  store %struct.sfbbinstats* %101, %struct.sfbbinstats** %9, align 8
  %102 = load %struct.sfb*, %struct.sfb** %3, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %7, align 4
  %106 = xor i32 %105, 1
  %107 = call %struct.sfbbinstats* @SFB_BINST(%struct.sfb* %102, i32 %103, i32 %104, i32 %106)
  store %struct.sfbbinstats* %107, %struct.sfbbinstats** %10, align 8
  %108 = load %struct.sfbbinstats*, %struct.sfbbinstats** %9, align 8
  %109 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load %struct.sfbbinstats*, %struct.sfbbinstats** %9, align 8
  %111 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.sfbbinstats*, %struct.sfbbinstats** %9, align 8
  %113 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SFB_MAX_PMARK, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %96
  %118 = load i64, i64* @SFB_MAX_PMARK, align 8
  %119 = load %struct.sfbbinstats*, %struct.sfbbinstats** %9, align 8
  %120 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %96
  %122 = load %struct.sfbbinstats*, %struct.sfbbinstats** %9, align 8
  %123 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.sfbbinstats*, %struct.sfbbinstats** %9, align 8
  %128 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %126, %121
  %130 = load %struct.sfbbinstats*, %struct.sfbbinstats** %10, align 8
  %131 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SFB_PMARK_WARM, align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i64, i64* @SFB_PMARK_WARM, align 8
  %137 = load %struct.sfbbinstats*, %struct.sfbbinstats** %10, align 8
  %138 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %129
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %92

143:                                              ; preds = %92
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %75

147:                                              ; preds = %17, %75
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @sfb_random(%struct.sfb*) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @if_name(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local %struct.sfb_fcl* @SFB_FC_LIST(%struct.sfb*, i32) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @sfb_fclist_append(%struct.sfb*, %struct.sfb_fcl*) #1

declare dso_local %struct.sfbbinstats* @SFB_BINST(%struct.sfb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
